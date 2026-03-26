const CORS = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
  'Access-Control-Allow-Headers': 'Content-Type',
};

function json(data, status = 200) {
  return new Response(JSON.stringify(data), {
    status,
    headers: { 'Content-Type': 'application/json', ...CORS },
  });
}

export default {
  async fetch(request, env) {
    const url = new URL(request.url);
    const { pathname } = url;

    // CORS preflight
    if (request.method === 'OPTIONS') {
      return new Response(null, { headers: CORS });
    }

    // ── API 라우팅 ──────────────────────────────────────────────
    if (pathname.startsWith('/api/')) {

      // GET /api/places — 전체 일정 조회 (day_idx별 그룹화)
      if (pathname === '/api/places' && request.method === 'GET') {
        const rows = await env.DB.prepare(
          'SELECT * FROM places ORDER BY day_idx, sort_order'
        ).all();
        const days = [[], [], [], []];
        for (const r of rows.results) {
          days[r.day_idx].push({
            id: r.id,
            time: r.time,
            name: r.name,
            detail: r.detail,
            cat: r.cat,
            map: r.map,
            pos: (r.pos_lat != null && r.pos_lng != null) ? [r.pos_lat, r.pos_lng] : null,
          });
        }
        return json(days);
      }

      // POST /api/places — 장소 추가
      if (pathname === '/api/places' && request.method === 'POST') {
        const b = await request.json();
        const id = 'p' + Math.random().toString(36).slice(2, 10);
        const maxOrder = await env.DB.prepare(
          'SELECT COALESCE(MAX(sort_order),0)+1 AS next FROM places WHERE day_idx=?'
        ).bind(b.day_idx).first();
        await env.DB.prepare(
          'INSERT INTO places (id,day_idx,sort_order,time,name,detail,cat,map,pos_lat,pos_lng) VALUES (?,?,?,?,?,?,?,?,?,?)'
        ).bind(id, b.day_idx, maxOrder.next, b.time||null, b.name, b.detail||null,
          b.cat||null, b.map||null,
          b.pos?.[0]??null, b.pos?.[1]??null).run();
        return json({ success: true, id });
      }

      // PUT /api/places/:id — 장소 수정
      const putMatch = pathname.match(/^\/api\/places\/(.+)$/);
      if (putMatch && request.method === 'PUT') {
        const id = putMatch[1];
        const b = await request.json();
        await env.DB.prepare(
          'UPDATE places SET time=?,name=?,detail=?,cat=?,map=?,pos_lat=?,pos_lng=? WHERE id=?'
        ).bind(b.time||null, b.name, b.detail||null, b.cat||null, b.map||null,
          b.pos?.[0]??null, b.pos?.[1]??null, id).run();
        return json({ success: true });
      }

      // DELETE /api/places/:id — 장소 삭제
      const delMatch = pathname.match(/^\/api\/places\/(.+)$/);
      if (delMatch && request.method === 'DELETE') {
        await env.DB.prepare('DELETE FROM places WHERE id=?').bind(delMatch[1]).run();
        return json({ success: true });
      }

      // GET /api/checklist — 체크리스트 조회
      if (pathname === '/api/checklist' && request.method === 'GET') {
        const cats = await env.DB.prepare(
          'SELECT * FROM checklist_cats ORDER BY sort_order'
        ).all();
        const items = await env.DB.prepare(
          'SELECT * FROM checklist_items ORDER BY cat_id, sort_order'
        ).all();
        const result = cats.results.map(c => ({
          id: c.id,
          cat: c.name,
          items: items.results.filter(i => i.cat_id === c.id).map(i => i.text),
        }));
        return json(result);
      }

      return json({ error: 'Not found' }, 404);
    }

    // ── 정적 파일 서빙 ──────────────────────────────────────────
    return env.ASSETS.fetch(request);
  },
};
