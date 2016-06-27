--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE accounts (
    id integer NOT NULL,
    tipo character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.accounts OWNER TO abd;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_id_seq OWNER TO abd;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE accounts_id_seq OWNED BY accounts.id;


--
-- Name: card_coors; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE card_coors (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    card_id integer,
    coordinate_id integer
);


ALTER TABLE public.card_coors OWNER TO abd;

--
-- Name: card_coors_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE card_coors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_coors_id_seq OWNER TO abd;

--
-- Name: card_coors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE card_coors_id_seq OWNED BY card_coors.id;


--
-- Name: cards; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE cards (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.cards OWNER TO abd;

--
-- Name: cards_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cards_id_seq OWNER TO abd;

--
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE cards_id_seq OWNED BY cards.id;


--
-- Name: coordinates; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE coordinates (
    id integer NOT NULL,
    "column" integer,
    "row" integer,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.coordinates OWNER TO abd;

--
-- Name: coordinates_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE coordinates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coordinates_id_seq OWNER TO abd;

--
-- Name: coordinates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE coordinates_id_seq OWNED BY coordinates.id;


--
-- Name: ope_pros; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE ope_pros (
    id integer NOT NULL,
    operation_id integer,
    product_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ope_pros OWNER TO abd;

--
-- Name: ope_pros_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE ope_pros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ope_pros_id_seq OWNER TO abd;

--
-- Name: ope_pros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE ope_pros_id_seq OWNED BY ope_pros.id;


--
-- Name: ope_roles; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE ope_roles (
    id integer NOT NULL,
    operation_id integer,
    role_id integer,
    account_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ope_roles OWNER TO abd;

--
-- Name: ope_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE ope_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ope_roles_id_seq OWNER TO abd;

--
-- Name: ope_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE ope_roles_id_seq OWNED BY ope_roles.id;


--
-- Name: operations; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE operations (
    id integer NOT NULL,
    acronimo character varying,
    nombre character varying,
    montomax integer,
    montomin integer,
    tipo character varying,
    "natural" boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    parent_id integer
);


ALTER TABLE public.operations OWNER TO abd;

--
-- Name: operations_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE operations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.operations_id_seq OWNER TO abd;

--
-- Name: operations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE operations_id_seq OWNED BY operations.id;


--
-- Name: otps; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE otps (
    id integer NOT NULL,
    clave character varying,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.otps OWNER TO abd;

--
-- Name: otps_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE otps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.otps_id_seq OWNER TO abd;

--
-- Name: otps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE otps_id_seq OWNED BY otps.id;


--
-- Name: phones; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE phones (
    id integer NOT NULL,
    number character varying,
    type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.phones OWNER TO abd;

--
-- Name: phones_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE phones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.phones_id_seq OWNER TO abd;

--
-- Name: phones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE phones_id_seq OWNED BY phones.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE products (
    id integer NOT NULL,
    nombre character varying,
    vigencia date,
    emision date,
    tipo character varying,
    saldo integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.products OWNER TO abd;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO abd;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE questions (
    id integer NOT NULL,
    question character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.questions OWNER TO abd;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO abd;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE questions_id_seq OWNED BY questions.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE roles (
    id integer NOT NULL,
    nombre character varying,
    descripcion character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.roles OWNER TO abd;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO abd;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO abd;

--
-- Name: user_opes; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE user_opes (
    id integer NOT NULL,
    user_id integer,
    operation_id integer,
    account_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_opes OWNER TO abd;

--
-- Name: user_opes_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE user_opes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_opes_id_seq OWNER TO abd;

--
-- Name: user_opes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE user_opes_id_seq OWNED BY user_opes.id;


--
-- Name: user_ques; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE user_ques (
    id integer NOT NULL,
    answer character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer,
    question_id integer
);


ALTER TABLE public.user_ques OWNER TO abd;

--
-- Name: user_ques_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE user_ques_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_ques_id_seq OWNER TO abd;

--
-- Name: user_ques_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE user_ques_id_seq OWNED BY user_ques.id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE user_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    asignado boolean
);


ALTER TABLE public.user_roles OWNER TO abd;

--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_roles_id_seq OWNER TO abd;

--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE user_roles_id_seq OWNED BY user_roles.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    surname character varying,
    type character varying,
    counter integer,
    parent_id integer
);


ALTER TABLE public.users OWNER TO abd;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO abd;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY accounts ALTER COLUMN id SET DEFAULT nextval('accounts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY card_coors ALTER COLUMN id SET DEFAULT nextval('card_coors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY cards ALTER COLUMN id SET DEFAULT nextval('cards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY coordinates ALTER COLUMN id SET DEFAULT nextval('coordinates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_pros ALTER COLUMN id SET DEFAULT nextval('ope_pros_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_roles ALTER COLUMN id SET DEFAULT nextval('ope_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY operations ALTER COLUMN id SET DEFAULT nextval('operations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY otps ALTER COLUMN id SET DEFAULT nextval('otps_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY phones ALTER COLUMN id SET DEFAULT nextval('phones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY questions ALTER COLUMN id SET DEFAULT nextval('questions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY user_opes ALTER COLUMN id SET DEFAULT nextval('user_opes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY user_ques ALTER COLUMN id SET DEFAULT nextval('user_ques_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY user_roles ALTER COLUMN id SET DEFAULT nextval('user_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY accounts (id, tipo, created_at, updated_at) FROM stdin;
\.


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('accounts_id_seq', 1, false);


--
-- Data for Name: card_coors; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY card_coors (id, created_at, updated_at, card_id, coordinate_id) FROM stdin;
\.


--
-- Name: card_coors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('card_coors_id_seq', 1, false);


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY cards (id, created_at, updated_at, user_id) FROM stdin;
\.


--
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('cards_id_seq', 1, false);


--
-- Data for Name: coordinates; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY coordinates (id, "column", "row", value, created_at, updated_at) FROM stdin;
\.


--
-- Name: coordinates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('coordinates_id_seq', 1, false);


--
-- Data for Name: ope_pros; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY ope_pros (id, operation_id, product_id, created_at, updated_at) FROM stdin;
1	6	1	2016-06-26 18:48:04.222221	2016-06-26 18:48:04.222221
2	6	1	2016-06-26 19:21:31.806288	2016-06-26 19:21:31.806288
\.


--
-- Name: ope_pros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('ope_pros_id_seq', 2, true);


--
-- Data for Name: ope_roles; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY ope_roles (id, operation_id, role_id, account_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: ope_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('ope_roles_id_seq', 1, false);


--
-- Data for Name: operations; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY operations (id, acronimo, nombre, montomax, montomin, tipo, "natural", created_at, updated_at, parent_id) FROM stdin;
1	Black Op.	Operación 1	500000	5000	Special Ops.	t	2016-06-26 16:23:44.926406	2016-06-26 16:23:44.926406	\N
2	Sub Black Op.	Sub Operación 1	500000	5000	Sub Special Ops.	t	2016-06-26 16:23:44.934546	2016-06-26 16:23:44.934546	1
3	Transfer	Transferencia mismo banco	10000	500	afectacion	t	2016-06-26 16:43:58.006445	2016-06-26 16:43:58.006445	\N
4	Transfer	transferencia banco terceros	15000	1010	afec	t	2016-06-26 16:44:29.18354	2016-06-26 16:44:29.18354	\N
5	Transfer	Consulta Transferencia	1000000	1	consulta	t	2016-06-26 16:57:41.52735	2016-06-26 16:57:41.52735	\N
6	Transferencias	Transferencia de dinero	50000	10000	Transferencias Bancarias	t	2016-06-26 18:30:17.108186	2016-06-26 18:30:17.108186	\N
\.


--
-- Name: operations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('operations_id_seq', 6, true);


--
-- Data for Name: otps; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY otps (id, clave, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: otps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('otps_id_seq', 1, false);


--
-- Data for Name: phones; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY phones (id, number, type, created_at, updated_at, user_id) FROM stdin;
\.


--
-- Name: phones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('phones_id_seq', 1, false);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY products (id, nombre, vigencia, emision, tipo, saldo, created_at, updated_at, user_id) FROM stdin;
1	Tarjeta de Compras	2018-08-08	2015-05-05	Tarjeta de Débito MasterCard	700000	2016-06-26 18:28:48.114919	2016-06-26 18:28:48.114919	1
2	TArjeta de credito mercantil	2016-06-08	2016-03-30	TDC	10000	2016-06-26 19:06:49.465795	2016-06-26 19:06:49.465795	4
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('products_id_seq', 2, true);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY questions (id, question, created_at, updated_at) FROM stdin;
\.


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('questions_id_seq', 1, false);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY roles (id, nombre, descripcion, created_at, updated_at) FROM stdin;
1	The Role	The Magnific Role	2016-06-26 16:24:47.094898	2016-06-26 16:24:47.094898
2	Rol de transferencia	agrupa las operaciones de transferencia	2016-06-26 16:40:54.524893	2016-06-26 16:40:54.524893
3	Rol de Pago TDC	pagos sobre las tarjtas de credito	2016-06-26 16:41:35.624543	2016-06-26 16:41:35.624543
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('roles_id_seq', 3, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY schema_migrations (version) FROM stdin;
20160615010215
20160615184242
20160616214535
20160617011617
20160619025245
20160619200042
20160619225351
20160619225619
20160619225726
20160619233413
20160620221026
20160622231217
20160622231405
20160622232110
20160624014610
20160624181923
20160624192556
20160624192709
20160625043833
20160625154733
20160625154844
20160625164636
20160625175639
20160625203130
20160626152018
20160626160406
20160626160551
\.


--
-- Data for Name: user_opes; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY user_opes (id, user_id, operation_id, account_id, created_at, updated_at) FROM stdin;
1	4	3	\N	2016-06-26 16:43:58.009427	2016-06-26 16:43:58.009427
2	4	4	\N	2016-06-26 16:44:29.186055	2016-06-26 16:44:29.186055
3	4	\N	\N	2016-06-26 16:56:45.209212	2016-06-26 16:56:45.209212
4	4	5	\N	2016-06-26 16:57:41.529059	2016-06-26 16:57:41.529059
5	1	6	\N	2016-06-26 18:30:17.110164	2016-06-26 18:30:17.110164
\.


--
-- Name: user_opes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('user_opes_id_seq', 5, true);


--
-- Data for Name: user_ques; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY user_ques (id, answer, created_at, updated_at, user_id, question_id) FROM stdin;
\.


--
-- Name: user_ques_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('user_ques_id_seq', 1, false);


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY user_roles (id, user_id, role_id, created_at, updated_at, asignado) FROM stdin;
1	1	1	2016-06-26 16:24:47.10202	2016-06-26 16:24:47.10202	f
2	4	2	2016-06-26 16:40:54.527374	2016-06-26 16:40:54.527374	f
3	4	3	2016-06-26 16:41:35.626625	2016-06-26 16:41:35.626625	f
\.


--
-- Name: user_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('user_roles_id_seq', 3, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: abd
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, surname, type, counter, parent_id) FROM stdin;
1	iijbari@gmail.com	$2a$11$XZiSqZwLbZQMNiShDzIXE.lCC5ElpW11vZztP8XMWxXN7czZql16i	\N	\N	\N	2016-06-26 16:23:44.571217	2016-06-26 16:23:44.571217	Jesús	Di Bari	Principal	1	\N
2	jesus@admin.com	$2a$11$lI77gs6C6gWryYdoJ1zpqu51EBOZ4R/RS35e..Pd5huIBjJeGfXJm	\N	\N	\N	2016-06-26 16:23:44.736594	2016-06-26 16:23:44.736594	Jesús	Administrador	Administrador	2	1
3	jesus@secundario.com	$2a$11$LoojSs/Aj8HvxBFjGJxjreCJRenvO40b28r36X4gH52iu6VGzcq5K	\N	\N	\N	2016-06-26 16:23:44.896974	2016-06-26 16:23:44.896974	Jesús	Secundario	Secundario	3	1
4	pablo@hotmail.com	$2a$11$M/y/AyIKGYA8Sc5ObMxIBe2e6QNFV6GWzeqZupxEhCkVRoyrPWbLK	\N	\N	\N	2016-06-26 16:40:19.755853	2016-06-26 16:40:19.755853	elpablo	asdas	Principal	1	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abd
--

SELECT pg_catalog.setval('users_id_seq', 4, true);


--
-- Name: accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: card_coors_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY card_coors
    ADD CONSTRAINT card_coors_pkey PRIMARY KEY (id);


--
-- Name: cards_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);


--
-- Name: coordinates_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY coordinates
    ADD CONSTRAINT coordinates_pkey PRIMARY KEY (id);


--
-- Name: ope_pros_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY ope_pros
    ADD CONSTRAINT ope_pros_pkey PRIMARY KEY (id);


--
-- Name: ope_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY ope_roles
    ADD CONSTRAINT ope_roles_pkey PRIMARY KEY (id);


--
-- Name: operations_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY operations
    ADD CONSTRAINT operations_pkey PRIMARY KEY (id);


--
-- Name: otps_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY otps
    ADD CONSTRAINT otps_pkey PRIMARY KEY (id);


--
-- Name: phones_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY phones
    ADD CONSTRAINT phones_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: questions_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: user_opes_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY user_opes
    ADD CONSTRAINT user_opes_pkey PRIMARY KEY (id);


--
-- Name: user_ques_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY user_ques
    ADD CONSTRAINT user_ques_pkey PRIMARY KEY (id);


--
-- Name: user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_card_coors_on_card_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_card_coors_on_card_id ON card_coors USING btree (card_id);


--
-- Name: index_card_coors_on_coordinate_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_card_coors_on_coordinate_id ON card_coors USING btree (coordinate_id);


--
-- Name: index_cards_on_user_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_cards_on_user_id ON cards USING btree (user_id);


--
-- Name: index_ope_pros_on_operation_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_ope_pros_on_operation_id ON ope_pros USING btree (operation_id);


--
-- Name: index_ope_pros_on_product_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_ope_pros_on_product_id ON ope_pros USING btree (product_id);


--
-- Name: index_ope_roles_on_account_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_ope_roles_on_account_id ON ope_roles USING btree (account_id);


--
-- Name: index_ope_roles_on_operation_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_ope_roles_on_operation_id ON ope_roles USING btree (operation_id);


--
-- Name: index_ope_roles_on_role_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_ope_roles_on_role_id ON ope_roles USING btree (role_id);


--
-- Name: index_otps_on_user_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_otps_on_user_id ON otps USING btree (user_id);


--
-- Name: index_phones_on_user_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_phones_on_user_id ON phones USING btree (user_id);


--
-- Name: index_products_on_user_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_products_on_user_id ON products USING btree (user_id);


--
-- Name: index_user_opes_on_account_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_user_opes_on_account_id ON user_opes USING btree (account_id);


--
-- Name: index_user_opes_on_operation_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_user_opes_on_operation_id ON user_opes USING btree (operation_id);


--
-- Name: index_user_opes_on_user_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_user_opes_on_user_id ON user_opes USING btree (user_id);


--
-- Name: index_user_ques_on_question_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_user_ques_on_question_id ON user_ques USING btree (question_id);


--
-- Name: index_user_ques_on_user_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_user_ques_on_user_id ON user_ques USING btree (user_id);


--
-- Name: index_user_roles_on_role_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_user_roles_on_role_id ON user_roles USING btree (role_id);


--
-- Name: index_user_roles_on_user_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_user_roles_on_user_id ON user_roles USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_0a5dd57abe; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY card_coors
    ADD CONSTRAINT fk_rails_0a5dd57abe FOREIGN KEY (card_id) REFERENCES cards(id);


--
-- Name: fk_rails_18565c823d; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY otps
    ADD CONSTRAINT fk_rails_18565c823d FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_1ee6463543; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY user_opes
    ADD CONSTRAINT fk_rails_1ee6463543 FOREIGN KEY (account_id) REFERENCES accounts(id);


--
-- Name: fk_rails_318345354e; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY user_roles
    ADD CONSTRAINT fk_rails_318345354e FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_3369e0d5fc; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY user_roles
    ADD CONSTRAINT fk_rails_3369e0d5fc FOREIGN KEY (role_id) REFERENCES roles(id);


--
-- Name: fk_rails_5b867608cc; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_roles
    ADD CONSTRAINT fk_rails_5b867608cc FOREIGN KEY (operation_id) REFERENCES operations(id);


--
-- Name: fk_rails_5e14f3ec2d; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_roles
    ADD CONSTRAINT fk_rails_5e14f3ec2d FOREIGN KEY (role_id) REFERENCES roles(id);


--
-- Name: fk_rails_5ff2b2c0e0; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY card_coors
    ADD CONSTRAINT fk_rails_5ff2b2c0e0 FOREIGN KEY (coordinate_id) REFERENCES coordinates(id);


--
-- Name: fk_rails_8213e02875; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY user_ques
    ADD CONSTRAINT fk_rails_8213e02875 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_8b00cc4ef1; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY user_opes
    ADD CONSTRAINT fk_rails_8b00cc4ef1 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_8c348a6ff4; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY user_opes
    ADD CONSTRAINT fk_rails_8c348a6ff4 FOREIGN KEY (operation_id) REFERENCES operations(id);


--
-- Name: fk_rails_8ef7749967; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY cards
    ADD CONSTRAINT fk_rails_8ef7749967 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_a63a365e43; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY phones
    ADD CONSTRAINT fk_rails_a63a365e43 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_b0888a6d1b; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_roles
    ADD CONSTRAINT fk_rails_b0888a6d1b FOREIGN KEY (account_id) REFERENCES accounts(id);


--
-- Name: fk_rails_b0fea6c892; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_pros
    ADD CONSTRAINT fk_rails_b0fea6c892 FOREIGN KEY (operation_id) REFERENCES operations(id);


--
-- Name: fk_rails_bfd051c552; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_pros
    ADD CONSTRAINT fk_rails_bfd051c552 FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: fk_rails_d1ef0f748c; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY user_ques
    ADD CONSTRAINT fk_rails_d1ef0f748c FOREIGN KEY (question_id) REFERENCES questions(id);


--
-- Name: fk_rails_dee2631783; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY products
    ADD CONSTRAINT fk_rails_dee2631783 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

