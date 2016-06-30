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
-- Name: approval_levels; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE approval_levels (
    id integer NOT NULL,
    nombre character varying,
    descripcion character varying,
    paralelo boolean,
    aprobado boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.approval_levels OWNER TO abd;

--
-- Name: approval_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE approval_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.approval_levels_id_seq OWNER TO abd;

--
-- Name: approval_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE approval_levels_id_seq OWNED BY approval_levels.id;


--
-- Name: audits; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE audits (
    id integer NOT NULL,
    concepto character varying,
    monto numeric,
    email character varying,
    fecha date,
    hora time without time zone,
    user_id integer,
    operation_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    approved boolean
);


ALTER TABLE public.audits OWNER TO abd;

--
-- Name: audits_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audits_id_seq OWNER TO abd;

--
-- Name: audits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE audits_id_seq OWNED BY audits.id;


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
-- Name: ope_levels; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE ope_levels (
    id integer NOT NULL,
    rango_min integer,
    rango_max integer,
    operation_id integer,
    approval_level_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ope_levels OWNER TO abd;

--
-- Name: ope_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE ope_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ope_levels_id_seq OWNER TO abd;

--
-- Name: ope_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE ope_levels_id_seq OWNED BY ope_levels.id;


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
-- Name: ope_sers; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE ope_sers (
    id integer NOT NULL,
    operation_id integer,
    service_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ope_sers OWNER TO abd;

--
-- Name: ope_sers_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE ope_sers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ope_sers_id_seq OWNER TO abd;

--
-- Name: ope_sers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE ope_sers_id_seq OWNED BY ope_sers.id;


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
    saldo numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer,
    number character varying
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
-- Name: services; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE services (
    id integer NOT NULL,
    acronimo character varying,
    nombre character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.services OWNER TO abd;

--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_id_seq OWNER TO abd;

--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE services_id_seq OWNED BY services.id;


--
-- Name: signers; Type: TABLE; Schema: public; Owner: abd; Tablespace: 
--

CREATE TABLE signers (
    id integer NOT NULL,
    tipo_firma character varying,
    approval_level_id integer,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.signers OWNER TO abd;

--
-- Name: signers_id_seq; Type: SEQUENCE; Schema: public; Owner: abd
--

CREATE SEQUENCE signers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.signers_id_seq OWNER TO abd;

--
-- Name: signers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abd
--

ALTER SEQUENCE signers_id_seq OWNED BY signers.id;


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
    counter integer,
    parent_id integer,
    signatory boolean,
    name character varying,
    surname character varying,
    birth date,
    male boolean
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

ALTER TABLE ONLY approval_levels ALTER COLUMN id SET DEFAULT nextval('approval_levels_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY audits ALTER COLUMN id SET DEFAULT nextval('audits_id_seq'::regclass);


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

ALTER TABLE ONLY ope_levels ALTER COLUMN id SET DEFAULT nextval('ope_levels_id_seq'::regclass);


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

ALTER TABLE ONLY ope_sers ALTER COLUMN id SET DEFAULT nextval('ope_sers_id_seq'::regclass);


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

ALTER TABLE ONLY services ALTER COLUMN id SET DEFAULT nextval('services_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abd
--

ALTER TABLE ONLY signers ALTER COLUMN id SET DEFAULT nextval('signers_id_seq'::regclass);


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
-- Name: accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: approval_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY approval_levels
    ADD CONSTRAINT approval_levels_pkey PRIMARY KEY (id);


--
-- Name: audits_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY audits
    ADD CONSTRAINT audits_pkey PRIMARY KEY (id);


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
-- Name: ope_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY ope_levels
    ADD CONSTRAINT ope_levels_pkey PRIMARY KEY (id);


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
-- Name: ope_sers_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY ope_sers
    ADD CONSTRAINT ope_sers_pkey PRIMARY KEY (id);


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
-- Name: services_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: signers_pkey; Type: CONSTRAINT; Schema: public; Owner: abd; Tablespace: 
--

ALTER TABLE ONLY signers
    ADD CONSTRAINT signers_pkey PRIMARY KEY (id);


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
-- Name: index_audits_on_operation_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_audits_on_operation_id ON audits USING btree (operation_id);


--
-- Name: index_audits_on_user_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_audits_on_user_id ON audits USING btree (user_id);


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
-- Name: index_ope_levels_on_approval_level_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_ope_levels_on_approval_level_id ON ope_levels USING btree (approval_level_id);


--
-- Name: index_ope_levels_on_operation_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_ope_levels_on_operation_id ON ope_levels USING btree (operation_id);


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
-- Name: index_ope_sers_on_operation_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_ope_sers_on_operation_id ON ope_sers USING btree (operation_id);


--
-- Name: index_ope_sers_on_service_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_ope_sers_on_service_id ON ope_sers USING btree (service_id);


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
-- Name: index_signers_on_approval_level_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_signers_on_approval_level_id ON signers USING btree (approval_level_id);


--
-- Name: index_signers_on_user_id; Type: INDEX; Schema: public; Owner: abd; Tablespace: 
--

CREATE INDEX index_signers_on_user_id ON signers USING btree (user_id);


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
-- Name: fk_rails_2d7d0b6ef5; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_sers
    ADD CONSTRAINT fk_rails_2d7d0b6ef5 FOREIGN KEY (service_id) REFERENCES services(id);


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
-- Name: fk_rails_6759f29093; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_sers
    ADD CONSTRAINT fk_rails_6759f29093 FOREIGN KEY (operation_id) REFERENCES operations(id);


--
-- Name: fk_rails_81a9816943; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_levels
    ADD CONSTRAINT fk_rails_81a9816943 FOREIGN KEY (approval_level_id) REFERENCES approval_levels(id);


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
-- Name: fk_rails_a70814acb2; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY signers
    ADD CONSTRAINT fk_rails_a70814acb2 FOREIGN KEY (user_id) REFERENCES users(id);


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
-- Name: fk_rails_c373a08426; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY audits
    ADD CONSTRAINT fk_rails_c373a08426 FOREIGN KEY (operation_id) REFERENCES operations(id);


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
-- Name: fk_rails_e6d7b3fb68; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY audits
    ADD CONSTRAINT fk_rails_e6d7b3fb68 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_f64b104e7e; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY signers
    ADD CONSTRAINT fk_rails_f64b104e7e FOREIGN KEY (approval_level_id) REFERENCES approval_levels(id);


--
-- Name: fk_rails_fa4c3896d2; Type: FK CONSTRAINT; Schema: public; Owner: abd
--

ALTER TABLE ONLY ope_levels
    ADD CONSTRAINT fk_rails_fa4c3896d2 FOREIGN KEY (operation_id) REFERENCES operations(id);


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

