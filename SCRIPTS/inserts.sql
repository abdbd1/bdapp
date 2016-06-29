--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: abd
--

INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, counter, parent_id, signatory, name, surname) VALUES (1, 'iijbari@gmail.com', '$2a$11$XhYyxm2vuN9PkwWpCrbMwuPp5lhKSnpyazJh8zDJU/2AeHPikYBii', NULL, NULL, NULL, '2016-06-28 15:25:41.776572', '2016-06-28 15:25:41.776572', 1, NULL, true, 'Jesús', 'Di Bari');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, counter, parent_id, signatory, name, surname) VALUES (2, 'jesus@admin.com', '$2a$11$YqwBiZbZ8Vzg52dQMeFG3eesaum0ZqzWOPAJ27oadEmFOL84ir4Ma', NULL, NULL, NULL, '2016-06-28 15:25:41.937924', '2016-06-28 15:25:41.937924', 2, 1, true, 'Jesús', 'Administrador');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, counter, parent_id, signatory, name, surname) VALUES (3, 'jesus@secundario.com', '$2a$11$zJXXM8RLplaoQ8PKPomvueajlVzwbzJzgfyQWjZArdRgOudfvwhcq', NULL, NULL, NULL, '2016-06-28 15:25:42.095631', '2016-06-28 15:25:42.095631', 3, 2, false, 'Jesús', 'Secundario');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, counter, parent_id, signatory, name, surname) VALUES (4, 'cliente@firmante.com', '$2a$11$gLnUJSheb4wKgYelAif1RuDzDMp6qhFaNCFzVR5TBXzpGCzEMerqq', NULL, NULL, NULL, '2016-06-28 15:25:42.252649', '2016-06-28 15:25:42.252649', 1, NULL, true, 'Cliente', 'Firmante');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, counter, parent_id, signatory, name, surname) VALUES (5, 'admin@firmante.com', '$2a$11$4EW8nlB9/g.6505JuF5wc.7ckSFE1QG7Laqdgj6xQgpyg/krOAh4W', NULL, NULL, NULL, '2016-06-28 15:25:42.41016', '2016-06-28 15:25:42.41016', 2, 4, true, 'Administrador', 'Firmadmin');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, counter, parent_id, signatory, name, surname) VALUES (6, 'usuario@interno.com', '$2a$11$0EiuFOGINHu.QmAgxaqUKenymIxoxI0gN6Ca50A50cp44nASIs1tq', NULL, NULL, NULL, '2016-06-28 15:25:42.56635', '2016-06-28 15:25:42.56635', 4, NULL, false, 'Usuario', 'Interno');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, counter, parent_id, signatory, name, surname) VALUES (7, 'usuario2@firmante.com', '$2a$11$pZLfGkiPj3rPRP8JolP4nOcaQDlbvinJ6FtssSHFEpiyKpL4Yd5Ue', NULL, NULL, NULL, '2016-06-28 19:54:00.870125', '2016-06-28 19:54:00.870125', 2, 1, true, 'Usuario 2', 'Firmante 2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, counter, parent_id, signatory, name, surname) VALUES (8, 'pablo@hotmail.com', '$2a$11$qaOgKguBDID7xfllsQmOSe8foTNLjF252D7WKy0gw8v01eu5TQKA.', NULL, NULL, NULL, '2016-06-29 00:14:52.385856', '2016-06-29 00:14:52.385856', 1, NULL, true, 'Pablo', 'Barboza');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, counter, parent_id, signatory, name, surname) VALUES (9, 'pablo2@hotmail.com', '$2a$11$dKQLGAyCbd29H2Dfo03nM.ohW2Xr5RxjkFM8VrrzZXreLqMybvAva', NULL, NULL, NULL, '2016-06-29 00:19:14.918169', '2016-06-29 00:19:14.918169', 2, 8, true, 'Pablo', 'Adm1');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, counter, parent_id, signatory, name, surname) VALUES (10, 'pablo3@hotmail.com', '$2a$11$m31OudP.Tp.rdWNjS2/8Mu7HoS2qtzENo68txv2kbC4xwBTjoSSdS', NULL, NULL, NULL, '2016-06-29 00:19:55.180324', '2016-06-29 00:19:55.180324', 2, 8, true, 'Pablo', 'Adm2');


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('users_id_seq', 10, true);


--
-- PostgreSQL database dump complete
--

