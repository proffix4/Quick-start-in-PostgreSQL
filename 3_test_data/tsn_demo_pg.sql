-- DROP DATABASE tsn_pg_demo;
-- CREATE DATABASE tsn_pg_demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru_RU.UTF-8';

CREATE SCHEMA IF NOT EXISTS ts_disks_lite;

CREATE TABLE ts_disks_lite.disk_1 (
    id bigint NOT NULL,
    name_disk character varying(80),
    price_sel numeric(8,2) DEFAULT 0.00,
    id_type_disk bigint
);

CREATE TABLE ts_disks_lite.product_type_count (
    type character varying(40),
    count bigint
);


CREATE TABLE ts_disks_lite.tdisk_4 (
    id bigint NOT NULL,
    name_type_disk character varying(40)
);

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

INSERT INTO ts_disks_lite.product_type_count (type, count) VALUES ('МУЗЫКА', 1);
INSERT INTO ts_disks_lite.product_type_count (type, count) VALUES ('ОБУЧАЮЩИЕ ПРОГРАММЫ', 1);
INSERT INTO ts_disks_lite.product_type_count (type, count) VALUES ('ПРИКЛАДНОЕ И СИСТЕМНОЕ ПО', 2);
INSERT INTO ts_disks_lite.product_type_count (type, count) VALUES ('СИСТЕМНЫЙ ДИСК', 3);
INSERT INTO ts_disks_lite.product_type_count (type, count) VALUES ('ФИЛЬМЫ', 2);

INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (1, 'СИСТЕМНЫЙ ДИСК');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (2, 'ПРИКЛАДНОЕ И СИСТЕМНОЕ ПО');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (3, 'МУЗЫКА');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (4, 'ОБУЧАЮЩИЕ ПРОГРАММЫ');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (5, 'ФИЛЬМЫ');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (6, 'ДРАЙВЕРЫ');
INSERT INTO ts_disks_lite.tdisk_4 (id, name_type_disk) VALUES (7, 'ДОКУМЕНТАЦИЯ');

CREATE SCHEMA IF NOT EXISTS tsn_demo;

CREATE TABLE tsn_demo.my_books (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    author character varying(50) NOT NULL
);

CREATE TABLE tsn_demo.person (
    id bigint NOT NULL,
    firstname character varying(45),
    lastname character varying(45),
    age bigint
);

CREATE TABLE tsn_demo.userrole (
    id bigint NOT NULL,
    name character varying(45),
    accesscodes character varying(45)
);

CREATE TABLE tsn_demo.users (
    id bigint NOT NULL,
    userroleid bigint DEFAULT '0'::bigint,
    login character varying(45),
    password character varying(45),
    description character varying(45),
    note character varying(45),
    availabledepartments character varying(45)
);

INSERT INTO tsn_demo.my_books (id, name, author) VALUES (1, 'Effective Java', 'Joshua Bloch');
INSERT INTO tsn_demo.my_books (id, name, author) VALUES (2, 'Java Concurrency in Practice', 'Brian Goetz');
INSERT INTO tsn_demo.my_books (id, name, author) VALUES (3, 'Современное визуальное программирование', 'Талипов С.Н.');

INSERT INTO tsn_demo.person (id, firstname, lastname, age) VALUES (120, 'Sergey', 'Talipov', 39);
INSERT INTO tsn_demo.person (id, firstname, lastname, age) VALUES (123, 'Lars', 'Vogel', 18);
INSERT INTO tsn_demo.person (id, firstname, lastname, age) VALUES (124, 'Jim', 'Talipov', 25);
INSERT INTO tsn_demo.person (id, firstname, lastname, age) VALUES (125, 'Lars', 'Man', 33);
INSERT INTO tsn_demo.person (id, firstname, lastname, age) VALUES (126, 'Spider', 'Man', 44);

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
