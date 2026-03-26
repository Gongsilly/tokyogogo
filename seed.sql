-- ── 기존 데이터 초기화 ─────────────────────────────────────────
DELETE FROM checklist_items;
DELETE FROM checklist_cats;
DELETE FROM places;

-- ── Day 0 (4/10 목 · 입국의 날) ───────────────────────────────
INSERT INTO places VALUES ('d0p0', 0, 0,  '14:45', '인천국제공항 출발',       'LJ209 탑승 · NRT 17:15 도착',               '교통', 'Incheon International Airport',          37.4602, 126.4407);
INSERT INTO places VALUES ('d0p1', 0, 1,  '17:15', '나리타국제공항 도착',     '입국수속 · 수하물 수취',                     '교통', 'Narita International Airport',            35.7642, 140.3851);
INSERT INTO places VALUES ('d0p2', 0, 2,  '18:30', '공항리무진 버스',          '나리타 → 아카사카 · 약 2시간 30분',          '교통', 'Narita Airport Limousine Bus Tokyo',      NULL,    NULL);
INSERT INTO places VALUES ('d0p3', 0, 3,  '21:00', '아카사카 어반 호텔 신관', '체크인 · 3박 숙소',                          '숙소', 'Akasaka Urban Hotel Annex Tokyo',         35.6745, 139.7371);
INSERT INTO places VALUES ('d0p4', 0, 4,  '21:30', 'SEIJO ISHII (세이죠이시이)', '숙소 근처 고급 슈퍼 · 야식 & 간식',      '쇼핑', 'Seijo Ishii Akasaka Tokyo',               35.6732, 139.7363);

-- ── Day 1 (4/11 금 · 긴자 & 롯폰기) ───────────────────────────
INSERT INTO places VALUES ('d1p_s', 1, 0,  '08:30', '아카사카 어반 호텔 출발', 'Day2 시작 · 편의점 조식 후 출발',             '숙소', 'Akasaka Urban Hotel Annex Tokyo',         35.6745, 139.7371);
INSERT INTO places VALUES ('d1p0',  1, 1,  '09:00', '편의점 조식',             '호텔 근처 편의점',                            '맛집', 'Convenience store Akasaka Tokyo',          35.6745, 139.7371);
INSERT INTO places VALUES ('d1p1',  1, 2,  '10:00', '하카타유라쿠초 (만쥬)',   '유라쿠초 명물 만쥬',                          '맛집', '博多風美庵 有楽町 Tokyo',                  35.6737, 139.7630);
INSERT INTO places VALUES ('d1p2',  1, 3,  '10:30', '긴자 로프트',             '생활잡화 & 문구 쇼핑',                        '쇼핑', 'Ginza Loft Tokyo',                         35.6741, 139.7662);
INSERT INTO places VALUES ('d1p3',  1, 4,  '11:00', '핸즈 (Hands)',            '다양한 생활용품 & 잡화',                      '쇼핑', 'Hands Ginza Tokyo',                        35.6742, 139.7653);
INSERT INTO places VALUES ('d1p4',  1, 5,  '11:30', '무인양품 (MUJI)',         '긴자 플래그십 스토어',                        '쇼핑', 'MUJI Ginza Tokyo',                         35.6734, 139.7655);
INSERT INTO places VALUES ('d1p5',  1, 6,  '12:00', '스탠다드프로덕트',        '다이소 프리미엄 라인',                        '쇼핑', 'Standard Products Ginza Tokyo',            35.6737, 139.7653);
INSERT INTO places VALUES ('d1p6',  1, 7,  '12:30', '이토야',                  '긴자 유명 고급 문구점',                       '쇼핑', 'Itoya Ginza Tokyo',                        35.6730, 139.7674);
INSERT INTO places VALUES ('d1p7',  1, 8,  '13:00', '빌스 (bills)',            '세계 최고의 아침식사 레스토랑',                '맛집', 'bills Ginza Tokyo',                        35.6733, 139.7666);
INSERT INTO places VALUES ('d1p8',  1, 9,  '14:00', '도버 스트리트 마켓',      '컨셉 멀티샵 / 명품 & 아트',                   '쇼핑', 'Dover Street Market Ginza Tokyo',          35.6705, 139.7631);
INSERT INTO places VALUES ('d1p9',  1, 10, '14:30', '마리아쥬 프레르',         '프랑스 유명 티 살롱',                         '카페', 'Mariage Freres Ginza Tokyo',               35.6710, 139.7640);
INSERT INTO places VALUES ('d1p10', 1, 11, '15:00', 'Seisuke Knife',           '일본 전통 식도 & 칼 전문점',                  '쇼핑', 'Seisuke Knife Ginza Tokyo',                35.6722, 139.7647);
INSERT INTO places VALUES ('d1p11', 1, 12, '15:30', '스시마도리',              '예약 가능 스시 맛집',                         '맛집', 'Sushi Madori Ginza Tokyo',                 35.6718, 139.7648);
INSERT INTO places VALUES ('d1p12', 1, 13, '16:30', '시아와세노 팬케이크',     '행복의 팬케이크 / 휴식 & 디저트',             '카페', '幸せのパンケーキ Ginza Tokyo',             35.6718, 139.7660);
INSERT INTO places VALUES ('d1p13', 1, 14, '18:00', '롯폰기힐즈',              '야경 감상 & 쇼핑',                            '관광', 'Roppongi Hills Tokyo',                     35.6602, 139.7298);
INSERT INTO places VALUES ('d1p14', 1, 15, '18:30', '롯폰기 꽃차 카페',        '꽃차 전문 카페 롯폰기점',                     '카페', 'flower tea cafe Roppongi Tokyo',           35.6628, 139.7310);
INSERT INTO places VALUES ('d1p15', 1, 16, '19:30', '동키호테 롯폰기점',       '심야 쇼핑 & 기념품',                          '쇼핑', 'Don Quijote Roppongi Tokyo',               35.6623, 139.7346);

-- ── Day 2 (4/12 토 · 신주쿠 & 시부야 & 하라주쿠) ──────────────
INSERT INTO places VALUES ('d2p_s', 2, 0,  '08:30', '아카사카 어반 호텔 출발', 'Day3 시작 · 롯폰기 공원 방향 출발',           '숙소', 'Akasaka Urban Hotel Annex Tokyo',         35.6745, 139.7371);
INSERT INTO places VALUES ('d2p0',  2, 1,  '09:00', '롯폰기 공원 산책',        '아침 스근하게 공원 산책',                     '관광', 'Roppongi Park Tokyo',                      35.6603, 139.7307);
INSERT INTO places VALUES ('d2p1',  2, 2,  '10:00', '디즈니 플래그십스토어',   '신주쿠 / 디즈니 공식 대형 스토어',            '쇼핑', 'Disney flagship store Shinjuku Tokyo',     35.6889, 139.7017);
INSERT INTO places VALUES ('d2p2',  2, 3,  '10:30', '니큐토 타마고',           '신주쿠 유명 달걀 간식',                       '맛집', '二丁目のたまご Shinjuku Tokyo',             35.6889, 139.7017);
INSERT INTO places VALUES ('d2p3',  2, 4,  '12:00', 'SHIRO (점심)',            '신주쿠 Newoman 내 레스토랑',                   '맛집', 'SHIRO Shinjuku Newoman Tokyo',             35.6889, 139.7017);
INSERT INTO places VALUES ('d2p4',  2, 5,  '13:00', 'Slow Newoman (가족선물)', '가족 선물 쇼핑 / 신주쿠 루미네',              '쇼핑', 'Newoman Shinjuku Tokyo',                   35.6889, 139.7017);
INSERT INTO places VALUES ('d2p5',  2, 6,  '14:00', '카페 알리아',             '신주쿠 감성 카페',                            '카페', 'Cafe Alia Shinjuku Tokyo',                 35.6889, 139.7017);
INSERT INTO places VALUES ('d2p6',  2, 7,  '15:00', '신주쿠 교엔',             '국립 정원 / 봄 벚꽃 산책',                    '관광', 'Shinjuku Gyoen National Garden',           35.6851, 139.7042);
INSERT INTO places VALUES ('d2p7',  2, 8,  '16:00', '파르코 (PARCO)',          '시부야 / 트렌디한 쇼핑몰',                    '쇼핑', 'PARCO Shibuya Tokyo',                      35.6619, 139.6987);
INSERT INTO places VALUES ('d2p8',  2, 9,  '16:30', '포켓몬센터 시부야',       '포켓몬 공식 스토어',                          '쇼핑', 'Pokemon Center Mega Tokyo Shibuya',        35.6619, 139.6987);
INSERT INTO places VALUES ('d2p9',  2, 10, '17:00', '시부야 스크램블 교차로',  '세계에서 가장 바쁜 교차로',                   '관광', 'Shibuya Scramble Crossing Tokyo',          35.6595, 139.7005);
INSERT INTO places VALUES ('d2p10', 2, 11, '17:30', '시부야스카이 (일몰)',     '시부야 옥상 전망대 · 일몰 감상',              '관광', 'Shibuya Sky observation deck Tokyo',       35.6584, 139.7022);
INSERT INTO places VALUES ('d2p11', 2, 12, '18:30', '하라주쿠 타케시타 거리',  '하라주쿠 탐방',                               '관광', 'Harajuku Takeshita Street Tokyo',          35.6717, 139.7029);
INSERT INTO places VALUES ('d2p12', 2, 13, '19:00', '니코앤도쿄',              '잡화몰 쇼핑',                                 '쇼핑', 'niko and TOKYO Harajuku',                  35.6702, 139.7034);
INSERT INTO places VALUES ('d2p13', 2, 14, '19:30', '레드락 (Red Rock)',       '하라주쿠 유명 로스트비프 덮밥',               '맛집', 'Red Rock Harajuku Tokyo',                  35.6714, 139.7063);
INSERT INTO places VALUES ('d2p14', 2, 15, '20:30', '코스메 도쿄',             '화장품 & 뷰티 쇼핑',                          '쇼핑', 'Cosme Tokyo Harajuku',                     35.6714, 139.7060);

-- ── Day 3 (4/13 일 · 귀국의 날) ───────────────────────────────
INSERT INTO places VALUES ('d3p_s', 3, 0, '08:00', '아카사카 어반 호텔 체크아웃', '3박 체크아웃 · 짐 맡기고 마지막 하루 시작', '숙소', 'Akasaka Urban Hotel Annex Tokyo',        35.6745, 139.7371);
INSERT INTO places VALUES ('d3p0',  3, 1, '09:00', '히에 신사',               '아카사카 / 신사 참배',                        '관광', 'Hie Shrine Akasaka Tokyo',                 35.6747, 139.7399);
INSERT INTO places VALUES ('d3p1',  3, 2, '10:00', '스기약국',                '보충 쇼핑 / 마지막 기념품',                   '쇼핑', 'Sugiya Akasaka Tokyo',                     35.6732, 139.7363);
INSERT INTO places VALUES ('d3p2',  3, 3, '12:00', '점심 — 모슈 라멘',        '도쿄 마지막 점심식사 🥺',                     '맛집', 'もつ次郎 Akasaka Tokyo',                   35.6745, 139.7371);
INSERT INTO places VALUES ('d3p3',  3, 4, '16:00', '공항리무진 버스 출발',    '호텔 → 나리타공항 이동 (약 2시간)',            '교통', 'Narita Airport Limousine Bus Tokyo',      NULL,    NULL);
INSERT INTO places VALUES ('d3p4',  3, 5, '18:00', '나리타공항 도착',         '수속 완료 · 면세점 & 눈물의 마지막 저녁 🥺', '맛집', 'Narita International Airport Terminal 1', 35.7642, 140.3851);
INSERT INTO places VALUES ('d3p5',  3, 6, '19:15', '나리타공항 출발 (LJ212)', '귀국 · ICN 21:45 도착',                      '교통', 'Narita International Airport',            35.7642, 140.3851);

-- ── 체크리스트 카테고리 ─────────────────────────────────────────
INSERT INTO checklist_cats (id, name, sort_order) VALUES (1, '📄 서류', 1);
INSERT INTO checklist_cats (id, name, sort_order) VALUES (2, '💳 금융', 2);
INSERT INTO checklist_cats (id, name, sort_order) VALUES (3, '🔌 전자기기', 3);
INSERT INTO checklist_cats (id, name, sort_order) VALUES (4, '📱 앱 준비', 4);
INSERT INTO checklist_cats (id, name, sort_order) VALUES (5, '👕 의류·용품', 5);

-- ── 체크리스트 항목 ─────────────────────────────────────────────
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (1, '여권 확인 (유효기간 6개월 이상)', 1);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (1, '항공권 출력/모바일 저장 (LJ209·LJ212)', 2);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (1, '호텔 예약 확인서', 3);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (1, '여행자 보험 가입 확인', 4);

INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (2, '엔화 환전 (공항 or 은행)', 1);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (2, '해외결제 카드 확인', 2);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (2, 'IC카드 (Suica/Pasmo) 준비', 3);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (2, '비상금 별도 준비', 4);

INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (3, '스마트폰 충전기', 1);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (3, '멀티어댑터 (일본 A타입)', 2);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (3, '보조배터리 (기내 반입용)', 3);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (3, '이어폰', 4);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (3, '카메라 & 메모리카드', 5);

INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (4, 'Google Maps 오프라인 도쿄 지도 다운', 1);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (4, '파파고 / DeepL 번역앱', 2);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (4, '롯폰기힐즈 / 시부야스카이 예약 확인', 3);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (4, '스시마도리 예약 확인', 4);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (4, 'JRPASS / 교통카드 확인', 5);

INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (5, '4월 도쿄 (15~22℃) 기준 옷', 1);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (5, '편한 신발 필수 (하루 1만보+)', 2);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (5, '가벼운 겉옷 (일교차 대비)', 3);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (5, '우산/우비 (4월 봄비 대비)', 4);
INSERT INTO checklist_items (cat_id, text, sort_order) VALUES (5, '보조 에코백 (쇼핑용)', 5);
