--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Ubuntu 14.2-1.pgdg18.04+1)
-- Dumped by pg_dump version 14.2 (Ubuntu 14.2-1.pgdg18.04+1)

-- Started on 2022-05-07 18:12:49 +06

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

DROP DATABASE tsn_pg_demo;
--
-- TOC entry 3341 (class 1262 OID 17186)
-- Name: tsn_pg_demo; Type: DATABASE; Schema: -; Owner: tsn
--

CREATE DATABASE tsn_pg_demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru_RU.UTF-8';


ALTER DATABASE tsn_pg_demo OWNER TO tsn;

\connect tsn_pg_demo

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
-- TOC entry 3342 (class 0 OID 0)
-- Name: tsn_pg_demo; Type: DATABASE PROPERTIES; Schema: -; Owner: tsn
--

ALTER DATABASE tsn_pg_demo SET search_path TO 'tsn_pg_demo', 'public';


\connect tsn_pg_demo

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
-- TOC entry 4 (class 2615 OID 17187)
-- Name: tsn_demo; Type: SCHEMA; Schema: -; Owner: tsn
--

CREATE SCHEMA tsn_demo;


ALTER SCHEMA tsn_demo OWNER TO tsn;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 213 (class 1259 OID 17188)
-- Name: my_books; Type: TABLE; Schema: tsn_demo; Owner: tsn
--

CREATE TABLE tsn_demo.my_books (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    author character varying(50) NOT NULL
);


ALTER TABLE tsn_demo.my_books OWNER TO tsn;

--
-- TOC entry 215 (class 1259 OID 17192)
-- Name: person; Type: TABLE; Schema: tsn_demo; Owner: tsn
--

CREATE TABLE tsn_demo.person (
    id bigint NOT NULL,
    firstname character varying(45),
    lastname character varying(45),
    age bigint
);


ALTER TABLE tsn_demo.person OWNER TO tsn;

--
-- TOC entry 214 (class 1259 OID 17191)
-- Name: person_id_seq; Type: SEQUENCE; Schema: tsn_demo; Owner: tsn
--

CREATE SEQUENCE tsn_demo.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tsn_demo.person_id_seq OWNER TO tsn;

--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 214
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: tsn_demo; Owner: tsn
--

ALTER SEQUENCE tsn_demo.person_id_seq OWNED BY tsn_demo.person.id;


--
-- TOC entry 217 (class 1259 OID 17197)
-- Name: userrole; Type: TABLE; Schema: tsn_demo; Owner: tsn
--

CREATE TABLE tsn_demo.userrole (
    id bigint NOT NULL,
    name character varying(45),
    accesscodes character varying(45)
);


ALTER TABLE tsn_demo.userrole OWNER TO tsn;

--
-- TOC entry 216 (class 1259 OID 17196)
-- Name: userrole_id_seq; Type: SEQUENCE; Schema: tsn_demo; Owner: tsn
--

CREATE SEQUENCE tsn_demo.userrole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tsn_demo.userrole_id_seq OWNER TO tsn;

--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 216
-- Name: userrole_id_seq; Type: SEQUENCE OWNED BY; Schema: tsn_demo; Owner: tsn
--

ALTER SEQUENCE tsn_demo.userrole_id_seq OWNED BY tsn_demo.userrole.id;


--
-- TOC entry 219 (class 1259 OID 17202)
-- Name: users; Type: TABLE; Schema: tsn_demo; Owner: tsn
--

CREATE TABLE tsn_demo.users (
    id bigint NOT NULL,
    userroleid bigint DEFAULT '0'::bigint,
    login character varying(45),
    password character varying(45),
    description character varying(45),
    note character varying(45),
    availabledepartments character varying(45)
);


ALTER TABLE tsn_demo.users OWNER TO tsn;

--
-- TOC entry 218 (class 1259 OID 17201)
-- Name: users_id_seq; Type: SEQUENCE; Schema: tsn_demo; Owner: tsn
--

CREATE SEQUENCE tsn_demo.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tsn_demo.users_id_seq OWNER TO tsn;

--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 218
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: tsn_demo; Owner: tsn
--

ALTER SEQUENCE tsn_demo.users_id_seq OWNED BY tsn_demo.users.id;


--
-- TOC entry 3176 (class 2604 OID 17195)
-- Name: person id; Type: DEFAULT; Schema: tsn_demo; Owner: tsn
--

ALTER TABLE ONLY tsn_demo.person ALTER COLUMN id SET DEFAULT nextval('tsn_demo.person_id_seq'::regclass);


--
-- TOC entry 3177 (class 2604 OID 17200)
-- Name: userrole id; Type: DEFAULT; Schema: tsn_demo; Owner: tsn
--

ALTER TABLE ONLY tsn_demo.userrole ALTER COLUMN id SET DEFAULT nextval('tsn_demo.userrole_id_seq'::regclass);


--
-- TOC entry 3178 (class 2604 OID 17205)
-- Name: users id; Type: DEFAULT; Schema: tsn_demo; Owner: tsn
--

ALTER TABLE ONLY tsn_demo.users ALTER COLUMN id SET DEFAULT nextval('tsn_demo.users_id_seq'::regclass);


--
-- TOC entry 3329 (class 0 OID 17188)
-- Dependencies: 213
-- Data for Name: my_books; Type: TABLE DATA; Schema: tsn_demo; Owner: tsn
--

INSERT INTO tsn_demo.my_books (id, name, author) VALUES (1, 'Effective Java', 'Joshua Bloch');
INSERT INTO tsn_demo.my_books (id, name, author) VALUES (2, 'Java Concurrency in Practice', 'Brian Goetz');
INSERT INTO tsn_demo.my_books (id, name, author) VALUES (3, 'Современное визуальное программирование', 'Талипов С.Н.');


--
-- TOC entry 3331 (class 0 OID 17192)
-- Dependencies: 215
-- Data for Name: person; Type: TABLE DATA; Schema: tsn_demo; Owner: tsn
--

INSERT INTO tsn_demo.person (id, firstname, lastname, age) VALUES (120, 'Sergey', 'Talipov', 39);
INSERT INTO tsn_demo.person (id, firstname, lastname, age) VALUES (123, 'Lars', 'Vogel', 18);
INSERT INTO tsn_demo.person (id, firstname, lastname, age) VALUES (124, 'Jim', 'Talipov', 25);
INSERT INTO tsn_demo.person (id, firstname, lastname, age) VALUES (125, 'Lars', 'Man', 33);
INSERT INTO tsn_demo.person (id, firstname, lastname, age) VALUES (126, 'Spider', 'Man', 44);


--
-- TOC entry 3333 (class 0 OID 17197)
-- Dependencies: 217
-- Data for Name: userrole; Type: TABLE DATA; Schema: tsn_demo; Owner: tsn
--

INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (28, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (29, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (30, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (31, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (32, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (33, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (34, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (35, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (36, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (37, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (38, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (39, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (40, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (41, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (42, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (43, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (44, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (45, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (46, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (47, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (48, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (49, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (50, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (51, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (52, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (53, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (54, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (55, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (56, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (57, 'hibernate2', '7,7,7');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (58, 'R114', '1,2,5');
INSERT INTO tsn_demo.userrole (id, name, accesscodes) VALUES (59, 'hibernate2', '7,7,7');


--
-- TOC entry 3335 (class 0 OID 17202)
-- Dependencies: 219
-- Data for Name: users; Type: TABLE DATA; Schema: tsn_demo; Owner: tsn
--

INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (14, 29, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (15, 31, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (16, 33, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (17, 35, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (18, 37, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (19, 39, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (20, 41, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (21, 43, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (22, 45, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (23, 47, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (24, 49, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (25, 51, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (26, 53, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (27, 55, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (28, 57, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');
INSERT INTO tsn_demo.users (id, userroleid, login, password, description, note, availabledepartments) VALUES (29, 59, 'Test12', '1234', 'Test12', NULL, '1,2,3,4');


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 214
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: tsn_demo; Owner: tsn
--

SELECT pg_catalog.setval('tsn_demo.person_id_seq', 126, true);


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 216
-- Name: userrole_id_seq; Type: SEQUENCE SET; Schema: tsn_demo; Owner: tsn
--

SELECT pg_catalog.setval('tsn_demo.userrole_id_seq', 59, true);


--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 218
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: tsn_demo; Owner: tsn
--

SELECT pg_catalog.setval('tsn_demo.users_id_seq', 29, true);


--
-- TOC entry 3181 (class 2606 OID 17217)
-- Name: my_books idx_17188_primary; Type: CONSTRAINT; Schema: tsn_demo; Owner: tsn
--

ALTER TABLE ONLY tsn_demo.my_books
    ADD CONSTRAINT idx_17188_primary PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 17220)
-- Name: person idx_17192_primary; Type: CONSTRAINT; Schema: tsn_demo; Owner: tsn
--

ALTER TABLE ONLY tsn_demo.person
    ADD CONSTRAINT idx_17192_primary PRIMARY KEY (id);


--
-- TOC entry 3185 (class 2606 OID 17218)
-- Name: userrole idx_17197_primary; Type: CONSTRAINT; Schema: tsn_demo; Owner: tsn
--

ALTER TABLE ONLY tsn_demo.userrole
    ADD CONSTRAINT idx_17197_primary PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 17219)
-- Name: users idx_17202_primary; Type: CONSTRAINT; Schema: tsn_demo; Owner: tsn
--

ALTER TABLE ONLY tsn_demo.users
    ADD CONSTRAINT idx_17202_primary PRIMARY KEY (id);


--
-- TOC entry 3186 (class 1259 OID 17209)
-- Name: idx_17202_fk_5u2kg39886myytwutp0dnxa6d; Type: INDEX; Schema: tsn_demo; Owner: tsn
--

CREATE INDEX idx_17202_fk_5u2kg39886myytwutp0dnxa6d ON tsn_demo.users USING btree (userroleid);


--
-- TOC entry 3189 (class 2606 OID 17221)
-- Name: users fka5jrbsbaxr0f0l4f8r4yl5ir9; Type: FK CONSTRAINT; Schema: tsn_demo; Owner: tsn
--

ALTER TABLE ONLY tsn_demo.users
    ADD CONSTRAINT fka5jrbsbaxr0f0l4f8r4yl5ir9 FOREIGN KEY (userroleid) REFERENCES tsn_demo.userrole(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


-- Completed on 2022-05-07 18:12:49 +06

--
-- PostgreSQL database dump complete
--

