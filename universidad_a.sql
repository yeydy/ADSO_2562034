--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: alumno_se_matricula_asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumno_se_matricula_asignatura (
    id_alumno integer NOT NULL,
    id_asignatura integer NOT NULL,
    id_curso_escolar integer NOT NULL
);


ALTER TABLE public.alumno_se_matricula_asignatura OWNER TO postgres;

--
-- Name: asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asignatura (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    creditos double precision NOT NULL,
    tipo character varying(15) NOT NULL,
    curso smallint NOT NULL,
    cuatrimestre smallint NOT NULL,
    id_profesor integer,
    id_grado integer NOT NULL,
    CONSTRAINT asignatura_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['b sica'::character varying, 'obligatoria'::character varying, 'optativa'::character varying])::text[])))
);


ALTER TABLE public.asignatura OWNER TO postgres;

--
-- Name: asignatura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asignatura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignatura_id_seq OWNER TO postgres;

--
-- Name: asignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asignatura_id_seq OWNED BY public.asignatura.id;


--
-- Name: curso_escolar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curso_escolar (
    id integer NOT NULL,
    year_inicio date NOT NULL,
    year_fin date NOT NULL
);


ALTER TABLE public.curso_escolar OWNER TO postgres;

--
-- Name: curso_escolar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.curso_escolar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.curso_escolar_id_seq OWNER TO postgres;

--
-- Name: curso_escolar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.curso_escolar_id_seq OWNED BY public.curso_escolar.id;


--
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamento (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.departamento OWNER TO postgres;

--
-- Name: departamento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departamento_id_seq OWNER TO postgres;

--
-- Name: departamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departamento_id_seq OWNED BY public.departamento.id;


--
-- Name: grado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grado (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.grado OWNER TO postgres;

--
-- Name: grado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grado_id_seq OWNER TO postgres;

--
-- Name: grado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grado_id_seq OWNED BY public.grado.id;


--
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    id integer NOT NULL,
    nif character varying(9),
    nombre character varying(25) NOT NULL,
    apellido1 character varying(50) NOT NULL,
    apellido2 character varying(50),
    ciudad character varying(25) NOT NULL,
    direccion character varying(50) NOT NULL,
    telefono character varying(9),
    fecha_nacimiento date NOT NULL,
    sexo character(1) NOT NULL,
    tipo character(15) NOT NULL,
    CONSTRAINT persona_sexo_check CHECK ((sexo = ANY (ARRAY['H'::bpchar, 'M'::bpchar]))),
    CONSTRAINT persona_tipo_check CHECK ((tipo = ANY (ARRAY['profesor'::bpchar, 'alumno'::bpchar])))
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- Name: persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persona_id_seq OWNER TO postgres;

--
-- Name: persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;


--
-- Name: profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesor (
    id_profesor integer NOT NULL,
    id_departamento integer NOT NULL
);


ALTER TABLE public.profesor OWNER TO postgres;

--
-- Name: profesor_id_departamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profesor_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profesor_id_departamento_seq OWNER TO postgres;

--
-- Name: profesor_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profesor_id_departamento_seq OWNED BY public.profesor.id_departamento;


--
-- Name: profesor_id_profesor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profesor_id_profesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profesor_id_profesor_seq OWNER TO postgres;

--
-- Name: profesor_id_profesor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profesor_id_profesor_seq OWNED BY public.profesor.id_profesor;


--
-- Name: asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura ALTER COLUMN id SET DEFAULT nextval('public.asignatura_id_seq'::regclass);


--
-- Name: curso_escolar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_escolar ALTER COLUMN id SET DEFAULT nextval('public.curso_escolar_id_seq'::regclass);


--
-- Name: departamento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento ALTER COLUMN id SET DEFAULT nextval('public.departamento_id_seq'::regclass);


--
-- Name: grado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado ALTER COLUMN id SET DEFAULT nextval('public.grado_id_seq'::regclass);


--
-- Name: persona id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);


--
-- Name: profesor id_profesor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor ALTER COLUMN id_profesor SET DEFAULT nextval('public.profesor_id_profesor_seq'::regclass);


--
-- Name: profesor id_departamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor ALTER COLUMN id_departamento SET DEFAULT nextval('public.profesor_id_departamento_seq'::regclass);


--
-- Data for Name: alumno_se_matricula_asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) FROM stdin;
1	1	1
1	2	1
1	3	1
2	1	1
2	2	1
2	3	1
4	1	1
4	2	1
4	3	1
24	1	5
24	2	5
24	3	5
24	4	5
24	5	5
24	6	5
24	7	5
24	8	5
24	9	5
24	10	5
23	1	5
23	2	5
23	3	5
23	4	5
23	5	5
23	6	5
23	7	5
23	8	5
23	9	5
23	10	5
19	1	5
19	2	5
19	3	5
19	4	5
19	5	5
19	6	5
19	7	5
19	8	5
19	9	5
19	10	5
\.


--
-- Data for Name: asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asignatura (id, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) FROM stdin;
1	µlgegra lineal y matem tica discreta	6	b sica	1	1	3	4
2	C lculo	6	b sica	1	1	14	4
3	F¡sica para inform tica	6	b sica	1	1	3	4
4	Introducci¢n a la programaci¢n	6	b sica	1	1	14	4
5	Organizaci¢n y gesti¢n de empresas	6	b sica	1	1	3	4
6	Estad¡stica	6	b sica	1	2	14	4
7	Estructura y tecnolog¡a de computadores	6	b sica	1	2	3	4
8	Fundamentos de electr¢nica	6	b sica	1	2	14	4
9	L¢gica y algor¡tmica	6	b sica	1	2	3	4
10	Metodolog¡a de la programaci¢n	6	b sica	1	2	14	4
11	Arquitectura de Computadores	6	b sica	2	1	3	4
12	Estructura de Datos y Algoritmos I	6	obligatoria	2	1	3	4
13	Ingenier¡a del Software	6	obligatoria	2	1	14	4
14	Sistemas Inteligentes	6	obligatoria	2	1	3	4
15	Sistemas Operativos	6	obligatoria	2	1	14	4
16	Bases de Datos	6	b sica	2	2	14	4
17	Estructura de Datos y Algoritmos II	6	obligatoria	2	2	14	4
18	Fundamentos de Redes de Computadores	6	obligatoria	2	2	3	4
19	Planificaci¢n y Gesti¢n de Proyectos Inform ticos	6	obligatoria	2	2	3	4
20	Programaci¢n de Servicios Software	6	obligatoria	2	2	14	4
21	Desarrollo de interfaces de usuario	6	obligatoria	3	1	14	4
22	Ingenier¡a de Requisitos	6	optativa	3	1	\N	4
23	Integraci¢n de las Tecnolog¡as de la Informaci¢n en las Organizaciones	6	optativa	3	1	\N	4
24	Modelado y Dise¤o del Software 1	6	optativa	3	1	\N	4
25	Multiprocesadores	6	optativa	3	1	\N	4
26	Seguridad y cumplimiento normativo	6	optativa	3	1	\N	4
27	Sistema de Informaci¢n para las Organizaciones	6	optativa	3	1	\N	4
28	Tecnolog¡as web	6	optativa	3	1	\N	4
29	Teor¡a de c¢digos y criptograf¡a	6	optativa	3	1	\N	4
30	Administraci¢n de bases de datos	6	optativa	3	2	\N	4
31	Herramientas y M‚todos de Ingenier¡a del Software	6	optativa	3	2	\N	4
32	Inform tica industrial y rob¢tica	6	optativa	3	2	\N	4
33	Ingenier¡a de Sistemas de Informaci¢n	6	optativa	3	2	\N	4
34	Modelado y Dise¤o del Software 2	6	optativa	3	2	\N	4
35	Negocio Electr¢nico	6	optativa	3	2	\N	4
36	Perif‚ricos e interfaces	6	optativa	3	2	\N	4
37	Sistemas de tiempo real	6	optativa	3	2	\N	4
38	Tecnolog¡as de acceso a red	6	optativa	3	2	\N	4
39	Tratamiento digital de im genes	6	optativa	3	2	\N	4
40	Administraci¢n de redes y sistemas operativos	6	optativa	4	1	\N	4
41	Almacenes de Datos	6	optativa	4	1	\N	4
42	Fiabilidad y Gesti¢n de Riesgos	6	optativa	4	1	\N	4
43	L¡neas de Productos Software	6	optativa	4	1	\N	4
44	Procesos de Ingenier¡a del Software 1	6	optativa	4	1	\N	4
45	Tecnolog¡as multimedia	6	optativa	4	1	\N	4
46	An lisis y planificaci¢n de las TI	6	optativa	4	2	\N	4
47	Desarrollo R pido de Aplicaciones	6	optativa	4	2	\N	4
48	Gesti¢n de la Calidad y de la Innovaci¢n Tecnol¢gica	6	optativa	4	2	\N	4
49	Inteligencia del Negocio	6	optativa	4	2	\N	4
50	Procesos de Ingenier¡a del Software 2	6	optativa	4	2	\N	4
51	Seguridad Inform tica	6	optativa	4	2	\N	4
52	Biologia celular	6	b sica	1	1	\N	7
53	F¡sica	6	b sica	1	1	\N	7
54	Matem ticas I	6	b sica	1	1	\N	7
55	Qu¡mica general	6	b sica	1	1	\N	7
56	Qu¡mica org nica	6	b sica	1	1	\N	7
57	Biolog¡a vegetal y animal	6	b sica	1	2	\N	7
58	Bioqu¡mica	6	b sica	1	2	\N	7
59	Gen‚tica	6	b sica	1	2	\N	7
60	Matem ticas II	6	b sica	1	2	\N	7
61	Microbiolog¡a	6	b sica	1	2	\N	7
62	Bot nica agr¡cola	6	obligatoria	2	1	\N	7
63	Fisiolog¡a vegetal	6	obligatoria	2	1	\N	7
64	Gen‚tica molecular	6	obligatoria	2	1	\N	7
65	Ingenier¡a bioqu¡mica	6	obligatoria	2	1	\N	7
66	Termodin mica y cin‚tica qu¡mica aplicada	6	obligatoria	2	1	\N	7
67	Biorreactores	6	obligatoria	2	2	\N	7
68	Biotecnolog¡a microbiana	6	obligatoria	2	2	\N	7
69	Ingenier¡a gen‚tica	6	obligatoria	2	2	\N	7
70	Inmunolog¡a	6	obligatoria	2	2	\N	7
71	Virolog¡a	6	obligatoria	2	2	\N	7
72	Bases moleculares del desarrollo vegetal	4.5	obligatoria	3	1	\N	7
73	Fisiolog¡a animal	4.5	obligatoria	3	1	\N	7
74	Metabolismo y bios¡ntesis de biomol‚culas	6	obligatoria	3	1	\N	7
75	Operaciones de separaci¢n	6	obligatoria	3	1	\N	7
76	Patolog¡a molecular de plantas	4.5	obligatoria	3	1	\N	7
77	T‚cnicas instrumentales b sicas	4.5	obligatoria	3	1	\N	7
78	Bioinform tica	4.5	obligatoria	3	2	\N	7
79	Biotecnolog¡a de los productos hortofrut¡culas	4.5	obligatoria	3	2	\N	7
80	Biotecnolog¡a vegetal	6	obligatoria	3	2	\N	7
81	Gen¢mica y prote¢mica	4.5	obligatoria	3	2	\N	7
82	Procesos biotecnol¢gicos	6	obligatoria	3	2	\N	7
83	T‚cnicas instrumentales avanzadas	4.5	obligatoria	3	2	\N	7
\.


--
-- Data for Name: curso_escolar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curso_escolar (id, year_inicio, year_fin) FROM stdin;
1	2014-01-01	2015-01-01
2	2015-01-01	2016-01-01
3	2016-01-01	2017-01-01
4	2017-01-01	2018-01-01
5	2018-01-01	2019-01-01
\.


--
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamento (id, nombre) FROM stdin;
1	Inform tica
2	Matem ticas
3	Econom¡a y Empresa
4	Educaci¢n
5	Agronom¡a
6	Qu¡mica y F¡sica
7	Filolog¡a
8	Derecho
9	Biolog¡a y Geolog¡a
\.


--
-- Data for Name: grado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grado (id, nombre) FROM stdin;
1	Grado en Ingenier¡a Agr¡cola (Plan 2015)
2	Grado en Ingenier¡a El‚ctrica (Plan 2014)
3	Grado en Ingenier¡a Electr¢nica Industrial (Plan 2010)
4	Grado en Ingenier¡a Inform tica (Plan 2015)
5	Grado en Ingenier¡a Mec nica (Plan 2010)
6	Grado en Ingenier¡a Qu¡mica Industrial (Plan 2010)
7	Grado en Biotecnolog¡a (Plan 2015)
8	Grado en Ciencias Ambientales (Plan 2009)
9	Grado en Matem ticas (Plan 2010)
10	Grado en Qu¡mica (Plan 2009)
\.


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persona (id, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, tipo) FROM stdin;
1	26902806M	Salvador	S nchez	P‚rez	Almer¡a	C/ Real del barrio alto	950254837	1991-03-28	H	alumno         
2	89542419S	Juan	Saez	Vega	Almer¡a	C/ Mercurio	618253876	1992-08-08	H	alumno         
3	11105554G	Zoe	Ramirez	Gea	Almer¡a	C/ Marte	618223876	1979-08-19	M	profesor       
4	17105885A	Pedro	Heller	Pagac	Almer¡a	C/ Estrella fugaz	\N	2000-10-05	H	alumno         
5	38223286T	David	Schmidt	Fisher	Almer¡a	C/ Venus	678516294	1978-01-19	H	profesor       
6	04233869Y	Jos‚	Koss	Bayer	Almer¡a	C/ J£piter	628349590	1998-01-28	H	alumno         
7	97258166K	Ismael	Strosin	Turcotte	Almer¡a	C/ Neptuno	\N	1999-05-24	H	alumno         
8	79503962T	Cristina	Lemke	Rutherford	Almer¡a	C/ Saturno	669162534	1977-08-21	M	profesor       
9	82842571K	Ram¢n	Herzog	Tremblay	Almer¡a	C/ Urano	626351429	1996-11-21	H	alumno         
10	61142000L	Esther	Spencer	Lakin	Almer¡a	C/ Plut¢n	\N	1977-05-19	M	profesor       
11	46900725E	Daniel	Herman	Pacocha	Almer¡a	C/ Andarax	679837625	1997-04-26	H	alumno         
12	85366986W	Carmen	Streich	Hirthe	Almer¡a	C/ Almanzora	\N	1971-04-29	M	profesor       
13	73571384L	Alfredo	Stiedemann	Morissette	Almer¡a	C/ Guadalquivir	950896725	1980-02-01	H	profesor       
14	82937751G	Manolo	Hamill	Kozey	Almer¡a	C/ Duero	950263514	1977-01-02	H	profesor       
15	80502866Z	Alejandro	Kohler	Schoen	Almer¡a	C/ Tajo	668726354	1980-03-14	H	profesor       
16	10485008K	Antonio	Fahey	Considine	Almer¡a	C/ Sierra de los Filabres	\N	1982-03-18	H	profesor       
17	85869555K	Guillermo	Ruecker	Upton	Almer¡a	C/ Sierra de G dor	\N	1973-05-05	H	profesor       
18	04326833G	Micaela	Monahan	Murray	Almer¡a	C/ Veleta	662765413	1976-02-25	H	profesor       
19	11578526G	Inma	Lakin	Yundt	Almer¡a	C/ Picos de Europa	678652431	1998-09-01	M	alumno         
20	79221403L	Francesca	Schowalter	Muller	Almer¡a	C/ Quinto pino	\N	1980-10-31	H	profesor       
21	79089577Y	Juan	Guti‚rrez	L¢pez	Almer¡a	C/ Los pinos	678652431	1998-01-01	H	alumno         
22	41491230N	Antonio	Dom¡nguez	Guerrero	Almer¡a	C/ Cabo de Gata	626652498	1999-02-11	H	alumno         
23	64753215G	Irene	Hern ndez	Mart¡nez	Almer¡a	C/ Zapillo	628452384	1996-03-12	M	alumno         
24	85135690V	Sonia	Gea	Ruiz	Almer¡a	C/ Mercurio	678812017	1995-04-13	M	alumno         
\.


--
-- Data for Name: profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesor (id_profesor, id_departamento) FROM stdin;
3	1
5	2
8	3
10	4
12	4
13	6
14	1
15	2
16	3
17	4
18	5
20	6
\.


--
-- Name: asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asignatura_id_seq', 1, false);


--
-- Name: curso_escolar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.curso_escolar_id_seq', 1, false);


--
-- Name: departamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamento_id_seq', 1, false);


--
-- Name: grado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grado_id_seq', 1, false);


--
-- Name: persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_id_seq', 1, false);


--
-- Name: profesor_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profesor_id_departamento_seq', 1, false);


--
-- Name: profesor_id_profesor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profesor_id_profesor_seq', 1, false);


--
-- Name: alumno_se_matricula_asignatura alumno_se_matricula_asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura
    ADD CONSTRAINT alumno_se_matricula_asignatura_pkey PRIMARY KEY (id_alumno, id_asignatura, id_curso_escolar);


--
-- Name: asignatura asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT asignatura_pkey PRIMARY KEY (id);


--
-- Name: curso_escolar curso_escolar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_escolar
    ADD CONSTRAINT curso_escolar_pkey PRIMARY KEY (id);


--
-- Name: departamento departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id);


--
-- Name: grado grado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado
    ADD CONSTRAINT grado_pkey PRIMARY KEY (id);


--
-- Name: persona persona_nif_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_nif_key UNIQUE (nif);


--
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);


--
-- Name: profesor profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (id_profesor);


--
-- Name: alumno_se_matricula_asignatura alumno_se_matricula_asignatura_id_alumno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura
    ADD CONSTRAINT alumno_se_matricula_asignatura_id_alumno_fkey FOREIGN KEY (id_alumno) REFERENCES public.persona(id);


--
-- Name: alumno_se_matricula_asignatura alumno_se_matricula_asignatura_id_asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura
    ADD CONSTRAINT alumno_se_matricula_asignatura_id_asignatura_fkey FOREIGN KEY (id_asignatura) REFERENCES public.asignatura(id);


--
-- Name: alumno_se_matricula_asignatura alumno_se_matricula_asignatura_id_curso_escolar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_se_matricula_asignatura
    ADD CONSTRAINT alumno_se_matricula_asignatura_id_curso_escolar_fkey FOREIGN KEY (id_curso_escolar) REFERENCES public.curso_escolar(id);


--
-- Name: asignatura asignatura_id_grado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT asignatura_id_grado_fkey FOREIGN KEY (id_grado) REFERENCES public.grado(id);


--
-- Name: asignatura asignatura_id_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT asignatura_id_profesor_fkey FOREIGN KEY (id_profesor) REFERENCES public.profesor(id_profesor);


--
-- Name: profesor profesor_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamento(id);


--
-- Name: profesor profesor_id_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_id_profesor_fkey FOREIGN KEY (id_profesor) REFERENCES public.persona(id);


--
-- PostgreSQL database dump complete
--

