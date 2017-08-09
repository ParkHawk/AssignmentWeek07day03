--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: todos; Type: SCHEMA; Schema: -; Owner: parker
--

CREATE SCHEMA todos;


ALTER SCHEMA todos OWNER TO parker;

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
-- Name: todos; Type: TABLE; Schema: public; Owner: parker
--

CREATE TABLE todos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    details character varying(3000),
    priority integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    completed_at timestamp without time zone
);


ALTER TABLE todos OWNER TO parker;

--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: public; Owner: parker
--

CREATE SEQUENCE todos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE todos_id_seq OWNER TO parker;

--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: parker
--

ALTER SEQUENCE todos_id_seq OWNED BY todos.id;


SET search_path = todos, pg_catalog;

--
-- Name: todos; Type: TABLE; Schema: todos; Owner: parker
--

CREATE TABLE todos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    details character varying(3000),
    priority integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    completed_at timestamp without time zone
);


ALTER TABLE todos OWNER TO parker;

--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: todos; Owner: parker
--

CREATE SEQUENCE todos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE todos_id_seq OWNER TO parker;

--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: todos; Owner: parker
--

ALTER SEQUENCE todos_id_seq OWNED BY todos.id;


SET search_path = public, pg_catalog;

--
-- Name: todos id; Type: DEFAULT; Schema: public; Owner: parker
--

ALTER TABLE ONLY todos ALTER COLUMN id SET DEFAULT nextval('todos_id_seq'::regclass);


SET search_path = todos, pg_catalog;

--
-- Name: todos id; Type: DEFAULT; Schema: todos; Owner: parker
--

ALTER TABLE ONLY todos ALTER COLUMN id SET DEFAULT nextval('todos_id_seq'::regclass);


SET search_path = public, pg_catalog;

--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: parker
--

COPY todos (id, title, details, priority, created_at, completed_at) FROM stdin;
2	Homework2	DO IT	2	2017-08-09 17:59:17.472508	\N
4	Play Games	All Night	2	2017-08-09 17:59:59.600232	\N
5	Sleep	Whenever	2	2017-08-09 18:00:11.926115	\N
\.


--
-- Name: todos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: parker
--

SELECT pg_catalog.setval('todos_id_seq', 5, true);


SET search_path = todos, pg_catalog;

--
-- Data for Name: todos; Type: TABLE DATA; Schema: todos; Owner: parker
--

COPY todos (id, title, details, priority, created_at, completed_at) FROM stdin;
\.


--
-- Name: todos_id_seq; Type: SEQUENCE SET; Schema: todos; Owner: parker
--

SELECT pg_catalog.setval('todos_id_seq', 1, false);


SET search_path = public, pg_catalog;

--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: parker
--

ALTER TABLE ONLY todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);


SET search_path = todos, pg_catalog;

--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: todos; Owner: parker
--

ALTER TABLE ONLY todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

