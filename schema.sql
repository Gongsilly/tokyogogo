-- ── 장소 테이블 ──────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS places (
  id          TEXT    PRIMARY KEY,
  day_idx     INTEGER NOT NULL,
  sort_order  INTEGER NOT NULL,
  time        TEXT,
  name        TEXT    NOT NULL,
  detail      TEXT,
  cat         TEXT,
  map         TEXT,
  pos_lat     REAL,
  pos_lng     REAL
);

-- ── 체크리스트 카테고리 ───────────────────────────────────────
CREATE TABLE IF NOT EXISTS checklist_cats (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  name       TEXT    NOT NULL,
  sort_order INTEGER NOT NULL
);

-- ── 체크리스트 항목 ────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS checklist_items (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  cat_id     INTEGER NOT NULL REFERENCES checklist_cats(id) ON DELETE CASCADE,
  text       TEXT    NOT NULL,
  sort_order INTEGER NOT NULL
);

-- ── 장소 이미지 ────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS place_images (
  id         TEXT    PRIMARY KEY,
  place_id   TEXT    NOT NULL,
  filename   TEXT    NOT NULL,
  data       TEXT    NOT NULL,
  created_at INTEGER NOT NULL DEFAULT (unixepoch())
);
