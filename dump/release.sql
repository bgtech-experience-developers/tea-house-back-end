--
-- PostgreSQL database dump
--

\restrict NRiWvJqhgvcU2fqZuOmy9ZQrI5ai6fXvbZ6Cd3ak0zB3aetXXq8Eanbk9l58cNm

-- Dumped from database version 16.11 (Debian 16.11-1.pgdg13+1)
-- Dumped by pg_dump version 16.11 (Debian 16.11-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('00e691cd-fdf6-453f-9c01-da7d616456c1', '7ea8d3568ae5183861f29af96f2fb17ddadb0e256b08c79a325e14671d523398', '2026-01-06 15:25:00.764754+00', '20260106152500_initial_tables', NULL, NULL, '2026-01-06 15:25:00.744335+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('f298016e-4cfa-42a5-9ee1-e2051a7cfabc', 'e0da1a3a9db16a31e4836056ffae00ae2543243a150c0c603a17d8269ca6ad1c', '2026-01-06 22:11:09.825031+00', '20260106221109_add_core_tables', NULL, NULL, '2026-01-06 22:11:09.796689+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('7317f1db-fdbf-4d3d-87a3-168698704d7a', 'bef63968ee15a9471d6ede9cead2f308f8e007b15701550896933d4c6bf82bd6', '2026-01-06 22:30:27.625668+00', '20260106223027_add_available_collumn', NULL, NULL, '2026-01-06 22:30:27.617623+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('314db257-cc48-47ad-8c7e-0781dc795e0e', '39f1e4504a297afbb27d166f76c9657816a9f87e65d9604469dde212610c9304', '2026-01-07 15:25:03.226451+00', '20260107152503_new_fk_product_payment', NULL, NULL, '2026-01-07 15:25:03.212859+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('cebaba1e-7aa0-48c3-a4ca-946c594a544d', 'b99a6dd3d46dbe128287bcb37aa35f619704cc9dd4aff44bee4879b30e2a8858', '2026-01-07 18:44:56.425584+00', '20260107184456_collumn_name', NULL, NULL, '2026-01-07 18:44:56.419133+00', 1);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('7e3070cc-4e1c-41b3-afaa-084a04843521', 'Eletrodomésticos', '2026-01-11 04:26:31.509', '2026-01-11 04:26:31.509');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('dee96a44-da50-4f70-9c9e-7c8756398204', 'Cozinha & Praticidade', '2026-01-11 04:26:31.509', '2026-01-11 04:26:31.509');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('820ff7db-c71a-4339-a1b6-92896c9e6b6b', 'Sala & Conforto', '2026-01-11 04:26:31.509', '2026-01-11 04:26:31.509');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('a42c3037-dcd4-4ee2-9d75-cdc941f239f1', 'Quarto & Descanso', '2026-01-11 04:26:31.509', '2026-01-11 04:26:31.509');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('642e2eeb-67ee-49a7-8e42-ac495d2a70fe', 'Banheiro & Organização', '2026-01-11 04:26:31.509', '2026-01-11 04:26:31.509');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('4451c2ce-597e-4032-8eba-5cf70dcc4257', 'Decoração & Clima', '2026-01-11 04:26:31.509', '2026-01-11 04:26:31.509');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('a06da598-e853-4e04-abbd-4aff63df1eee', 'Momentos & Comemorações', '2026-01-11 04:26:31.509', '2026-01-11 04:26:31.509');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('47875d39-0e24-4454-bb63-c98ac784163a', 'Conforto do dia a dia', '2026-01-11 04:26:31.509', '2026-01-11 04:26:31.509');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('2e4a78dd-bab5-446f-ad0b-945c9258637b', 'Organização & Utilidades', '2026-01-11 04:26:31.509', '2026-01-11 04:26:31.509');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('09924d41-585d-47eb-9cde-91c49d75cdf0', 'Eletrodomésticos', '2026-01-11 04:26:40.482', '2026-01-11 04:26:40.482');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('3ec3e7b3-886b-4d53-954a-c0e2233c1601', 'Cozinha & Praticidade', '2026-01-11 04:26:40.482', '2026-01-11 04:26:40.482');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('69ad74c1-ff5a-4e2d-956a-de289c029031', 'Sala & Conforto', '2026-01-11 04:26:40.482', '2026-01-11 04:26:40.482');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('0b9d61fa-43bd-421d-932c-b2d6a6a54552', 'Quarto & Descanso', '2026-01-11 04:26:40.482', '2026-01-11 04:26:40.482');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('6b3322f1-517c-46ba-bed8-bd271afa9a08', 'Banheiro & Organização', '2026-01-11 04:26:40.482', '2026-01-11 04:26:40.482');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('ec9895bb-d751-465d-80e5-d9836e94594b', 'Decoração & Clima', '2026-01-11 04:26:40.482', '2026-01-11 04:26:40.482');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('26201870-bd22-4301-86c6-ed8a3c3b3312', 'Momentos & Comemorações', '2026-01-11 04:26:40.482', '2026-01-11 04:26:40.482');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('34d85b9f-d732-47ab-8e7b-688716e6990c', 'Conforto do dia a dia', '2026-01-11 04:26:40.482', '2026-01-11 04:26:40.482');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('37975a55-1d34-4af6-9f13-cf92daf3e293', 'Organização & Utilidades', '2026-01-11 04:26:40.482', '2026-01-11 04:26:40.482');


--
-- Data for Name: costumer; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('1ee78463-5a19-4830-a311-ad4d22e4f284', 'Geladeira dos sonhos para sua casa nova', '🧊', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-11 04:29:06.966', 250000, '2026-01-11 04:29:06.966', true, 'Geladeira dos sonhos');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('136302d9-9a6f-4624-8b3f-74acc54028b3', 'Fogão da casa cheia para refeições em família', '🔥', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-11 04:29:06.966', 150000, '2026-01-11 04:29:06.966', true, 'Fogão da casa cheia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('e5590ec2-667c-415e-adc7-669afc3327c5', 'Lava-louças da dona de casa gourmet', '🍽️', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-11 04:29:06.966', 160000, '2026-01-11 04:29:06.966', true, 'Lava-louças da dona de casa gourmet');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('5442d6a1-3626-4ba4-826d-f5f460d50845', 'Forno do bolinho do chá da tarde', '🍰', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-11 04:29:06.966', 90000, '2026-01-11 04:29:06.966', true, 'Forno do bolinho do chá da tarde');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('d0b5f793-11ee-4182-8f58-2419e5400c9e', 'TV da sala dos filmes', '📺', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-11 04:29:06.966', 100000, '2026-01-11 04:29:06.966', true, 'TV da sala dos filmes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('a7941417-fd4f-4528-85bc-eec168dc49c7', 'Ar-condicionado do aconchego', '❄️', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-11 04:29:06.966', 140000, '2026-01-11 04:29:06.966', true, 'Ar-condicionado do aconchego');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('e40bedc3-ab10-4825-a471-3877f10dedab', 'Micro-ondas da rotina prática', '📡', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-11 04:29:06.966', 70000, '2026-01-11 04:29:06.966', true, 'Micro-ondas da rotina prática');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('335a02f0-2c7a-4262-b771-53a4d5f48a97', 'Cafeteira para o café matinal', '☕', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-11 04:29:06.966', 25000, '2026-01-11 04:29:06.966', true, 'Cafeteira');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('78bf8116-54cc-4d24-8353-6005859f1577', 'Conjunto de panelas do dia a dia', '🍳', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-11 04:29:06.966', 35000, '2026-01-11 04:29:06.966', true, 'Conjunto de panelas do dia a dia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('d7dc5c46-7af6-4ec5-aa42-ee64a7a10923', 'Liquidificador das vitaminas', '🥤', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-11 04:29:06.966', 22000, '2026-01-11 04:29:06.966', true, 'Liquidificador das vitaminas');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('d6f214dc-d402-4f9d-96dc-5e48315e4d2d', 'Panela elétrica da praticidade', '🍚', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-11 04:29:06.966', 30000, '2026-01-11 04:29:06.966', true, 'Panela elétrica da praticidade');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('65849f7c-541d-4106-9fb3-a38f96a50429', 'Torradeira do café da manhã', '🍞', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-11 04:29:06.966', 18000, '2026-01-11 04:29:06.966', true, 'Torradeira do café da manhã');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('4e62c91a-4237-44e7-882c-738d0a4adb9b', 'Aparelho de jantar especial', '🍽️', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-11 04:29:06.966', 40000, '2026-01-11 04:29:06.966', true, 'Aparelho de jantar especial');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('6fc63c0d-b779-4211-9903-186f3b3fdcc7', 'Kit utensílios da cozinha completa', '🍳', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-11 04:29:06.966', 32000, '2026-01-11 04:29:06.966', true, 'Kit utensílios da cozinha completa');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('6e069d0c-d79f-46ed-9ee7-12a27547e3f1', 'Sofá das conversas longas', '🛋️', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-11 04:29:06.966', 80000, '2026-01-11 04:29:06.966', true, 'Sofá das conversas longas');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('98798b8e-5eb7-4e39-aaf0-c02c828f70d7', 'Cortinas da sala iluminada', '🪟', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-11 04:29:06.966', 30000, '2026-01-11 04:29:06.966', true, 'Cortinas da sala iluminada');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('2c819778-b596-4c59-aa38-a99fc64970ed', 'Luminária do cantinho aconchegante', '🕯️', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-11 04:29:06.966', 18000, '2026-01-11 04:29:06.966', true, 'Luminária do cantinho aconchegante');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('0a7fbc3b-9e29-4b6f-8636-b33f537193f1', 'Quadros com a nossa cara', '🖼️', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-11 04:29:06.966', 20000, '2026-01-11 04:29:06.966', true, 'Quadros com a nossa cara');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('16bdc3d7-2078-4e7a-a067-63859832eab1', 'Relógio da nossa nova rotina', '🕰️', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-11 04:29:06.966', 15000, '2026-01-11 04:29:06.966', true, 'Relógio da nossa nova rotina');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('6b1c3dbc-c7d0-4d8a-9955-8f1aa3d72b7e', 'Detalhes de conforto para a sala', '🛋️', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-11 04:29:06.966', 32000, '2026-01-11 04:29:06.966', true, 'Detalhes de conforto para a sala');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('29bf5913-2f2a-4e40-8e90-9b7c1238c357', 'Cama dos sonhos tranquilos', '🛌', 'a42c3037-dcd4-4ee2-9d75-cdc941f239f1', '2026-01-11 04:29:06.966', 90000, '2026-01-11 04:29:06.966', true, 'Cama dos sonhos tranquilos');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('9d76f796-b084-4c2d-a152-4d8c61268906', 'Jogo de lençóis aconchegantes', '🛏️', 'a42c3037-dcd4-4ee2-9d75-cdc941f239f1', '2026-01-11 04:29:06.966', 22000, '2026-01-11 04:29:06.966', true, 'Jogo de lençóis aconchegantes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('aee9a219-edd4-4db1-afcc-f337331ff1bc', 'Edredom para noites de abraço', '🧺', 'a42c3037-dcd4-4ee2-9d75-cdc941f239f1', '2026-01-11 04:29:06.966', 25000, '2026-01-11 04:29:06.966', true, 'Edredom para noites de abraço');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('a8cccd0e-1763-4f84-ba93-b465feae07a4', 'Espelho do nosso cantinho', '🪞', 'a42c3037-dcd4-4ee2-9d75-cdc941f239f1', '2026-01-11 04:29:06.966', 18000, '2026-01-11 04:29:06.966', true, 'Espelho do nosso cantinho');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('273e1e67-93be-4b5b-bd6f-2130b55ef4b7', 'Abajur do descanso merecido', '🕯️', 'a42c3037-dcd4-4ee2-9d75-cdc941f239f1', '2026-01-11 04:29:06.966', 16000, '2026-01-11 04:29:06.966', true, 'Abajur do descanso merecido');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('6ec01592-3179-4a29-a528-7dd66e9bb3a9', 'Kit banheiro da casa nova', '🚿', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-11 04:29:06.966', 12000, '2026-01-11 04:29:06.966', true, 'Kit banheiro da casa nova');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('148dba22-fbb6-4ffd-a6df-28cb035458a7', 'Organizadores do banheiro', '🧴', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-11 04:29:06.966', 10000, '2026-01-11 04:29:06.966', true, 'Organizadores do banheiro');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ca765d36-585f-4b2e-862e-549093f9e6db', 'Porta-escovas delicado', '🪥', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-11 04:29:06.966', 11000, '2026-01-11 04:29:06.966', true, 'Porta-escovas delicado');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('c9486c76-8b4b-4013-b2d1-ce160b50474b', 'Toalhas macias', '🧼', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-11 04:29:06.966', 15000, '2026-01-11 04:29:06.966', true, 'Toalhas macias');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('fdc36985-8595-4cab-bc37-e638174ae470', 'Cesto organizador', '🧺', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-11 04:29:06.966', 13000, '2026-01-11 04:29:06.966', true, 'Cesto organizador');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ca7b7ab0-f95b-4b86-8bc7-074bedd71c8b', 'Organização da lavanderia', '🧺', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-11 04:29:06.966', 30000, '2026-01-11 04:29:06.966', true, 'Organização da lavanderia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('7dff24a1-1d4b-4f7f-920a-2430f7c3718f', 'Velas perfumadas (cheiro de lar)', '🕯️', '4451c2ce-597e-4032-8eba-5cf70dcc4257', '2026-01-11 04:29:06.966', 9000, '2026-01-11 04:29:06.966', true, 'Velas perfumadas (cheiro de lar)');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('1f89b222-39cf-4a38-a190-e3113250dbc0', 'Bandeja decorativa em tons verdes', '🖤', '4451c2ce-597e-4032-8eba-5cf70dcc4257', '2026-01-11 04:29:06.966', 12000, '2026-01-11 04:29:06.966', true, 'Bandeja decorativa em tons verdes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('f2fc26a9-0f7e-4ac2-8ce0-6018cd447644', 'Almofadas aconchegantes', '🧸', '4451c2ce-597e-4032-8eba-5cf70dcc4257', '2026-01-11 04:29:06.966', 18000, '2026-01-11 04:29:06.966', true, 'Almofadas aconchegantes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('e219a4dd-3b59-4d3a-97e8-1e623760db81', 'Manta para o sofá', '🧵', '4451c2ce-597e-4032-8eba-5cf70dcc4257', '2026-01-11 04:29:06.966', 20000, '2026-01-11 04:29:06.966', true, 'Manta para o sofá');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('0fdd8521-c82d-4c02-aae6-347a2ee32a2d', 'Churrasco para reunir a família e amigos', '🔥', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-11 04:29:06.966', 42000, '2026-01-11 04:29:06.966', true, 'Churrasco para reunir a família e amigos');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('73f02dbf-245f-4401-9449-b9c5f511164e', 'Kit churrasco do casal', '🍖', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-11 04:29:06.966', 22000, '2026-01-11 04:29:06.966', true, 'Kit churrasco do casal');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('8db2794d-5d3c-42c3-ad1c-0c4813afed34', 'Primeiro churrasco da casa nova', '🥩', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-11 04:29:06.966', 18000, '2026-01-11 04:29:06.966', true, 'Primeiro churrasco da casa nova');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('8c765d71-ad06-451c-a409-52f4c38e451b', 'Cervejeira para comemorar', '🍺', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-11 04:29:06.966', 55000, '2026-01-11 04:29:06.966', true, 'Cervejeira para comemorar');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('440225d2-603d-4aaa-8599-564cf3cca3f6', 'Estoque inicial de cerveja', '🍻', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-11 04:29:06.966', 15000, '2026-01-11 04:29:06.966', true, 'Estoque inicial de cerveja');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('18849bf0-218b-4ca2-953a-c5c27e70e7b0', 'Show do cantor na inauguração', '🎙️🎤', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-11 04:29:06.966', 50000, '2026-01-11 04:29:06.966', true, 'show do cantor na inauguração');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('c2e1815a-0171-4cbb-9dd4-20e8e196aff1', 'Gelágua para receber bem', '🚰', '47875d39-0e24-4454-bb63-c98ac784163a', '2026-01-11 04:29:06.966', 65000, '2026-01-11 04:29:06.966', true, 'Gelágua para receber bem');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('00f73b82-da45-4dd9-b387-48ce02fd7175', 'Jogo americano em tons pretos', '🍽️', '2e4a78dd-bab5-446f-ad0b-945c9258637b', '2026-01-11 04:29:06.966', 12000, '2026-01-11 04:29:06.966', true, 'Jogo americano em tons pretos');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('e6add2f6-2f7e-45ec-9917-06649200eb87', 'Potes organizadores', '🧂', '2e4a78dd-bab5-446f-ad0b-945c9258637b', '2026-01-11 04:29:06.966', 10000, '2026-01-11 04:29:06.966', true, 'Potes organizadores');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('eaaff67a-fd63-4028-946e-3deba10b3fea', 'Kit limpeza da casa nova', '🧽', '2e4a78dd-bab5-446f-ad0b-945c9258637b', '2026-01-11 04:29:06.966', 11000, '2026-01-11 04:29:06.966', true, 'Kit limpeza da casa nova');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('d90d12dc-236c-49c9-9a0c-cb52bc0bf064', 'Taças para brindar a dois', '🍷', '2e4a78dd-bab5-446f-ad0b-945c9258637b', '2026-01-11 04:29:06.966', 10000, '2026-01-11 04:29:06.966', true, 'Taças para brindar a dois');


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- PostgreSQL database dump complete
--

\unrestrict NRiWvJqhgvcU2fqZuOmy9ZQrI5ai6fXvbZ6Cd3ak0zB3aetXXq8Eanbk9l58cNm

