--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    book_id integer NOT NULL,
    title character varying(250),
    slug character varying(250),
    description character varying(250),
    price double precision,
    cover_path character varying(250),
    file_path character varying(250),
    created_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.book OWNER TO postgres;

--
-- Name: sales_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_item (
    id_sales_item integer NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava integer
);


ALTER TABLE public.sales_item OWNER TO postgres;

--
-- Name: sales_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_order (
    order_id integer NOT NULL,
    customer_id integer,
    total double precision,
    payment_status character varying(250),
    created_at timestamp without time zone
);


ALTER TABLE public.sales_order OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    customer_id integer NOT NULL,
    firstname character varying(45),
    lastname character varying(45),
    fullname character varying(100),
    email character varying(45),
    password character varying(250),
    role character varying(50),
    created_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book (book_id, title, slug, description, price, cover_path, file_path, created_at, update_at) FROM stdin;
1	el enano	slug	descripcion	1.6	URL	archivo	2020-01-25 16:00:00	2019-12-14 12:00:00
2	el loro	slug	descripcion	2.2	URL	archivo	2021-02-14 09:00:00	2020-06-10 14:00:00
3	el wicho	slug	descripcion	3.2	URL	archivo	2020-02-01 13:00:00	2020-03-13 19:00:00
4	la reyna	slug	descripcion	1.1	URL	archivo	2021-10-10 07:00:00	2022-01-30 15:00:00
5	leroy	slug	descripcion	5.1	URL	archivo	2019-11-28 14:00:00	2022-04-06 17:00:00
\.


--
-- Data for Name: sales_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_item (id_sales_item, book_id, order_id, price, downs_ava) FROM stdin;
1000	1	100	1.2	12
1001	2	101	3.2	13
1002	3	102	3.3	9
1003	4	103	2.3	4
1004	5	104	5.2	13
\.


--
-- Data for Name: sales_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_order (order_id, customer_id, total, payment_status, created_at) FROM stdin;
101	11	1.3	bien	2020-04-13 12:00:00
102	12	1.2	bien	2021-04-01 18:00:00
103	13	4.3	bien	2019-04-22 11:00:00
104	14	4.1	bien	2022-04-22 07:00:00
100	10	3.2	bien	2023-03-10 09:00:00
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (customer_id, firstname, lastname, fullname, email, password, role, created_at, update_at) FROM stdin;
10	juan	reyes	juan reyes	juan1@gmail.com	1234	ejecutivo	2020-02-10 12:00:00	2021-10-10 15:00:00
11	jaimar	cardenas	jaimar cardenas	jai12@gmail.com	0000	directivo	2020-02-10 12:00:00	2021-01-02 13:00:00
12	sebastian	suarez	sebastian suarez	sebas@gmail.com	0909	apoyo	2022-02-02 15:00:00	2019-08-17 12:00:00
13	camila	rolon	camila rolon	cami87@gmail.com	directivo	1747	2020-11-11 10:00:00	2021-12-02 17:00:00
14	brayan	leon	brayan leon	leon@gmail.com	2004	ejecutico	2020-05-13 12:00:00	2021-08-19 17:00:00
\.


--
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);


--
-- Name: sales_item sales_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id_sales_item);


--
-- Name: sales_order sales_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (order_id);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (customer_id);


--
-- Name: sales_item fk_sales_item_book; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_sales_item_book FOREIGN KEY (book_id) REFERENCES public.book(book_id);


--
-- Name: sales_item fk_sales_item_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_sales_item_order FOREIGN KEY (order_id) REFERENCES public.sales_order(order_id);


--
-- Name: sales_order fk_sales_order_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_sales_order_usuario FOREIGN KEY (customer_id) REFERENCES public.usuario(customer_id);


--
-- PostgreSQL database dump complete
--

