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

INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, surname, type, counter, parent_id) VALUES (1, 'iijbari@gmail.com', '$2a$11$XZiSqZwLbZQMNiShDzIXE.lCC5ElpW11vZztP8XMWxXN7czZql16i', NULL, NULL, NULL, '2016-06-26 16:23:44.571217', '2016-06-26 16:23:44.571217', 'Jesús', 'Di Bari', 'Principal', 1, NULL);
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, surname, type, counter, parent_id) VALUES (2, 'jesus@admin.com', '$2a$11$lI77gs6C6gWryYdoJ1zpqu51EBOZ4R/RS35e..Pd5huIBjJeGfXJm', NULL, NULL, NULL, '2016-06-26 16:23:44.736594', '2016-06-26 16:23:44.736594', 'Jesús', 'Administrador', 'Administrador', 2, 1);
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, surname, type, counter, parent_id) VALUES (3, 'jesus@secundario.com', '$2a$11$LoojSs/Aj8HvxBFjGJxjreCJRenvO40b28r36X4gH52iu6VGzcq5K', NULL, NULL, NULL, '2016-06-26 16:23:44.896974', '2016-06-26 16:23:44.896974', 'Jesús', 'Secundario', 'Secundario', 3, 1);
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, surname, type, counter, parent_id) VALUES (4, 'pablo@hotmail.com', '$2a$11$M/y/AyIKGYA8Sc5ObMxIBe2e6QNFV6GWzeqZupxEhCkVRoyrPWbLK', NULL, NULL, NULL, '2016-06-26 16:40:19.755853', '2016-06-26 16:40:19.755853', 'elpablo', 'asdas', 'Principal', 1, NULL);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('users_id_seq', 4, true);


--
-- PostgreSQL database dump complete
--

