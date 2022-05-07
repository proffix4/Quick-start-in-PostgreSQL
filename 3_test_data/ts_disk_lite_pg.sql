--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Ubuntu 14.2-1.pgdg18.04+1)
-- Dumped by pg_dump version 14.2 (Ubuntu 14.2-1.pgdg18.04+1)

-- Started on 2022-05-07 18:12:17 +06

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
-- TOC entry 3331 (class 1262 OID 17186)
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
-- TOC entry 3332 (class 0 OID 0)
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
-- TOC entry 9 (class 2615 OID 17226)
-- Name: ts_disks_lite; Type: SCHEMA; Schema: -; Owner: tsn
--

CREATE SCHEMA ts_disks_lite;


ALTER SCHEMA ts_disks_lite OWNER TO tsn;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 17228)
-- Name: disk_1; Type: TABLE; Schema: ts_disks_lite; Owner: tsn
--

CREATE TABLE ts_disks_lite.disk_1 (
    id bigint NOT NULL,
    name_disk character varying(80),
    price_sel numeric(8,2) DEFAULT 0.00,
    id_type_disk bigint
);


ALTER TABLE ts_disks_lite.disk_1 OWNER TO tsn;

--
-- TOC entry 220 (class 1259 OID 17227)
-- Name: disk_1_id_seq; Type: SEQUENCE; Schema: ts_disks_lite; Owner: tsn
--

CREATE SEQUENCE ts_disks_lite.disk_1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ts_disks_lite.disk_1_id_seq OWNER TO tsn;

--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 220
-- Name: disk_1_id_seq; Type: SEQUENCE OWNED BY; Schema: ts_disks_lite; Owner: tsn
--

ALTER SEQUENCE ts_disks_lite.disk_1_id_seq OWNED BY ts_disks_lite.disk_1.id;


--
-- TOC entry 222 (class 1259 OID 17233)
-- Name: product_type_count; Type: TABLE; Schema: ts_disks_lite; Owner: tsn
--

CREATE TABLE ts_disks_lite.product_type_count (
    type character varying(40),
    count bigint
);


ALTER TABLE ts_disks_lite.product_type_count OWNER TO tsn;

--
-- TOC entry 224 (class 1259 OID 17237)
-- Name: tdisk_4; Type: TABLE; Schema: ts_disks_lite; Owner: tsn
--

CREATE TABLE ts_disks_lite.tdisk_4 (
    id bigint NOT NULL,
    name_type_disk character varying(40)
);


ALTER TABLE ts_disks_lite.tdisk_4 OWNER TO tsn;

--
-- TOC entry 223 (class 1259 OID 17236)
-- Name: tdisk_4_id_seq; Type: SEQUENCE; Schema: ts_disks_lite; Owner: tsn
--

CREATE SEQUENCE ts_disks_lite.tdisk_4_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ts_disks_lite.tdisk_4_id_seq OWNER TO tsn;

--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 223
-- Name: tdisk_4_id_seq; Type: SEQUENCE OWNED BY; Schema: ts_disks_lite; Owner: tsn
--

ALTER SEQUENCE ts_disks_lite.tdisk_4_id_seq OWNED BY ts_disks_lite.tdisk_4.id;


--
-- TOC entry 3175 (class 2604 OID 17231)
-- Name: disk_1 id; Type: DEFAULT; Schema: ts_disks_lite; Owner: tsn
--

ALTER TABLE ONLY ts_disks_lite.disk_1 ALTER COLUMN id SET DEFAULT nextval('ts_disks_lite.disk_1_id_seq'::regclass);


--
-- TOC entry 3177 (class 2604 OID 17240)
-- Name: tdisk_4 id; Type: DEFAULT; Schema: ts_disks_lite; Owner: tsn
--

ALTER TABLE ONLY ts_disks_lite.tdisk_4 ALTER COLUMN id SET DEFAULT nextval('ts_disks_lite.tdisk_4_id_seq'::regclass);


--
-- TOC entry 3322 (class 0 OID 17228)
-- Dependencies: 221
-- Data for Name: disk_1; Type: TABLE DATA; Schema: ts_disks_lite; Owner: tsn
--

INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (1, 'ОФИС 2019', 500.00, 2);
INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (2, 'СУПЕРСИСТЕМНЫЙ ДИСК', 600.00, 1);
INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (3, 'ENGLISH PLATINUM 2019', 1200.00, 4);
INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (4, 'ALL STARS DISCO 2019', 450.00, 3);
INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (5, 'ЗОЛОТАЯ БУХГАЛТЕРИЯ', 1240.00, 2);
INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (6, 'ЗВЁЗДНЫЕ ВОЙНЫ', 1300.00, 5);
INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (7, 'МАДАГАСКАР', 1200.00, 5);
INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (8, 'WINDOWS 10', 15000.00, 1);
INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (9, 'LINUX MINT', 150.00, 1);
INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (10, 'LINUX UBUNTU', 200.00, NULL);
INSERT INTO ts_disks_lite.disk_1 (id, name_disk, price_sel, id_type_disk) VALUES (22, 'Debian', 111.00, 1);


--
-- TOC entry 3323 (class 0 OID 17233)
-- Dependencies: 222
-- Data for Name: product_type_count; Type: TABLE DATA; Schema: ts_disks_lite; Owner: tsn
--

INSERT INTO ts_disks_lite.product_type_count (type, count) VALUES ('МУЗЫКА', 1);
INSERT INTO ts_disks_lite.product_type_count (type, count) VALUES ('ОБУЧАЮЩИЕ ПРОГРАММЫ', 1);
INSERT INTO ts_disks_lite.product_type_count (type, count) VALUES ('ПРИКЛАДНОЕ И СИСТЕМНОЕ ПО', 2);
INSERT INTO ts_disks_lite.product_type_count (type, count) VALUES ('СИСТЕМНЫЙ ДИСК', 3);
INSERT INTO ts_disks_lite.product_type_count (type, count) VALUES ('ФИЛЬМЫ', 2);


--
-- TOC entry 3325 (class 0 OID 17237)
-- Dependencies: 224
-- Data for Name: tdisk_4; Type: TABLE DATA; Schema: ts_disks_lite; Owner: tsn
--

INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (1, 'СИСТЕМНЫЙ ДИСК');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (2, 'ПРИКЛАДНОЕ И СИСТЕМНОЕ ПО');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (3, 'МУЗЫКА');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (4, 'ОБУЧАЮЩИЕ ПРОГРАММЫ');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (5, 'ФИЛЬМЫ');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (6, 'ДРАЙВЕРЫ');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (7, 'ДОКУМЕНТАЦИЯ');


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 220
-- Name: disk_1_id_seq; Type: SEQUENCE SET; Schema: ts_disks_lite; Owner: tsn
--

SELECT pg_catalog.setval('ts_disks_lite.disk_1_id_seq', 22, true);


--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 223
-- Name: tdisk_4_id_seq; Type: SEQUENCE SET; Schema: ts_disks_lite; Owner: tsn
--

SELECT pg_catalog.setval('ts_disks_lite.tdisk_4_id_seq', 7, true);


--
-- TOC entry 3179 (class 2606 OID 17246)
-- Name: disk_1 idx_17228_primary; Type: CONSTRAINT; Schema: ts_disks_lite; Owner: tsn
--

ALTER TABLE ONLY ts_disks_lite.disk_1
    ADD CONSTRAINT idx_17228_primary PRIMARY KEY (id);


--
-- TOC entry 3181 (class 2606 OID 17247)
-- Name: tdisk_4 idx_17237_primary; Type: CONSTRAINT; Schema: ts_disks_lite; Owner: tsn
--

ALTER TABLE ONLY ts_disks_lite.tdisk_4
    ADD CONSTRAINT idx_17237_primary PRIMARY KEY (id);


-- Completed on 2022-05-07 18:12:17 +06

--
-- PostgreSQL database dump complete
--

