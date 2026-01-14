--
-- PostgreSQL database dump
--

\restrict 51A4bW6Hj0WzSGFbIQAvpje299onegDje8l0j1esDJymgln3PEPEjG7s4ZkehZk

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
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e72c3264-81c1-4f65-8965-3011f49e4eaf', '9f0467cfebc7ee47d2fc738e72d9868b491d85e38d26db7237e4c274d17b17f7', '2026-01-14 18:56:02.526071+00', '20260114185602_donor_name_payment', NULL, NULL, '2026-01-14 18:56:02.520794+00', 1);


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

INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('1ddc6da6-8105-416f-bffd-964883e6198b', 'Geladeira dos sonhos', '🧊', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-14 20:35:30.005', 250000, '2026-01-14 20:35:30.005', true, 'Geladeira dos sonhos');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('cd660663-595f-4132-88d4-438a9e6c2d72', 'Fogão da casa cheia', '🔥', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-14 20:35:30.005', 150000, '2026-01-14 20:35:30.005', true, 'Fogão da casa cheia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('2ba00535-a855-467c-917d-2f82eaead23b', 'Lava-louças da dona de casa gourmet', '🍽️', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-14 20:35:30.005', 160000, '2026-01-14 20:35:30.005', true, 'Lava-louças da dona de casa gourmet');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('7ecf29ce-f718-4cdf-8cf7-4a241fee333c', 'Forno do bolinho do chá da tarde', '🍰', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-14 20:35:30.005', 90000, '2026-01-14 20:35:30.005', true, 'Forno do bolinho do chá da tarde');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('86529aaa-d1ec-4686-a4a6-8c3f3369de37', 'TV da sala dos filmes', '📺', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-14 20:35:30.005', 100000, '2026-01-14 20:35:30.005', true, 'TV da sala dos filmes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('4d21d355-80eb-4d2c-9075-8a351dfbe4a6', 'Ar-condicionado do aconchego', '❄️', '7e3070cc-4e1c-41b3-afaa-084a04843521', '2026-01-14 20:35:30.005', 140000, '2026-01-14 20:35:30.005', true, 'Ar-condicionado do aconchego');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('9e0e6c03-6f9f-4242-9985-aaeede31fb88', 'Micro-ondas da rotina prática', '📡', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-14 20:35:30.005', 70000, '2026-01-14 20:35:30.005', true, 'Micro-ondas da rotina prática');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('d3bd5c88-c528-465f-b618-9d3489a38f72', 'Cafeteira do café compartilhado', '☕', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-14 20:35:30.005', 25000, '2026-01-14 20:35:30.005', true, 'Cafeteira do café compartilhado');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ecfe4655-d342-4557-b23e-1093943e801c', 'Conjunto de panelas do dia a dia', '🍳', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-14 20:35:30.005', 35000, '2026-01-14 20:35:30.005', true, 'Conjunto de panelas do dia a dia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('364a34e2-a901-4a69-9cf0-39e2ce2329dd', 'Liquidificador das vitaminas', '🥤', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-14 20:35:30.005', 22000, '2026-01-14 20:35:30.005', true, 'Liquidificador das vitaminas');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('4da94c9a-3e8c-4331-a218-7e4b8ef95869', 'Panela elétrica da praticidade', '🍚', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-14 20:35:30.005', 30000, '2026-01-14 20:35:30.005', true, 'Panela elétrica da praticidade');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('29496fd6-12cc-4680-92e2-c54a033c4285', 'Torradeira do café da manhã', '🍞', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-14 20:35:30.005', 18000, '2026-01-14 20:35:30.005', true, 'Torradeira do café da manhã');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('178aec45-af40-4b57-89ea-5bd575ad122e', 'Aparelho de jantar do dia a dia', '🍽️', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-14 20:35:30.005', 28000, '2026-01-14 20:35:30.005', true, 'Aparelho de jantar do dia a dia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('d46bf42f-6df7-42c8-85d7-4cdbaaf4cd8f', 'Kit utensílios da cozinha completa', '🍳', 'dee96a44-da50-4f70-9c9e-7c8756398204', '2026-01-14 20:35:30.005', 32000, '2026-01-14 20:35:30.005', true, 'Kit utensílios da cozinha completa');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('8a98fa93-f2b8-441c-bbf9-133d75bacdc4', 'Sofá das conversas longas', '🛋️', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-14 20:35:30.005', 80000, '2026-01-14 20:35:30.005', true, 'Sofá das conversas longas');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('9762e5d8-85a7-4451-a9a9-fe0801692fc3', 'Cortinas da sala iluminada', '��', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-14 20:35:30.005', 30000, '2026-01-14 20:35:30.005', true, 'Cortinas da sala iluminada');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('47aee39b-023d-4c12-87b3-fc22a2ef1751', 'Luminária do cantinho aconchegante', '🕯️', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-14 20:35:30.005', 18000, '2026-01-14 20:35:30.005', true, 'Luminária do cantinho aconchegante');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('de8d263b-3991-42b1-988c-697bf841ebbc', 'Quadros com a nossa cara', '🖼️', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-14 20:35:30.005', 20000, '2026-01-14 20:35:30.005', true, 'Quadros com a nossa cara');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('c2c71585-31d3-46de-8e61-c262a99e73e0', 'Relógio da nossa nova rotina', '🕰️', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-14 20:35:30.005', 15000, '2026-01-14 20:35:30.005', true, 'Relógio da nossa nova rotina');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('8ca5e8f8-24e4-4353-a029-b34e826302bc', 'Detalhes de conforto para a sala', '🛋️', '820ff7db-c71a-4339-a1b6-92896c9e6b6b', '2026-01-14 20:35:30.005', 32000, '2026-01-14 20:35:30.005', true, 'Detalhes de conforto para a sala');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ed8d88da-7e11-42a7-9a15-94a2153d90d5', 'Cama dos sonhos tranquilos', '🛌', 'a42c3037-dcd4-4ee2-9d75-cdc941f239f1', '2026-01-14 20:35:30.005', 90000, '2026-01-14 20:35:30.005', true, 'Cama dos sonhos tranquilos');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('26f1793f-53d9-4f8e-a7a4-687ea0a95178', 'Jogo de lençóis aconchegantes', '🛏️', 'a42c3037-dcd4-4ee2-9d75-cdc941f239f1', '2026-01-14 20:35:30.005', 22000, '2026-01-14 20:35:30.005', true, 'Jogo de lençóis aconchegantes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('21b7a2ec-afa7-4712-b424-13aebe6348bf', 'Edredom para noites de abraço', '🧺', 'a42c3037-dcd4-4ee2-9d75-cdc941f239f1', '2026-01-14 20:35:30.005', 25000, '2026-01-14 20:35:30.005', true, 'Edredom para noites de abraço');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('e95a6ec8-5116-4c6c-b262-0762d263aa75', 'Espelho do nosso cantinho', '🪞', 'a42c3037-dcd4-4ee2-9d75-cdc941f239f1', '2026-01-14 20:35:30.005', 18000, '2026-01-14 20:35:30.005', true, 'Espelho do nosso cantinho');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('49290f05-ce41-4898-b4c4-170c6c05f011', 'Abajur do descanso merecido', '🕯️', 'a42c3037-dcd4-4ee2-9d75-cdc941f239f1', '2026-01-14 20:35:30.005', 16000, '2026-01-14 20:35:30.005', true, 'Abajur do descanso merecido');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('84634ac5-c5ee-4ed7-819c-09f3bd665bbb', 'Kit banheiro da casa nova', '��', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-14 20:35:30.005', 12000, '2026-01-14 20:35:30.005', true, 'Kit banheiro da casa nova');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('871de150-1759-4ebe-9e38-d4189a8bd2ed', 'Organizadores do banheiro', '🧴', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-14 20:35:30.005', 10000, '2026-01-14 20:35:30.005', true, 'Organizadores do banheiro');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ea28e8cf-e559-43a7-bd1f-5edaa95f6c0c', 'Porta-escovas delicado', '��', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-14 20:35:30.005', 9000, '2026-01-14 20:35:30.005', true, 'Porta-escovas delicado');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('f664f8c9-14b7-47e2-a9e0-3cde4a3918a3', 'Toalhas macias', '🧼', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-14 20:35:30.005', 15000, '2026-01-14 20:35:30.005', true, 'Toalhas macias');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('66e80e77-15d7-4d25-90a0-ab092c9a9d7a', 'Cesto organizador', '🧺', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-14 20:35:30.005', 13000, '2026-01-14 20:35:30.005', true, 'Cesto organizador');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('73db2c02-08c3-47b6-ba2d-155b303569e9', 'Organização da lavanderia', '🧺', '642e2eeb-67ee-49a7-8e42-ac495d2a70fe', '2026-01-14 20:35:30.005', 30000, '2026-01-14 20:35:30.005', true, 'Organização da lavanderia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('5c31b615-8170-4f94-a5f3-65eaff7848ed', 'Velas perfumadas (cheiro de lar)', '🕯️', '4451c2ce-597e-4032-8eba-5cf70dcc4257', '2026-01-14 20:35:40.935', 9000, '2026-01-14 20:35:40.935', true, 'Velas perfumadas (cheiro de lar)');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('2f93d523-4962-4159-a683-011e1ad984ce', 'Bandeja decorativa em tons verdes', '🖤', '4451c2ce-597e-4032-8eba-5cf70dcc4257', '2026-01-14 20:35:40.935', 12000, '2026-01-14 20:35:40.935', true, 'Bandeja decorativa em tons verdes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('f6707b04-3f79-44d1-9e99-d560d74df32d', 'Almofadas aconchegantes', '🧸', '4451c2ce-597e-4032-8eba-5cf70dcc4257', '2026-01-14 20:35:40.935', 18000, '2026-01-14 20:35:40.935', true, 'Almofadas aconchegantes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('b29fbd66-d1cd-4b2e-b2c9-46f7b9cb1bbe', 'Manta para o sofá', '🧵', '4451c2ce-597e-4032-8eba-5cf70dcc4257', '2026-01-14 20:35:40.935', 20000, '2026-01-14 20:35:40.935', true, 'Manta para o sofá');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('2130ab89-3efa-4631-9aaf-72497a0aea40', 'Kit velas e aromas para a casa', '🕯️', '4451c2ce-597e-4032-8eba-5cf70dcc4257', '2026-01-14 20:35:40.935', 28000, '2026-01-14 20:35:40.935', true, 'Kit velas e aromas para a casa');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('9cd48d50-f51e-44d1-bb7d-aa856d1e1d78', 'Churrasco para reunir a família', '🔥', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-14 20:35:40.935', 30000, '2026-01-14 20:35:40.935', true, 'Churrasco para reunir a família');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('2a83cc25-4868-4f4a-8bf0-ce458f49ca17', 'Kit churrasco do casal', '🍖', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-14 20:35:40.935', 22000, '2026-01-14 20:35:40.935', true, 'Kit churrasco do casal');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ae886771-9cf4-4871-920a-5700b6d89bc9', 'Primeiro churrasco da casa nova', '🥩', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-14 20:35:40.935', 18000, '2026-01-14 20:35:40.935', true, 'Primeiro churrasco da casa nova');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('c6073b51-e02d-4bb7-9fd7-5ea2bdad843c', 'Cervejeira para comemorar', '🍺', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-14 20:35:40.935', 90000, '2026-01-14 20:35:40.935', true, 'Cervejeira para comemorar');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('4d111add-fd8f-4c13-a860-93125f616c18', 'Estoque inicial de cerveja', '🍻', 'a06da598-e853-4e04-abbd-4aff63df1eee', '2026-01-14 20:35:40.935', 15000, '2026-01-14 20:35:40.935', true, 'Estoque inicial de cerveja');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('7cf952ae-be87-4350-8e3a-efea78c87d28', 'Gelágua para receber bem', '🚰', '47875d39-0e24-4454-bb63-c98ac784163a', '2026-01-14 20:35:40.935', 65000, '2026-01-14 20:35:40.935', true, 'Gelágua para receber bem');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('d8490c85-5cfb-4129-8d26-2ae539ed8010', 'Jogo americano em tons verdes', '🍽️', '2e4a78dd-bab5-446f-ad0b-945c9258637b', '2026-01-14 20:35:40.935', 10100, '2026-01-14 20:35:40.935', true, 'Jogo americano em tons verdes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ffcc41c2-673e-4ccb-89db-1eebd6d24f80', 'Potes organizadores', '🧂', '2e4a78dd-bab5-446f-ad0b-945c9258637b', '2026-01-14 20:35:40.935', 10000, '2026-01-14 20:35:40.935', true, 'Potes organizadores');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('03650e6b-6734-4020-80b3-2e17ac18a1ca', 'Kit limpeza da casa nova', '🧽', '2e4a78dd-bab5-446f-ad0b-945c9258637b', '2026-01-14 20:35:40.935', 11000, '2026-01-14 20:35:40.935', true, 'Kit limpeza da casa nova');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('048a8f73-5f85-4981-a77a-dbb11d843057', 'Taças para brindar a dois', '🍷', '2e4a78dd-bab5-446f-ad0b-945c9258637b', '2026-01-14 20:35:40.935', 10000, '2026-01-14 20:35:40.935', true, 'Taças para brindar a dois');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('9fe59799-cb81-4ab6-8b3c-850e113e2b03', 'Ajuda para pequenos ajustes do lar', '💌', '2e4a78dd-bab5-446f-ad0b-945c9258637b', '2026-01-14 20:35:40.935', 10000, '2026-01-14 20:35:40.935', true, 'Ajuda para pequenos ajustes do lar');


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- PostgreSQL database dump complete
--

\unrestrict 51A4bW6Hj0WzSGFbIQAvpje299onegDje8l0j1esDJymgln3PEPEjG7s4ZkehZk

