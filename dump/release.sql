--
-- PostgreSQL database dump
--

\restrict 3FjjDVhuo5pAtUf5pSBxJutLw9fiHdZHeYg2S05hcl52kI3QvF56H7sGEbHSGtA

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

INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('eletrodomesticos', 'Eletrodomésticos', '2026-01-07 16:41:54.284', '2026-01-07 16:41:54.284');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('cozinha', 'Cozinha & Praticidade', '2026-01-07 16:41:54.284', '2026-01-07 16:41:54.284');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('sala', 'Sala & Conforto', '2026-01-07 16:41:54.284', '2026-01-07 16:41:54.284');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('quarto', 'Quarto & Descanso', '2026-01-07 16:41:54.284', '2026-01-07 16:41:54.284');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('banheiro', 'Banheiro & Organização', '2026-01-07 16:41:54.284', '2026-01-07 16:41:54.284');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('decoracao', 'Decoração & Clima', '2026-01-07 16:41:54.284', '2026-01-07 16:41:54.284');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('comemoracao', 'Momentos & Comemorações', '2026-01-07 16:41:54.284', '2026-01-07 16:41:54.284');
INSERT INTO public.category (id, name, created_at, updated_at) VALUES ('acessiveis', 'Valores Acessíveis', '2026-01-07 16:41:54.284', '2026-01-07 16:41:54.284');


--
-- Data for Name: costumer; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('58771ed2-113f-4043-937a-ab09a3769788', 'Uma geladeira moderna e espaçosa para guardar todas as delícias do dia a dia.', '🧊', 'eletrodomesticos', '2026-01-07 18:48:55.503', 2500, '2026-01-07 18:48:55.503', true, 'Geladeira dos sonhos');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('310410ce-1763-4491-9a6f-2a7aaa572eaf', 'O coração da cozinha, onde as receitas de família ganharão vida.', '🔥', 'eletrodomesticos', '2026-01-07 18:48:55.503', 1500, '2026-01-07 18:48:55.503', true, 'Fogão da casa cheia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('1459aa2e-b280-4782-941e-9b7b7e5b2194', 'Praticidade no dia a dia para sobrar mais tempo para o que importa.', '��️', 'eletrodomesticos', '2026-01-07 18:48:55.503', 1600, '2026-01-07 18:48:55.503', true, 'Lava-louças da dona de casa gourmet');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('fc4491cd-ba87-4bc3-a565-42d57fe962c7', 'Para assar bolos, tortas e criar momentos doces juntos.', '🍰', 'eletrodomesticos', '2026-01-07 18:48:55.503', 900, '2026-01-07 18:48:55.503', true, 'Forno do bolinho do chá da tarde');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('a0e29a00-973b-4362-a79f-867130320b3c', 'Para as sessões de cinema em casa e maratonas de séries.', '📺', 'eletrodomesticos', '2026-01-07 18:48:55.503', 1000, '2026-01-07 18:48:55.503', true, 'TV da sala dos filmes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('618ad5be-be9f-4b6f-bd45-a1e030e2621a', 'Conforto térmico para todas as estações do ano.', '❄️', 'eletrodomesticos', '2026-01-07 18:48:55.503', 1400, '2026-01-07 18:48:55.503', true, 'Ar-condicionado do aconchego');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('44e7a5ef-5759-4ea5-9691-1ee73cde2121', 'Para esquentar as comidinhas e facilitar o dia a dia corrido.', '📡', 'cozinha', '2026-01-07 18:48:55.503', 700, '2026-01-07 18:48:55.503', true, 'Micro-ondas da rotina prática');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ea12cbb0-a1b7-45c9-8fc8-510f943dcd28', 'Café fresquinho para começar cada dia com energia e amor.', '☕', 'cozinha', '2026-01-07 18:48:55.503', 250, '2026-01-07 18:48:55.503', true, 'Cafeteira do café compartilhado');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('dc754a42-881b-491b-bc42-65969f52ca5e', 'Para cozinhar com amor todas as refeições especiais.', '🍳', 'cozinha', '2026-01-07 18:48:55.503', 350, '2026-01-07 18:48:55.503', true, 'Conjunto de panelas do dia a dia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ff88c1f4-f300-412e-b837-63fe74665e75', 'Sucos, vitaminas e smoothies para uma vida saudável.', '🥤', 'cozinha', '2026-01-07 18:48:55.503', 220, '2026-01-07 18:48:55.503', true, 'Liquidificador das vitaminas');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('3e44a7a8-e85f-4f33-84cb-40d4bb614f21', 'Arroz perfeito todos os dias, sem esforço.', '🍚', 'cozinha', '2026-01-07 18:48:55.503', 300, '2026-01-07 18:48:55.503', true, 'Panela elétrica da praticidade');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('e3204c82-ceef-4404-8627-fe80846278da', 'Torradas crocantes para começar bem o dia.', '🍞', 'cozinha', '2026-01-07 18:48:55.503', 180, '2026-01-07 18:48:55.503', true, 'Torradeira do café da manhã');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('40f3774e-4a53-439a-8dec-dc952e13c2d1', 'Pratos bonitos para as refeições em família.', '🍽️', 'cozinha', '2026-01-07 18:48:55.503', 280, '2026-01-07 18:48:55.503', true, 'Aparelho de jantar do dia a dia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('d8fec0c2-fae7-4009-82b8-93ff7ca94693', 'Todos os utensílios essenciais para cozinhar com prazer.', '🥄', 'cozinha', '2026-01-07 18:48:55.503', 320, '2026-01-07 18:48:55.503', true, 'Kit utensílios da cozinha completa');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('f9e72a48-1875-4657-9d9e-ecc7aa5f6845', 'O cantinho perfeito para relaxar e receber amigos.', '🛋️', 'sala', '2026-01-07 18:48:55.503', 800, '2026-01-07 18:48:55.503', true, 'Sofá das conversas longas');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ea823c95-d33d-4dd2-bd5e-f2295bffe1c6', 'Luz filtrada e privacidade para nosso lar.', '🪟', 'sala', '2026-01-07 18:48:55.503', 300, '2026-01-07 18:48:55.503', true, 'Cortinas da sala iluminada');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('9c38e6ad-37e6-4c2e-abdc-5eebf93b1abe', 'Iluminação suave para momentos de relaxamento.', '🕯️', 'sala', '2026-01-07 18:48:55.503', 180, '2026-01-07 18:48:55.503', true, 'Luminária do cantinho aconchegante');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('97d8323a-a2ce-4927-a43d-6c1b2a998ccf', 'Arte que conta nossa história nas paredes.', '🖼️', 'sala', '2026-01-07 18:48:55.503', 200, '2026-01-07 18:48:55.503', true, 'Quadros com a nossa cara');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('b8c2363a-7f27-41ba-8b09-a3174a5f2463', 'Marcando os momentos felizes do nosso lar.', '🕰️', 'sala', '2026-01-07 18:48:55.503', 150, '2026-01-07 18:48:55.503', true, 'Relógio da nossa nova rotina');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('0de94111-b3ab-43cf-a1d3-dcaac62e2cd3', 'Pequenos toques que fazem toda diferença.', '✨', 'sala', '2026-01-07 18:48:55.503', 320, '2026-01-07 18:48:55.503', true, 'Detalhes de conforto para a sala');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('8649b60f-11f1-47d8-be32-8aea7d5da0f4', 'Onde vamos descansar e sonhar juntos.', '��', 'quarto', '2026-01-07 18:48:55.503', 900, '2026-01-07 18:48:55.503', true, 'Cama dos sonhos tranquilos');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('6fb34f28-9f69-4a2a-bd19-d93c42dca096', 'Lençóis macios para noites de sono profundo.', '🛏️', 'quarto', '2026-01-07 18:48:55.503', 220, '2026-01-07 18:48:55.503', true, 'Jogo de lençóis aconchegantes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('9777ea31-260d-4602-8718-579041d1f8b8', 'Quentinho e macio para as noites frias.', '🧺', 'quarto', '2026-01-07 18:48:55.503', 250, '2026-01-07 18:48:55.503', true, 'Edredom para noites de abraço');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('994632b0-70f5-41d1-95bf-7c3a7b0824a3', 'Para nos arrumarmos com carinho todos os dias.', '🪞', 'quarto', '2026-01-07 18:48:55.503', 180, '2026-01-07 18:48:55.503', true, 'Espelho do nosso cantinho');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('ac1aa28c-e98f-4f12-84c6-2fc9ecae8c50', 'Luz suave para leituras antes de dormir.', '💡', 'quarto', '2026-01-07 18:48:55.503', 160, '2026-01-07 18:48:55.503', true, 'Abajur do descanso merecido');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('43dba0a9-39be-4e69-a65c-6153fd72b4c7', 'Acessórios essenciais para o banheiro.', '🚿', 'banheiro', '2026-01-07 18:48:55.503', 120, '2026-01-07 18:48:55.503', true, 'Kit banheiro da casa nova');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('e307cb1e-bb09-423a-972c-428431fca516', 'Tudo no lugar, tudo organizado.', '🧴', 'banheiro', '2026-01-07 18:48:55.503', 100, '2026-01-07 18:48:55.503', true, 'Organizadores do banheiro');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('0d259dff-b63b-409e-bed5-52d24b39b300', 'Organização com charme no banheiro.', '🪥', 'banheiro', '2026-01-07 18:48:55.503', 90, '2026-01-07 18:48:55.503', true, 'Porta-escovas delicado');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('9606ce46-6209-4006-a20e-0d6e798e884e', 'Toalhas fofas e absorventes.', '🧼', 'banheiro', '2026-01-07 18:48:55.503', 150, '2026-01-07 18:48:55.503', true, 'Toalhas macias');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('875dea90-ca81-43af-84e2-b2b9f1026d42', 'Para manter tudo organizado.', '🧺', 'banheiro', '2026-01-07 18:48:55.503', 130, '2026-01-07 18:48:55.503', true, 'Cesto organizador');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('9e929e3c-ffce-4841-a642-70c98c29edfb', 'Praticidade para lavar e passar.', '🧹', 'banheiro', '2026-01-07 18:48:55.503', 300, '2026-01-07 18:48:55.503', true, 'Organização da lavanderia');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('5c1d4962-067a-4e58-b9ca-fd0449fe9dcc', 'Aromas que fazem a casa ter nossa cara.', '🕯️', 'decoracao', '2026-01-07 18:48:55.503', 90, '2026-01-07 18:48:55.503', true, 'Velas perfumadas (cheiro de lar)');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('2788b597-a7df-4c4b-b34b-72e20650d8eb', 'Decoração com a cor da esperança.', '🌿', 'decoracao', '2026-01-07 18:48:55.503', 120, '2026-01-07 18:48:55.503', true, 'Bandeja decorativa em tons verdes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('996cd056-8554-4e36-b374-9d33b4c1fc4a', 'Conforto e estilo para o sofá.', '🧸', 'decoracao', '2026-01-07 18:48:55.503', 180, '2026-01-07 18:48:55.503', true, 'Almofadas aconchegantes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('54eb60f5-b5c1-4275-a1bc-2d2e6a1a192e', 'Para as tardes frias no sofá.', '🧵', 'decoracao', '2026-01-07 18:48:55.503', 200, '2026-01-07 18:48:55.503', true, 'Manta para o sofá');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('98c49d4d-79cc-4c8b-ac1d-48e6bc240e05', 'Fragrâncias que acolhem quem chega.', '🌸', 'decoracao', '2026-01-07 18:48:55.503', 280, '2026-01-07 18:48:55.503', true, 'Kit velas e aromas para a casa');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('9a55e0ba-be83-4933-a0aa-dd83ea2174c4', 'O primeiro churrasco na casa nova!', '🔥', 'comemoracao', '2026-01-07 18:48:55.503', 300, '2026-01-07 18:48:55.503', true, 'Churrasco para reunir a família');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('f13b8add-2cd8-4207-bb06-295a9aaf069b', 'Ferramentas para o churrasqueiro da casa.', '🍖', 'comemoracao', '2026-01-07 18:48:55.503', 220, '2026-01-07 18:48:55.503', true, 'Kit churrasco do casal');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('972217e1-878d-4765-8ce0-b1e90975cf62', 'Carne boa para inaugurar o espaço gourmet.', '🥩', 'comemoracao', '2026-01-07 18:48:55.503', 180, '2026-01-07 18:48:55.503', true, 'Primeiro churrasco da casa nova');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('f2aec17c-1fa0-44e1-8971-b6e757b23391', 'Cerveja gelada sempre à mão.', '🍺', 'comemoracao', '2026-01-07 18:48:55.503', 900, '2026-01-07 18:48:55.503', true, 'Cervejeira para comemorar');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('14db55b7-03d9-415f-8eb9-af88b29b7604', 'Para brindar com os amigos!', '🍻', 'comemoracao', '2026-01-07 18:48:55.503', 150, '2026-01-07 18:48:55.503', true, 'Estoque inicial de cerveja');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('8142938c-51cc-4eb8-bf93-163bfec7db71', 'Água fresquinha para toda a família.', '🚰', 'comemoracao', '2026-01-07 18:48:55.503', 650, '2026-01-07 18:48:55.503', true, 'Gelágua para receber bem');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('8a3d91c3-1d43-4cd4-bb14-27e02e1fa433', 'Mesa posta com carinho e estilo.', '🍽️', 'acessiveis', '2026-01-07 18:48:55.503', 101, '2026-01-07 18:48:55.503', true, 'Jogo americano em tons verdes');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('69a0708d-f28a-4ff3-a7ca-a853e4e9bbc4', 'Organização na despensa.', '🧂', 'acessiveis', '2026-01-07 18:48:55.503', 100, '2026-01-07 18:48:55.503', true, 'Potes organizadores');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('5b3b8a58-00e9-4034-adaf-938408135100', 'Produtos para manter tudo brilhando.', '🧽', 'acessiveis', '2026-01-07 18:48:55.503', 110, '2026-01-07 18:48:55.503', true, 'Kit limpeza da casa nova');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('66704c4f-e671-416d-b0c4-b4e27f61a738', 'Para celebrar cada conquista juntos.', '🍷', 'acessiveis', '2026-01-07 18:48:55.503', 100, '2026-01-07 18:48:55.503', true, 'Taças para brindar a dois');
INSERT INTO public.product (id, description, avatar_icon, category_id, created_at, price, updated_at, available, name) VALUES ('d08bec43-7e03-463e-acc5-47fa60661055', 'Cada contribuição faz diferença.', '💌', 'acessiveis', '2026-01-07 18:48:55.503', 100, '2026-01-07 18:48:55.503', true, 'Ajuda para pequenos ajustes do lar');


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- PostgreSQL database dump complete
--

\unrestrict 3FjjDVhuo5pAtUf5pSBxJutLw9fiHdZHeYg2S05hcl52kI3QvF56H7sGEbHSGtA

