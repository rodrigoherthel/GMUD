--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+2)
-- Dumped by pg_dump version 16.3

-- Started on 2024-10-23 10:00:25

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16390)
-- Name: tbassessment; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbassessment (
    id smallint NOT NULL,
    changerequestid smallint NOT NULL,
    statusid smallint NOT NULL,
    assessorsid smallint,
    comment character varying,
    "validateAt" timestamp without time zone NOT NULL
);


ALTER TABLE public.tbassessment OWNER TO evolua;

--
-- TOC entry 216 (class 1259 OID 16395)
-- Name: tbaprovacao_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbaprovacao_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbaprovacao_id_seq OWNER TO evolua;

--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 216
-- Name: tbaprovacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbaprovacao_id_seq OWNED BY public.tbassessment.id;


--
-- TOC entry 217 (class 1259 OID 16396)
-- Name: tbassessors; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbassessors (
    id smallint NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    areaid smallint NOT NULL
);


ALTER TABLE public.tbassessors OWNER TO evolua;

--
-- TOC entry 218 (class 1259 OID 16401)
-- Name: tbaprovadores_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbaprovadores_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbaprovadores_id_seq OWNER TO evolua;

--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 218
-- Name: tbaprovadores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbaprovadores_id_seq OWNED BY public.tbassessors.id;


--
-- TOC entry 219 (class 1259 OID 16402)
-- Name: tbarea; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbarea (
    id integer NOT NULL,
    area character varying NOT NULL
);


ALTER TABLE public.tbarea OWNER TO evolua;

--
-- TOC entry 220 (class 1259 OID 16407)
-- Name: tbarea_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbarea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbarea_id_seq OWNER TO evolua;

--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 220
-- Name: tbarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbarea_id_seq OWNED BY public.tbarea.id;


--
-- TOC entry 221 (class 1259 OID 16408)
-- Name: tbchangerequest; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbchangerequest (
    id integer NOT NULL,
    requestername character varying NOT NULL,
    requestermail character varying NOT NULL,
    title character varying NOT NULL,
    systemid smallint NOT NULL,
    reasonid smallint NOT NULL,
    typeid smallint NOT NULL,
    riskid smallint,
    description text NOT NULL,
    statusid smallint NOT NULL,
    areaid smallint NOT NULL,
    forecaststart timestamp without time zone NOT NULL,
    forecastend timestamp without time zone NOT NULL,
    bugsid character varying,
    userstoriesid character varying,
    closuredatetime timestamp without time zone,
    createdat timestamp without time zone
);


ALTER TABLE public.tbchangerequest OWNER TO evolua;

--
-- TOC entry 222 (class 1259 OID 16413)
-- Name: tbimpact; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbimpact (
    id integer NOT NULL,
    impact character varying NOT NULL,
    value integer NOT NULL
);


ALTER TABLE public.tbimpact OWNER TO evolua;

--
-- TOC entry 223 (class 1259 OID 16418)
-- Name: tbimpact_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbimpact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbimpact_id_seq OWNER TO evolua;

--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 223
-- Name: tbimpact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbimpact_id_seq OWNED BY public.tbimpact.id;


--
-- TOC entry 224 (class 1259 OID 16419)
-- Name: tbreason; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbreason (
    id integer NOT NULL,
    reason character varying NOT NULL
);


ALTER TABLE public.tbreason OWNER TO evolua;

--
-- TOC entry 225 (class 1259 OID 16424)
-- Name: tbmotivo_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbmotivo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbmotivo_id_seq OWNER TO evolua;

--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 225
-- Name: tbmotivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbmotivo_id_seq OWNED BY public.tbreason.id;


--
-- TOC entry 226 (class 1259 OID 16425)
-- Name: tbmudanca_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbmudanca_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbmudanca_id_seq OWNER TO evolua;

--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 226
-- Name: tbmudanca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbmudanca_id_seq OWNED BY public.tbchangerequest.id;


--
-- TOC entry 227 (class 1259 OID 16426)
-- Name: tboperator; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tboperator (
    id integer NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    areaid integer
);


ALTER TABLE public.tboperator OWNER TO evolua;

--
-- TOC entry 228 (class 1259 OID 16431)
-- Name: tboperator_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tboperator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tboperator_id_seq OWNER TO evolua;

--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 228
-- Name: tboperator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tboperator_id_seq OWNED BY public.tboperator.id;


--
-- TOC entry 229 (class 1259 OID 16432)
-- Name: tbprobability; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbprobability (
    id integer NOT NULL,
    probability character varying NOT NULL,
    value integer NOT NULL
);


ALTER TABLE public.tbprobability OWNER TO evolua;

--
-- TOC entry 230 (class 1259 OID 16437)
-- Name: tbprobability_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbprobability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbprobability_id_seq OWNER TO evolua;

--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 230
-- Name: tbprobability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbprobability_id_seq OWNED BY public.tbprobability.id;


--
-- TOC entry 231 (class 1259 OID 16438)
-- Name: tbschedule; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbschedule (
    id smallint NOT NULL,
    hour character varying NOT NULL,
    monday smallint,
    tuesday smallint,
    wednesday smallint,
    thursday smallint,
    friday smallint,
    saturday smallint,
    sunday smallint
);


ALTER TABLE public.tbschedule OWNER TO evolua;

--
-- TOC entry 232 (class 1259 OID 16443)
-- Name: tbprogramacao_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbprogramacao_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbprogramacao_id_seq OWNER TO evolua;

--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 232
-- Name: tbprogramacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbprogramacao_id_seq OWNED BY public.tbschedule.id;


--
-- TOC entry 233 (class 1259 OID 16444)
-- Name: tbrisk; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbrisk (
    id smallint NOT NULL,
    grade smallint NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.tbrisk OWNER TO evolua;

--
-- TOC entry 234 (class 1259 OID 16449)
-- Name: tbrisco_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbrisco_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbrisco_id_seq OWNER TO evolua;

--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 234
-- Name: tbrisco_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbrisco_id_seq OWNED BY public.tbrisk.id;


--
-- TOC entry 235 (class 1259 OID 16450)
-- Name: tbriskImpactProbability; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public."tbriskImpactProbability" (
    id integer NOT NULL,
    impactid integer NOT NULL,
    probabilityid integer NOT NULL,
    riskid integer NOT NULL
);


ALTER TABLE public."tbriskImpactProbability" OWNER TO evolua;

--
-- TOC entry 236 (class 1259 OID 16453)
-- Name: tbrisks_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbrisks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbrisks_id_seq OWNER TO evolua;

--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 236
-- Name: tbrisks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbrisks_id_seq OWNED BY public."tbriskImpactProbability".id;


--
-- TOC entry 237 (class 1259 OID 16454)
-- Name: tbsystem; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbsystem (
    id integer NOT NULL,
    system character varying NOT NULL,
    areaid smallint NOT NULL
);


ALTER TABLE public.tbsystem OWNER TO evolua;

--
-- TOC entry 238 (class 1259 OID 16459)
-- Name: tbsistemaplataforma_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbsistemaplataforma_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbsistemaplataforma_id_seq OWNER TO evolua;

--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 238
-- Name: tbsistemaplataforma_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbsistemaplataforma_id_seq OWNED BY public.tbsystem.id;


--
-- TOC entry 239 (class 1259 OID 16460)
-- Name: tbstatus; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbstatus (
    id integer NOT NULL,
    status character varying NOT NULL
);


ALTER TABLE public.tbstatus OWNER TO evolua;

--
-- TOC entry 240 (class 1259 OID 16465)
-- Name: tbstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbstatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbstatus_id_seq OWNER TO evolua;

--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 240
-- Name: tbstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbstatus_id_seq OWNED BY public.tbstatus.id;


--
-- TOC entry 241 (class 1259 OID 16466)
-- Name: tbtype; Type: TABLE; Schema: public; Owner: evolua
--

CREATE TABLE public.tbtype (
    id integer NOT NULL,
    type character varying NOT NULL
);


ALTER TABLE public.tbtype OWNER TO evolua;

--
-- TOC entry 242 (class 1259 OID 16471)
-- Name: tbtipomudanca_id_seq; Type: SEQUENCE; Schema: public; Owner: evolua
--

CREATE SEQUENCE public.tbtipomudanca_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbtipomudanca_id_seq OWNER TO evolua;

--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 242
-- Name: tbtipomudanca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evolua
--

ALTER SEQUENCE public.tbtipomudanca_id_seq OWNED BY public.tbtype.id;


--
-- TOC entry 3270 (class 2604 OID 16472)
-- Name: tbarea id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbarea ALTER COLUMN id SET DEFAULT nextval('public.tbarea_id_seq'::regclass);


--
-- TOC entry 3268 (class 2604 OID 16473)
-- Name: tbassessment id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbassessment ALTER COLUMN id SET DEFAULT nextval('public.tbaprovacao_id_seq'::regclass);


--
-- TOC entry 3269 (class 2604 OID 16474)
-- Name: tbassessors id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbassessors ALTER COLUMN id SET DEFAULT nextval('public.tbaprovadores_id_seq'::regclass);


--
-- TOC entry 3271 (class 2604 OID 16475)
-- Name: tbchangerequest id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbchangerequest ALTER COLUMN id SET DEFAULT nextval('public.tbmudanca_id_seq'::regclass);


--
-- TOC entry 3272 (class 2604 OID 16476)
-- Name: tbimpact id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbimpact ALTER COLUMN id SET DEFAULT nextval('public.tbimpact_id_seq'::regclass);


--
-- TOC entry 3274 (class 2604 OID 16477)
-- Name: tboperator id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tboperator ALTER COLUMN id SET DEFAULT nextval('public.tboperator_id_seq'::regclass);


--
-- TOC entry 3275 (class 2604 OID 16478)
-- Name: tbprobability id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbprobability ALTER COLUMN id SET DEFAULT nextval('public.tbprobability_id_seq'::regclass);


--
-- TOC entry 3273 (class 2604 OID 16479)
-- Name: tbreason id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbreason ALTER COLUMN id SET DEFAULT nextval('public.tbmotivo_id_seq'::regclass);


--
-- TOC entry 3277 (class 2604 OID 16480)
-- Name: tbrisk id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbrisk ALTER COLUMN id SET DEFAULT nextval('public.tbrisco_id_seq'::regclass);


--
-- TOC entry 3278 (class 2604 OID 16481)
-- Name: tbriskImpactProbability id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public."tbriskImpactProbability" ALTER COLUMN id SET DEFAULT nextval('public.tbrisks_id_seq'::regclass);


--
-- TOC entry 3276 (class 2604 OID 16482)
-- Name: tbschedule id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbschedule ALTER COLUMN id SET DEFAULT nextval('public.tbprogramacao_id_seq'::regclass);


--
-- TOC entry 3280 (class 2604 OID 16483)
-- Name: tbstatus id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbstatus ALTER COLUMN id SET DEFAULT nextval('public.tbstatus_id_seq'::regclass);


--
-- TOC entry 3279 (class 2604 OID 16484)
-- Name: tbsystem id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbsystem ALTER COLUMN id SET DEFAULT nextval('public.tbsistemaplataforma_id_seq'::regclass);


--
-- TOC entry 3281 (class 2604 OID 16485)
-- Name: tbtype id; Type: DEFAULT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbtype ALTER COLUMN id SET DEFAULT nextval('public.tbtipomudanca_id_seq'::regclass);


--
-- TOC entry 3476 (class 0 OID 16402)
-- Dependencies: 219
-- Data for Name: tbarea; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbarea VALUES (1, 'Contratação');
INSERT INTO public.tbarea VALUES (2, 'Comunicação');
INSERT INTO public.tbarea VALUES (3, 'Faturamento');
INSERT INTO public.tbarea VALUES (4, 'Atendimento');


--
-- TOC entry 3472 (class 0 OID 16390)
-- Dependencies: 215
-- Data for Name: tbassessment; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbassessment VALUES (100, 196, 3, 1, 'Aprovado!', '2024-07-11 13:26:06.520853');
INSERT INTO public.tbassessment VALUES (101, 197, 3, 1, '', '2024-07-12 14:41:11.591045');
INSERT INTO public.tbassessment VALUES (102, 199, 3, 1, '', '2024-07-12 14:53:40.434507');
INSERT INTO public.tbassessment VALUES (103, 200, 3, 1, '', '2024-07-15 18:30:18.247125');
INSERT INTO public.tbassessment VALUES (104, 201, 3, 1, 'Ok, aprovado', '2024-07-15 18:34:19.528686');
INSERT INTO public.tbassessment VALUES (105, 202, 3, 1, 'Aprovado', '2024-07-16 12:31:32.264047');
INSERT INTO public.tbassessment VALUES (106, 205, 3, 1, '', '2024-07-18 12:50:15.470089');
INSERT INTO public.tbassessment VALUES (107, 206, 3, 1, 'Aprovado
https://dev.azure.com/evoluaenergia/INT_Evolua%20Digital/_sprints/backlog/Marketing%20Cloud/INT_Evolua%20Digital/Marketing%20Cloud/Sprint%2017?workitem=4803', '2024-07-18 15:04:19.190087');
INSERT INTO public.tbassessment VALUES (108, 195, 4, 1, '', '2024-07-22 12:51:17.525699');
INSERT INTO public.tbassessment VALUES (109, 208, 3, 1, '', '2024-07-22 18:24:34.969498');
INSERT INTO public.tbassessment VALUES (110, 209, 3, 1, '', '2024-07-22 18:34:08.987153');
INSERT INTO public.tbassessment VALUES (111, 210, 3, 1, '', '2024-07-22 20:58:41.273753');
INSERT INTO public.tbassessment VALUES (112, 211, 3, 1, '', '2024-07-23 14:10:10.289574');
INSERT INTO public.tbassessment VALUES (113, 213, 3, 1, '', '2024-07-24 14:35:27.678598');
INSERT INTO public.tbassessment VALUES (114, 214, 4, 1, '', '2024-07-24 18:54:14.123403');
INSERT INTO public.tbassessment VALUES (115, 215, 3, 1, 'Aprovado. Item validado com o Adolfo Leoni e Douglas Morais. ', '2024-07-25 12:41:54.641434');
INSERT INTO public.tbassessment VALUES (116, 216, 4, 1, '', '2024-07-25 13:15:57.37609');
INSERT INTO public.tbassessment VALUES (117, 217, 3, 1, '', '2024-07-25 19:56:14.332348');
INSERT INTO public.tbassessment VALUES (118, 218, 3, 1, '', '2024-07-26 16:32:58.495945');
INSERT INTO public.tbassessment VALUES (119, 219, 3, 1, '', '2024-07-29 17:26:00.619672');
INSERT INTO public.tbassessment VALUES (120, 220, 3, 1, '', '2024-07-31 13:29:29.896348');
INSERT INTO public.tbassessment VALUES (121, 207, 3, 1, 'Homologação realizada! Aprovado para subir para produção.
Observação: Os testes em homologação estão em conflito com a história que está em teste de refinamento do demonstrativo, portanto, precisamos ter cuidado para subir apenas a habilitação do demonstrativo para as novas distribuidoras.', '2024-08-01 14:06:26.161367');
INSERT INTO public.tbassessment VALUES (122, 221, 3, 1, '', '2024-08-02 15:19:53.439537');
INSERT INTO public.tbassessment VALUES (123, 223, 3, 1, '', '2024-08-02 15:21:37.524629');
INSERT INTO public.tbassessment VALUES (124, 194, 4, 1, 'teste reprovado', '2024-08-02 15:24:26.719631');
INSERT INTO public.tbassessment VALUES (125, 224, 3, 1, 'Alinhado em agenda dia 02 de agosto às 18h56.', '2024-08-02 21:57:15.841411');
INSERT INTO public.tbassessment VALUES (135, 226, 3, 7, 'Alinhado com o Adolfo Leoni e aprovado. ', '2024-08-05 15:29:37.884526');
INSERT INTO public.tbassessment VALUES (136, 225, 3, 7, 'Alinhado com o Adolfo Leoni e aprovado. ', '2024-08-05 15:30:17.891428');
INSERT INTO public.tbassessment VALUES (137, 241, 3, 4, 'Aprovado! Alteração feita para a entrada de novos clientes.', '2024-08-05 16:58:40.166294');
INSERT INTO public.tbassessment VALUES (138, 242, 3, 4, 'Data de ativação na UCO desconsiderada devido ao novo processo de troca, alinhado com o Júlio via chat, no dia 05/08:
Com o novo formato de troca de titularidade por planilha, as ucos não são mais alteradas uma por uma. Sendo assim, é possível que a data de última alteração só seja alterada de fato após a troca. Com isso, acredito que a melhor data a seguirmos seja a data de assinatura.', '2024-08-05 17:11:31.477368');
INSERT INTO public.tbassessment VALUES (139, 245, 3, 9, '', '2024-08-07 16:37:41.906622');
INSERT INTO public.tbassessment VALUES (140, 247, 3, 9, '', '2024-08-07 19:08:14.106422');
INSERT INTO public.tbassessment VALUES (141, 246, 3, 9, '', '2024-08-07 19:08:20.712579');
INSERT INTO public.tbassessment VALUES (142, 248, 3, 9, '', '2024-08-07 19:17:07.921485');
INSERT INTO public.tbassessment VALUES (143, 249, 3, 9, '', '2024-08-08 12:17:07.741299');
INSERT INTO public.tbassessment VALUES (144, 212, 3, 11, '', '2024-08-08 17:16:19.289689');
INSERT INTO public.tbassessment VALUES (145, 250, 3, 11, '', '2024-08-08 17:55:12.146588');
INSERT INTO public.tbassessment VALUES (146, 251, 3, 11, '', '2024-08-09 15:01:11.860825');
INSERT INTO public.tbassessment VALUES (147, 252, 3, 11, '', '2024-08-12 17:52:06.606621');
INSERT INTO public.tbassessment VALUES (148, 253, 3, 11, '', '2024-08-12 18:09:22.059336');
INSERT INTO public.tbassessment VALUES (149, 254, 3, 11, '', '2024-08-13 14:28:30.496114');
INSERT INTO public.tbassessment VALUES (150, 255, 3, 9, '', '2024-08-14 13:52:16.595662');
INSERT INTO public.tbassessment VALUES (151, 256, 3, 15, '', '2024-08-14 16:44:46.770564');
INSERT INTO public.tbassessment VALUES (152, 257, 3, 5, '', '2024-08-14 17:10:54.575535');
INSERT INTO public.tbassessment VALUES (153, 258, 3, 11, '', '2024-08-14 19:12:48.022037');
INSERT INTO public.tbassessment VALUES (154, 259, 3, 9, '', '2024-08-14 20:28:28.715318');
INSERT INTO public.tbassessment VALUES (155, 260, 3, 11, '', '2024-08-16 13:10:41.860414');
INSERT INTO public.tbassessment VALUES (156, 261, 3, 9, '', '2024-08-16 19:25:00.700394');
INSERT INTO public.tbassessment VALUES (157, 263, 3, 9, '', '2024-08-19 18:30:11.036691');
INSERT INTO public.tbassessment VALUES (158, 264, 3, 9, '', '2024-08-19 19:40:47.136003');
INSERT INTO public.tbassessment VALUES (159, 244, 3, 3, '', '2024-08-19 20:35:21.083498');
INSERT INTO public.tbassessment VALUES (160, 265, 3, 9, '', '2024-08-20 19:14:39.020024');
INSERT INTO public.tbassessment VALUES (161, 266, 3, 9, '', '2024-08-20 20:59:51.660901');
INSERT INTO public.tbassessment VALUES (162, 267, 3, 9, '', '2024-08-21 16:29:28.230267');
INSERT INTO public.tbassessment VALUES (163, 269, 3, 11, '', '2024-08-22 12:45:40.439014');
INSERT INTO public.tbassessment VALUES (164, 271, 3, 7, 'Aprovado. ', '2024-08-22 19:38:15.680719');
INSERT INTO public.tbassessment VALUES (165, 270, 3, 9, '', '2024-08-22 20:32:28.749069');
INSERT INTO public.tbassessment VALUES (166, 273, 3, 9, '', '2024-08-23 12:47:43.712312');
INSERT INTO public.tbassessment VALUES (167, 272, 3, 9, '', '2024-08-23 12:47:49.496672');
INSERT INTO public.tbassessment VALUES (168, 274, 3, 11, '', '2024-08-23 19:35:28.468331');
INSERT INTO public.tbassessment VALUES (169, 275, 3, 9, '', '2024-08-27 13:33:58.504832');
INSERT INTO public.tbassessment VALUES (170, 277, 3, 9, '', '2024-08-27 13:34:08.865258');
INSERT INTO public.tbassessment VALUES (171, 276, 3, 11, '', '2024-08-27 14:03:28.330294');
INSERT INTO public.tbassessment VALUES (172, 279, 3, 9, '', '2024-08-29 12:55:29.082016');
INSERT INTO public.tbassessment VALUES (173, 280, 3, 11, '', '2024-09-03 12:55:02.310663');
INSERT INTO public.tbassessment VALUES (174, 282, 3, 9, '', '2024-09-04 18:43:03.693231');
INSERT INTO public.tbassessment VALUES (175, 281, 3, 9, '', '2024-09-04 18:43:09.894078');
INSERT INTO public.tbassessment VALUES (176, 283, 3, 3, '', '2024-09-04 18:58:48.238583');
INSERT INTO public.tbassessment VALUES (177, 284, 3, 9, '', '2024-09-05 13:35:18.256624');
INSERT INTO public.tbassessment VALUES (178, 286, 3, 5, '', '2024-09-09 18:36:20.731514');
INSERT INTO public.tbassessment VALUES (179, 268, 3, 5, '', '2024-09-09 18:37:38.474375');
INSERT INTO public.tbassessment VALUES (180, 285, 3, 5, '', '2024-09-09 18:37:41.435588');
INSERT INTO public.tbassessment VALUES (181, 288, 3, 7, 'Aprovado.', '2024-09-11 18:20:34.981347');
INSERT INTO public.tbassessment VALUES (182, 287, 3, 7, 'Aprovado.', '2024-09-11 18:20:44.189858');
INSERT INTO public.tbassessment VALUES (183, 289, 3, 5, '', '2024-09-12 19:25:36.802778');
INSERT INTO public.tbassessment VALUES (184, 290, 3, 7, 'Subida autorizada pelo Julio Alves', '2024-09-13 13:29:05.553708');
INSERT INTO public.tbassessment VALUES (185, 292, 3, 7, 'Aprovado', '2024-09-13 17:00:40.686377');
INSERT INTO public.tbassessment VALUES (186, 291, 3, 9, '', '2024-09-17 16:26:42.880735');
INSERT INTO public.tbassessment VALUES (187, 294, 3, 9, '', '2024-09-17 16:26:50.58696');
INSERT INTO public.tbassessment VALUES (188, 295, 3, 5, '', '2024-09-20 14:10:31.031578');
INSERT INTO public.tbassessment VALUES (189, 293, 3, 3, '', '2024-09-20 19:12:30.426481');
INSERT INTO public.tbassessment VALUES (190, 296, 3, 9, '', '2024-09-23 14:49:01.072428');
INSERT INTO public.tbassessment VALUES (191, 297, 3, 5, '', '2024-09-23 20:52:57.838256');
INSERT INTO public.tbassessment VALUES (192, 298, 3, 5, '', '2024-09-26 17:27:43.945926');
INSERT INTO public.tbassessment VALUES (193, 299, 3, 5, '', '2024-09-26 17:52:03.816636');
INSERT INTO public.tbassessment VALUES (194, 300, 3, 3, '', '2024-09-26 18:10:45.229743');
INSERT INTO public.tbassessment VALUES (195, 301, 3, 7, 'Aprovado', '2024-09-27 18:51:01.715235');
INSERT INTO public.tbassessment VALUES (196, 302, 3, 9, '', '2024-09-30 17:52:56.817385');
INSERT INTO public.tbassessment VALUES (197, 303, 3, 5, '', '2024-10-01 13:42:33.972687');
INSERT INTO public.tbassessment VALUES (198, 305, 3, 9, '', '2024-10-01 17:40:06.148983');
INSERT INTO public.tbassessment VALUES (199, 304, 3, 7, 'Aprovada', '2024-10-01 18:58:30.924999');
INSERT INTO public.tbassessment VALUES (200, 307, 3, 7, 'Aprovado', '2024-10-02 17:52:33.144551');
INSERT INTO public.tbassessment VALUES (201, 309, 3, 9, '', '2024-10-02 19:00:22.06862');
INSERT INTO public.tbassessment VALUES (202, 306, 3, 9, '', '2024-10-02 19:00:27.766715');
INSERT INTO public.tbassessment VALUES (203, 308, 3, 9, '', '2024-10-02 19:00:32.459026');
INSERT INTO public.tbassessment VALUES (204, 311, 3, 7, 'Aprovado', '2024-10-04 18:20:38.41743');
INSERT INTO public.tbassessment VALUES (205, 316, 3, 9, '', '2024-10-09 17:59:16.399056');
INSERT INTO public.tbassessment VALUES (206, 317, 3, 9, '', '2024-10-09 17:59:55.253252');
INSERT INTO public.tbassessment VALUES (207, 322, 3, 9, '', '2024-10-09 18:00:07.19495');
INSERT INTO public.tbassessment VALUES (208, 320, 3, 9, '', '2024-10-09 18:00:17.205768');
INSERT INTO public.tbassessment VALUES (209, 319, 3, 9, '', '2024-10-09 18:00:22.147076');
INSERT INTO public.tbassessment VALUES (210, 321, 3, 9, '', '2024-10-09 18:00:39.416597');
INSERT INTO public.tbassessment VALUES (211, 315, 3, 9, '', '2024-10-09 18:00:44.219782');
INSERT INTO public.tbassessment VALUES (212, 314, 3, 9, '', '2024-10-09 18:01:19.027949');
INSERT INTO public.tbassessment VALUES (213, 318, 3, 9, '', '2024-10-09 18:01:23.993066');
INSERT INTO public.tbassessment VALUES (214, 313, 3, 9, '', '2024-10-09 18:01:28.517024');
INSERT INTO public.tbassessment VALUES (215, 312, 3, 9, '', '2024-10-09 18:01:35.947656');
INSERT INTO public.tbassessment VALUES (216, 326, 3, 5, '', '2024-10-15 16:42:12.089154');
INSERT INTO public.tbassessment VALUES (217, 330, 3, 9, '', '2024-10-17 13:29:47.278479');
INSERT INTO public.tbassessment VALUES (218, 328, 3, 9, '', '2024-10-17 13:29:52.639734');
INSERT INTO public.tbassessment VALUES (219, 327, 3, 9, '', '2024-10-17 13:29:57.896678');


--
-- TOC entry 3474 (class 0 OID 16396)
-- Dependencies: 217
-- Data for Name: tbassessors; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbassessors VALUES (2, 'Lorena Pieroni', 'lorena.pieroni@evoluaenergia.com.br', 1);
INSERT INTO public.tbassessors VALUES (3, 'Flaviele Leite', 'flaviele.leite@evoluaenergia.com.br', 2);
INSERT INTO public.tbassessors VALUES (5, 'Breno Guedes', 'breno.guedes@evoluaenergia.com.br', 3);
INSERT INTO public.tbassessors VALUES (6, 'Lucas Magalhães', 'lucas.magalhaes@evoluaenergia.com.br', 3);
INSERT INTO public.tbassessors VALUES (7, 'Matheus Sans', 'matheus.sans@evoluaenergia.com.br', 4);
INSERT INTO public.tbassessors VALUES (8, 'Júlio Alves', 'julio.alves@evoluaenergia.com.br', 4);
INSERT INTO public.tbassessors VALUES (9, 'Thais Santos', 'thais.santos@evoluaenergia.com.br', 1);
INSERT INTO public.tbassessors VALUES (1, 'Rodrigo Herthel', 'rodrigo.herthel@evoluaenergia.com.br', 1);
INSERT INTO public.tbassessors VALUES (10, 'Ricardo Orlandi', 'ricardo.orlandi@evoluaenergia.com.br', 1);
INSERT INTO public.tbassessors VALUES (11, 'Luana Almeida', 'luana.almeida@evoluaenergia.com.br', 4);
INSERT INTO public.tbassessors VALUES (16, 'Matheus Sans', 'matheus.sans@evoluaenergia.com.br', 3);
INSERT INTO public.tbassessors VALUES (17, 'Adolfo Leoni', 'adolfo.leoni@evoluaenergia.com.br', 4);
INSERT INTO public.tbassessors VALUES (14, 'Adolfo Leoni', 'adolfo.leoni@evoluaenergia.com.br', 3);
INSERT INTO public.tbassessors VALUES (4, 'Adolfo Leoni', 'adolfo.leoni@evoluaenergia.com.br', 1);
INSERT INTO public.tbassessors VALUES (12, 'Adolfo Leoni', 'adolfo.leoni@evoluaenergia.com.br', 2);
INSERT INTO public.tbassessors VALUES (15, 'Douglas Morais', 'douglas.morais@evoluaenergia.com.br', 1);
INSERT INTO public.tbassessors VALUES (13, 'Douglas Morais', 'douglas.morais@evoluaenergia.com.br', 1);
INSERT INTO public.tbassessors VALUES (18, 'Douglas Morais', 'douglas.morais@evoluaenergia.com.br', 1);
INSERT INTO public.tbassessors VALUES (19, 'Matheus Sans', 'matheus.sans@evoluaenergia.com.br', 1);
INSERT INTO public.tbassessors VALUES (20, 'Thais Santos', 'thais.santos@evoluaenergia.com.br', 4);


--
-- TOC entry 3478 (class 0 OID 16408)
-- Dependencies: 221
-- Data for Name: tbchangerequest; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbchangerequest VALUES (196, 'Matheus Santos Fialho', 'matheus.fialho@evoluaenergia.com.br', 'Mudança de telefone Termo', 1, 3, 2, 1, 'Antigamente usávamos o número de telefone MKT da conta para colocar nos termos, porém agora colocaremos o número do contato comercial, que é o correto.', 3, 1, '2024-07-11 13:24:59.167', '2024-07-11 13:25:01.174', '', '', NULL, '2024-07-11 13:25:12.863939');
INSERT INTO public.tbchangerequest VALUES (208, 'rodrigo.herthel@evoluaenergia.com.br', 'rodrigo.herthel@evoluaenergia.com.br', 'TESTE DE ALTERAÇÃO DE DADOS', 12, 1, 2, 3, 'Precisamos executar um scrpit para mudar a coluna X para Y de  todos os clientes.', 6, 1, '2024-07-22 22:00:42.756', '2024-07-22 22:30:42.756', '', '', '2024-07-22 18:25:16.374327', '2024-07-22 18:22:45.607442');
INSERT INTO public.tbchangerequest VALUES (197, 'Rodrigo Herthel', 'rodrigo.herthel@evoluaenergia.com.br', 'CRIAR MEIO DE PAGAMENTO DE CARTAO DE CREDITO NA ESTEIRA', 1, 1, 2, 3, 'Será inserido uma nova forma de pagamento atraves de cartao de credito integrado com IUGU', 6, 1, '2024-07-15 22:00:00', '2024-07-15 23:00:00', '', '', '2024-07-12 14:42:07.542818', '2024-07-12 14:39:59.407064');
INSERT INTO public.tbchangerequest VALUES (198, 'Rodrigo Herthel', 'rodrigo.herthel@evoluaenergia.com.br', 'APROVACAO AUTOMATICA', 16, 1, 1, 1, 'TESTE DE APROVACAO AUTOMATICA', 3, 3, '2024-07-17 22:00:00', '2024-07-17 22:30:00', '', '', NULL, '2024-07-12 14:47:24.955628');
INSERT INTO public.tbchangerequest VALUES (199, 'Pedro Couto', 'pedro.couto@evoluaenergia.com.br', 'Faturamento Garantia 2', 4, 1, 2, 3, 'TESTE', 6, 3, '2024-07-12 14:52:31.822', '2024-07-13 03:00:00', '', '00043', '2024-07-12 14:54:52.865487', '2024-07-12 14:52:45.353799');
INSERT INTO public.tbchangerequest VALUES (209, 'luiz.rezende@evoluaenergia.com.br', 'luiz.rezende@evoluaenergia.com.br', 'Update numero de cliente', 12, 1, 2, 3, 'Alterar numero de clientes', 3, 1, '2024-07-22 22:00:00', '2024-07-22 22:30:00', '', '1234', NULL, '2024-07-22 18:32:58.562891');
INSERT INTO public.tbchangerequest VALUES (200, 'Rodrigo Herthel', 'rodrigo.herthel@evoluaenergia.com.br', 'CHATBOT 2.0', 7, 1, 2, 3, 'estamos colocando em producao todas as melhorias efetuadas pelo fourtime. Entrará CSAT, fila de atendimento e etc.', 5, 1, '2024-07-15 22:00:59.525', '2024-07-16 00:00:59.525', '', '', '2024-07-15 18:31:12.85933', '2024-07-15 18:28:35.084552');
INSERT INTO public.tbchangerequest VALUES (201, 'Rodrigo Herthel', 'rodrigo.herthel@evoluaenergia.com.br', 'TESTE DE APROVACAO COM O JULIO', 5, 1, 2, 2, 'TESTE DE GMUD', 3, 4, '2024-07-15 21:00:58.188', '2024-07-16 00:00:58.188', '', '', NULL, '2024-07-15 18:34:06.071358');
INSERT INTO public.tbchangerequest VALUES (203, 'Matheus Santos Fialho', 'matheus.fialho@evoluaenergia.com.br', 'Adição de campo', 1, 2, 1, 1, 'Inclusão de valores na picklist Motivos de Reprovação da Auditoria dentro do objeto contrato.', 3, 1, '2024-07-16 09:56:23.026', '2024-07-16 10:00:00', '0003133', '', NULL, '2024-07-16 09:56:30.747999');
INSERT INTO public.tbchangerequest VALUES (202, 'Matheus Santos Fialho', 'matheus.fialho@evoluaenergia.com.br', 'Reenvio termo para assinatura na most para telefone e email', 1, 3, 2, 1, 'Permitir enviar SMS e Email para que o cliente assine o termo dentro da Most.', 3, 1, '2024-07-15 18:55:11.731', '2024-07-15 19:10:00', '', '', NULL, '2024-07-15 18:55:24.236592');
INSERT INTO public.tbchangerequest VALUES (204, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Incluir no picklist TROCA DE TITULARIDADE PENDENTE', 1, 2, 2, 1, 'Solicito inclusão de TROCA DE TITULARIDADE PENDENTE no campo Exceção dentro de UC na oportunidade do lead.', 2, 1, '2024-07-18 10:06:49.805', '2024-07-18 10:10:00', '3148', '', NULL, '2024-07-18 10:10:55.275899');
INSERT INTO public.tbchangerequest VALUES (205, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Mudar fórmula de link para baixar contratos', 1, 2, 2, 1, 'Mudar fórmula de link para baixar contratos pois foi mudado o consórcio e estava pegando o link de acordo com o consórcio, sem olhar datas.', 3, 1, '2024-07-18 12:49:17.519', '2024-07-18 12:49:19.112', '0003149', '', NULL, '2024-07-18 12:49:24.216857');
INSERT INTO public.tbchangerequest VALUES (206, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Associação - Email Boas Vindas', 6, 3, 2, 1, 'Atualiza a automação de Boas Vindas Geral para requisitar os dados do nome da Associação e adicionar esse dado nos Emails da Jornada', 3, 2, '2024-07-18 15:00:07.687', '2024-07-18 15:30:07.687', '', '', NULL, '2024-07-18 15:02:07.94231');
INSERT INTO public.tbchangerequest VALUES (195, 'Pedro Santos Display', 'pedro.santos@evoluaenergia.com.br', 'Teste', 16, 2, 2, 2, 'TEste desc', 4, 3, '2024-07-11 13:25:00', '2024-07-17 03:00:00', '1', '', NULL, '2024-07-11 13:22:02.324412');
INSERT INTO public.tbchangerequest VALUES (213, 'flaviano.consultor@evoluaenergia.com.br', 'flaviano.consultor@evoluaenergia.com.br', 'Correção criação de Energia Compensada', 4, 2, 2, 1, 'faturas com erro de criação não serão mais passadas para a geração de Energia compensada, assim não dará erro na inserção do lote de energias ', 6, 3, '2024-07-24 15:00:54.755', '2024-07-24 16:00:00', '', '', '2024-07-24 15:39:17.876769', '2024-07-24 14:32:55.254652');
INSERT INTO public.tbchangerequest VALUES (210, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Tarifa Amarela - Demonstrativo', 20, 2, 2, 1, 'Desconsiderar dos cálculos do valor do demonstrativo o item "Bandeira Amarela - Já Incluído no valor a pagar". Ele precisa aparecer mas não ser cobrado.', 3, 3, '2024-07-22 21:00:00', '2024-07-22 21:30:00', '0003172', '', NULL, '2024-07-22 20:57:56.74987');
INSERT INTO public.tbchangerequest VALUES (211, 'flaviano.consultor@evoluaenergia.com.br', 'flaviano.consultor@evoluaenergia.com.br', 'Usar a fatura distribuidora mais nova para o processo de faturamento', 4, 3, 2, 1, 'Foi alterado a query soql que pegas as faturas distribuidora que ordenava pela data de criação descendente para ordernar de forma ascendente  ', 6, 3, '2024-07-23 14:30:00', '2024-07-23 15:00:00', '', '', '2024-07-24 14:36:31.102561', '2024-07-23 14:02:19.482585');
INSERT INTO public.tbchangerequest VALUES (214, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Retirar valor de picklist', 1, 4, 2, 1, 'Retirar o valor INELEGÍVEL OUTROS MOTIVOS da picklist de Acompanhamento dentro do Lead.', 4, 1, '2024-07-24 17:00:50.719', '2024-07-24 17:05:50.719', '0003180', '', NULL, '2024-07-24 16:17:15.756239');
INSERT INTO public.tbchangerequest VALUES (215, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Linha do tempo Portal', 2, 2, 2, 1, 'Um cliente pediu pela criação de um novo acesso. No entanto, o acesso não funcionava devido uma regra para verificação da etapa em que o cliente se encontra na Linha do Tempo.
Os erros são provavelmente no preenchimento dos dados, mas foram feitas correções para que esse problema não se repita.', 3, 4, '2024-07-24 20:10:19.621', '2024-07-24 21:00:19.621', '3181', '', NULL, '2024-07-24 20:08:05.588523');
INSERT INTO public.tbchangerequest VALUES (216, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Mercado Livre primeira parte', 1, 1, 2, 2, 'Deploy da estrutura de faturas do mercado livre com opção de desabilitar a qualquer momento', 4, 1, '2024-07-27 15:00:00', '2024-07-27 20:00:00', '', '', NULL, '2024-07-25 12:43:28.739054');
INSERT INTO public.tbchangerequest VALUES (217, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Subida Solar Coca-Cola', 1, 1, 2, 2, 'Mudanças realizadas na esteira unificada , com foco na Solar Coca Cola', 3, 1, '2024-07-27 15:00:00', '2024-07-27 17:00:00', '', '4497', NULL, '2024-07-25 19:45:52.08209');
INSERT INTO public.tbchangerequest VALUES (218, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Inclusão do novo executivo nos relatorios do canal indireto', 1, 2, 2, 1, 'Preciso que incluam de forma definitiva o novo executivo Lucas Figueiredo Caldeira Brant, nos filtros dos relatórios do canal indireto.', 3, 1, '2024-07-26 16:18:33.203', '2024-07-26 16:30:34.283', '0003187', '', NULL, '2024-07-26 16:19:09.742721');
INSERT INTO public.tbchangerequest VALUES (219, 'flaviano.consultor@evoluaenergia.com.br', 'flaviano.consultor@evoluaenergia.com.br', 'Erro integração troca cartão Iugu', 21, 2, 2, 1, 'sera alterado a forma de substituição do antigo cartão para novo na transação', 6, 3, '2024-07-29 17:30:25.119', '2024-07-29 18:30:00', '', '', '2024-07-29 18:05:45.020464', '2024-07-29 17:24:46.019743');
INSERT INTO public.tbchangerequest VALUES (207, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Demonstrativo - Novas Distribuidoras', 20, 3, 2, 1, 'Criação de novos Metadados e classes que permitam a criação de demonstrativos para  ENERGISA MATO GROSSO, EQUATORIAL GOIAS e NEOENERGIA BAHIA. 
Como indicado no ticket 3151, essas novas Distribuidoras não possuem nenhuma regra adicional para geração de seus demonstrativos.', 3, 3, '2024-07-18 16:00:00', '2024-07-18 17:00:00', '', '', NULL, '2024-07-18 15:12:55.439757');
INSERT INTO public.tbchangerequest VALUES (194, 'Rodrigo Herthel', 'rodrigo.herthel@evoluaenergia.com.br', 'sdsd', 14, 2, 2, 1, 'sdds', 4, 2, '2024-07-31 13:00:00', '2024-07-31 14:00:00', '', '', NULL, '2024-07-10 23:02:32.964234');
INSERT INTO public.tbchangerequest VALUES (212, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Informativo sobre Pagamento de Boleto para clientes XIP', 2, 1, 2, 1, 'Descrito na historia.', 3, 4, '2024-07-24 13:00:00', '2024-07-24 14:00:00', '', '4390', NULL, '2024-07-23 15:36:42.884334');
INSERT INTO public.tbchangerequest VALUES (220, 'arthur.menezes@evoluaenergia.com.br', 'arthur.menezes@evoluaenergia.com.br', 'Possiblilar 4 digitos no CVV do Cartão de crédito', 21, 3, 2, 1, 'O campo cvv na tela de cadastro de cartão de crédito só possibiliata 3 dígitos, porém alguns possuem 4 dígitos', 6, 3, '2024-07-31 13:28:16.946', '2024-07-31 13:50:00', '', '', '2024-07-31 14:06:36.121312', '2024-07-31 13:28:25.977637');
INSERT INTO public.tbchangerequest VALUES (254, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Alterações de usabilidade no portal do cliente', 2, 1, 2, 1, 'Botão enter na tela de login, Desabilitar botão Fatura Distribuidora,
Card fechar no lugar certo.', 6, 4, '2024-08-13 14:28:02.778', '2024-08-13 14:40:00', '', '5252, 5249 e 5263', '2024-08-19 13:04:59.891375', '2024-08-13 14:28:10.748101');
INSERT INTO public.tbchangerequest VALUES (221, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Nova tarifa estado GO', 1, 3, 2, 1, 'Calculo de tarifa do estado de GO devido a uma mudança no layout da Equatorial', 6, 1, '2024-08-02 17:00:06.945', '2024-08-02 18:00:06.945', '', '', '2024-08-02 18:07:21.866047', '2024-08-02 14:10:35.346489');
INSERT INTO public.tbchangerequest VALUES (224, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Nova Jornada de Boas-Vindas Expansão', 6, 1, 2, 1, 'Criação de uma jornada de Boas-vindas para clientes de expansão. Jornada alimentada por automação, rodada diariamente com o seguinte filtro:
- C.Status =''Ativado''
- C.EmailValidado__c = ''True''
- C.Auditoria_B2C__c = ''Aprovado''
 - C.CelulaQualidade__c = ''Concluída''
- C.Data_de_Assinatura__c IS NOT NULL
 - C.Data_de_Assinatura__c >= ''2024-08-02''
- C.Data_de_ativacao__c IS NOT NULL
- C.Distribuidora__c  <> ''a0V2E00000EZ0DhUAL''
- UCO.Status_da_troca_de_titularidade__c = ''Concluído''
- UCO.Data_da_ultima_solicitacao__c >= ''2024-08-02''', 3, 2, '2024-08-02 22:00:00', '2024-08-02 22:30:00', '', '4781', NULL, '2024-08-02 21:56:31.805731');
INSERT INTO public.tbchangerequest VALUES (222, 'rodrigo.herthel@evoluaenergia.com.br', 'rodrigo.herthel@evoluaenergia.com.br', 'Mudar servidor de DNS', 2, 4, 2, 2, 'Para que o novo portal do cliente suba em produção, precisamos migrar o dominio evoluidos.com para o cloudflare.', 6, 4, '2024-08-02 21:30:24.598', '2024-08-02 22:30:24.598', '', '', '2024-08-02 22:11:15.076597', '2024-08-02 15:09:50.789989');
INSERT INTO public.tbchangerequest VALUES (223, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Mudar servidor de DNS - geração de termos', 1, 4, 2, 2, 'Para que a nova referência de geração de termos e o novo portal subam para produção, precisamos mudar o domínio para o cloudfare.', 6, 1, '2024-08-02 21:30:00', '2024-08-02 22:30:00', '', '', '2024-08-14 16:55:01.514336', '2024-08-02 15:11:31.545424');
INSERT INTO public.tbchangerequest VALUES (226, 'rodrigo.herthel@evoluaenergia.com.br', 'rodrigo.herthel@evoluaenergia.com.br', 'Ajustes no salesForce para publicação do Novo Portal do cliente', 2, 3, 2, 2, 'Para  subir o novo portal do cliente o SalesForce precisa ser atualizado (Homologação para Produção)', 3, 4, '2024-08-05 13:30:04.781', '2024-08-05 15:00:04.781', '', '', NULL, '2024-08-05 12:54:34.774691');
INSERT INTO public.tbchangerequest VALUES (225, 'rodrigo.herthel@evoluaenergia.com.br', 'rodrigo.herthel@evoluaenergia.com.br', 'Publicação do novo portal do Cliente', 2, 3, 2, 2, 'Subir a nova versão do portal cliente desenvolvido pela Fourtime.', 3, 4, '2024-08-05 13:30:03.479', '2024-08-05 15:00:03.479', '', '', NULL, '2024-08-05 12:51:51.801883');
INSERT INTO public.tbchangerequest VALUES (241, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Atualização da Data de filtro - Jornada Boas Vindas Expansão', 6, 3, 2, 1, 'Alteração da data de filtro da Jornada de boas vindas de expansão de 02/08 para 23/07', 3, 2, '2024-08-05 17:00:00', '2024-08-05 17:30:00', '', '', NULL, '2024-08-05 16:56:46.826638');
INSERT INTO public.tbchangerequest VALUES (242, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Atualização do filtro - Boas Vindas Expansão', 6, 3, 2, 1, 'O único filtro de data para a entrada na Jornada de boas vindas será a de "Data da ativação do contrato". O dia definido foi 23/07', 3, 2, '2024-08-05 17:00:00', '2024-08-05 17:30:00', '', '', NULL, '2024-08-05 17:09:19.363609');
INSERT INTO public.tbchangerequest VALUES (246, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Melhorar loading image na esteira', 1, 3, 2, 1, 'Melhorar o carregamento da página', 6, 1, '2024-08-07 22:00:29.937', '2024-08-07 23:00:29.937', '', '', '2024-08-14 16:54:54.375836', '2024-08-07 17:21:00.758437');
INSERT INTO public.tbchangerequest VALUES (245, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Adicionar evolua mix na esteira', 1, 3, 2, 1, 'Adicionado o Tipo de Produto Evolua Mix', 6, 1, '2024-08-07 16:40:56.094', '2024-08-07 16:50:56.094', '', '', '2024-08-14 16:54:58.033008', '2024-08-07 16:37:09.93257');
INSERT INTO public.tbchangerequest VALUES (247, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Mudança do campo tipo de produto', 1, 3, 2, 1, 'Mudar o nome do campo tipo de produto em todos os objetos que a utilizam.', 6, 1, '2024-08-07 22:00:51.189', '2024-08-08 00:00:00', '', '', '2024-08-14 16:54:52.744439', '2024-08-07 17:21:03.607011');
INSERT INTO public.tbchangerequest VALUES (248, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Injeção mínima da conta parceira', 1, 1, 2, 1, 'Colocar uma adequação para a injeção mínima de acordo com contas parceiras específicas.', 6, 1, '2024-08-07 23:00:59.825', '2024-08-08 00:00:00', '', '5103', '2024-08-14 16:54:49.342656', '2024-08-07 19:16:27.399418');
INSERT INTO public.tbchangerequest VALUES (250, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Correção Indicados Portal dos Clientes', 2, 2, 2, 2, 'O Novo Portal do Cliente enviado para produção com informações mockadas de Indicações do contrato. Essa modificação corrige esse erro utilizando as regras que foram passadas para quais status de contrato correspondem com os status da indicação:
-''Ativado'' => ''Aprovado'',
-''Aditivado'' => ''Aprovado'',
-''Aviso de Cancelamento'' => ''Aprovado'',
-''Retido'' => ''Aprovado'',
-''Análise de conta'' => ''Pendente'',
-''Escolhendo Produto'' => ''Pendente'',
-''Preenchimento'' => ''Pendente'',
-''Ajuste de documentos'' => ''Pendente'',
-''Análise de documento'' => ''Pendente'',
-''Aguardando Assinatura'' => ''Pendente'',
-''Auditoria'' => ''Pendente'',
-''Célula de qualidade'' => ''Pendente'',
-''Upload de arquivos'' => ''Pendente'',
-''Analise do Parceiro'' => ''Pendente'',
-''Troca de titularidade'' => ''Pendente''', 3, 4, '2024-08-08 17:20:03.418', '2024-08-08 18:00:00', '', '', NULL, '2024-08-08 17:20:14.990122');
INSERT INTO public.tbchangerequest VALUES (252, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'API chatbot não validando unidades consumidoras', 5, 2, 2, 1, 'Endpoint do salesforce alterado.', 6, 4, '2024-08-12 17:51:41.692', '2024-08-12 18:00:00', '3269', '', '2024-08-19 13:05:07.65429', '2024-08-12 17:51:51.570057');
INSERT INTO public.tbchangerequest VALUES (244, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Atualização das Jorndas de Validação', 6, 1, 2, 1, 'Para a atualização do conteúdo dos emails de validação de contrato, adicionando a logo da Solar CocaCola, serão necessárias mudanças na API da Evolua. Tais mudanças ja foram feitas e testadas, mas precisam ser implementadas pouco tempo antes das modificações do Marketing Cloud.', 3, 2, '2024-08-06 20:00:00', '2024-08-06 21:00:00', '', '4957', NULL, '2024-08-06 18:08:21.658347');
INSERT INTO public.tbchangerequest VALUES (251, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Correções portal', 2, 1, 2, 1, 'Correções dos motivos do caso no portal.', 6, 4, '2024-08-09 14:55:00', '2024-08-09 15:00:00', '', '5168', '2024-08-19 13:05:05.733924', '2024-08-09 14:54:42.308802');
INSERT INTO public.tbchangerequest VALUES (253, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Alteração ', 2, 1, 2, 2, 'Texto tCO2e para tCO₂e ', 6, 4, '2024-08-12 18:08:46.789', '2024-08-12 18:20:52.198', '', '5249', '2024-08-19 13:05:03.83', '2024-08-12 18:08:59.087078');
INSERT INTO public.tbchangerequest VALUES (255, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Inserção da regra de negócio RN', 1, 3, 2, 1, 'Adição da leitura e tratamento de contas do RN', 6, 1, '2024-08-14 17:00:49.216', '2024-08-14 18:00:49.216', '', '', '2024-08-14 15:51:49.4034', '2024-08-14 12:36:38.8205');
INSERT INTO public.tbchangerequest VALUES (249, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Envio de SMS na contratação', 1, 1, 2, 1, 'Envio de SMS na contratação, mandando a assinatura por email e SMS', 6, 1, '2024-08-08 11:00:50.497', '2024-08-08 11:20:50.497', '', '5111', '2024-08-14 16:54:47.194105', '2024-08-08 04:17:09.428283');
INSERT INTO public.tbchangerequest VALUES (243, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Melhorias da história de tipo de produto', 1, 3, 1, 1, '-verificar questão de aparecer cartão de crédito na evolua pré mesmo tendo excedido o valor de injeção máximo
-arrumar a questão de verificar conforme o produto para variar a box de forma de pagamento', 6, 1, '2024-08-05 23:00:00', '2024-08-06 00:00:00', '', '', '2024-08-14 16:54:59.823733', '2024-08-05 20:09:47.551774');
INSERT INTO public.tbchangerequest VALUES (271, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Unexpected Application Error no Portal do Cliente', 2, 2, 2, 1, 'O cliente ANTÔNIO CARLOS FERREIRA enviou um vídeo descrito no ticker do mantis a respeito do erro "Unexpected Application"', 6, 4, '2024-08-22 19:26:42.019', '2024-08-22 19:35:00', '0003312', '', '2024-08-23 19:31:25.54059', '2024-08-22 19:26:49.10946');
INSERT INTO public.tbchangerequest VALUES (263, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Mudança no termo de expansão', 24, 4, 2, 1, 'Mudança no termo de expansão para campos ficarem populados corretamente', 6, 1, '2024-08-19 18:28:47.519', '2024-08-19 18:40:50.405', '', '', '2024-08-20 19:16:14.617205', '2024-08-19 18:28:56.12089');
INSERT INTO public.tbchangerequest VALUES (264, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Documentos S3 ', 1, 1, 2, 1, 'Criação de novo fluxo para salvar documentos na S3 ao invés do salesforce', 6, 1, '2024-08-19 19:37:23.582', '2024-08-19 20:37:23.582', '', '5153 e 5154', '2024-08-20 23:18:13.280312', '2024-08-19 19:37:51.455813');
INSERT INTO public.tbchangerequest VALUES (260, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'ALteração do layout do card de faturas no portal', 2, 1, 2, 1, 'Alteração do layout com um novo informativo, caso não haja fatura distribuidora, "A sua fatura Cemig deve ser retirada no site do Cemig Atende"', 6, 4, '2024-08-16 13:20:59.497', '2024-08-16 13:40:00', '', '5252', '2024-08-19 13:04:57.280339', '2024-08-16 13:07:10.547418');
INSERT INTO public.tbchangerequest VALUES (258, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Criação de tarefas - Retenção e Recuperação', 18, 1, 2, 1, 'Criação de tarefas de Retenção e Recuperação', 6, 4, '2024-08-14 19:12:32.581', '2024-08-14 19:20:00', '', '5093, 5094', '2024-08-19 13:05:02.135065', '2024-08-14 19:12:38.68085');
INSERT INTO public.tbchangerequest VALUES (261, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Mudança nos termos de Expansão', 24, 4, 2, 1, 'Mudança nos termos de Expansão para voltar a ter o código', 6, 1, '2024-08-16 19:23:35.737', '2024-08-16 20:00:39.519', '', '', '2024-08-19 18:04:15.812258', '2024-08-16 19:24:06.087685');
INSERT INTO public.tbchangerequest VALUES (259, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Multiplas simulações com tipos de produto', 1, 1, 2, 1, 'Mudança no cálculo da energia passível para abranger todas as simulações', 5, 1, '2024-08-14 22:00:00', '2024-08-14 23:00:00', '', '', '2024-08-19 18:04:37.476991', '2024-08-14 19:42:03.039112');
INSERT INTO public.tbchangerequest VALUES (257, 'flaviano.consultor@evoluaenergia.com.br', 'flaviano.consultor@evoluaenergia.com.br', 'Correção de econde xml faturas Cermig', 4, 2, 2, 1, 'as descrições e informações da xml vão ser lidos com encode certo deixando a informação legível, sem caracteres estranhos ', 6, 3, '2024-08-14 17:30:55.865', '2024-08-14 18:00:55.865', '0000', '', '2024-08-22 16:22:31.542153', '2024-08-14 17:05:01.511028');
INSERT INTO public.tbchangerequest VALUES (256, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Salvar número de dias da fatura', 1, 2, 2, 1, 'Estória que ficou esquecida em HML e não foi pra frente, porém código ainda estava em HML', 6, 1, '2024-08-14 16:29:48.307', '2024-08-14 16:50:00', '', '', '2024-08-19 20:25:16.493917', '2024-08-14 16:30:04.735359');
INSERT INTO public.tbchangerequest VALUES (262, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Energia passível englobar Múltiplas simulações', 1, 1, 1, 1, 'Mudança no cálculo para pegar a energia passível de desconto de todas as simulações para verificar os produtos possíveis.', 6, 1, '2024-08-19 22:30:00', '2024-08-19 23:30:00', '', '', '2024-08-20 13:25:27.666704', '2024-08-19 17:33:11.168404');
INSERT INTO public.tbchangerequest VALUES (272, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Refatoração filtro de produtos', 1, 1, 2, 1, 'Refatoração do código de filtro dos produtos da Evolua', 6, 1, '2024-08-23 21:00:00', '2024-08-23 22:00:00', '', '', '2024-08-23 22:42:45.365229', '2024-08-23 12:18:01.307384');
INSERT INTO public.tbchangerequest VALUES (270, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Retroativo contratos MostSign salvar na S3', 24, 1, 2, 1, 'Estória para salvar os contratos da MosgtSign na S3 e disponibilizar link no salesforce', 3, 1, '2024-08-24 02:00:00', '2024-08-24 05:00:00', '', '', NULL, '2024-08-22 13:22:21.730166');
INSERT INTO public.tbchangerequest VALUES (265, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Bug Filtro Injeção Minima Produtos', 1, 2, 2, 1, 'Correção do filtro de injeção mínima para corrigir o filtro dos produtos correto.', 6, 1, '2024-08-20 19:30:00', '2024-08-20 20:00:00', '', '', '2024-08-21 17:40:42.710693', '2024-08-20 19:13:29.073179');
INSERT INTO public.tbchangerequest VALUES (266, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Pasta S3 MostSign/MKT e Consumo', 1, 2, 2, 1, 'Divisão de pastas na S3 entre MostSign e contratos link de validação, e alteração do consumo para liberar as vendas de expansão', 6, 1, '2024-08-20 21:00:00', '2024-08-20 21:30:00', '', '', '2024-08-21 17:40:46.666281', '2024-08-20 20:58:06.480971');
INSERT INTO public.tbchangerequest VALUES (267, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Nome da pasta na S3', 1, 2, 2, 1, 'Fix nome da pasta para montar o link da S3 nos objetos Salesforce', 6, 1, '2024-08-21 16:30:00', '2024-08-21 17:00:00', '', '', '2024-08-21 17:49:14.284607', '2024-08-21 16:28:54.021635');
INSERT INTO public.tbchangerequest VALUES (269, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Botão de solicitação de 2º via - Tela de início', 2, 1, 2, 1, 'Implementação do botão de solicitação de 2º Via na tela de início do portal.
Entregue em produção sem a funcionalidade. Implementação da funcionalidade descrita na historia.', 6, 4, '2024-08-22 12:38:10.264', '2024-08-22 13:20:00', '', '5311', '2024-08-22 13:21:32.565525', '2024-08-22 12:38:22.318216');
INSERT INTO public.tbchangerequest VALUES (275, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Mudança termos Evolua Max', 24, 4, 2, 1, 'Mudança termos Evolua Max para ser menos pesado o documento ao fazer a requisição.', 3, 1, '2024-08-26 18:36:26.805', '2024-08-26 18:45:30.316', '', '', NULL, '2024-08-26 18:36:32.546918');
INSERT INTO public.tbchangerequest VALUES (273, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Contratos cancelados', 1, 1, 2, 1, 'Estória para automatizar o preenchimento do status da carteira inativo e cancelamento na UCP e permitir que esta instalação passe pela esteira', 6, 1, '2024-08-23 21:30:00', '2024-08-23 22:30:00', '', '', '2024-08-23 22:42:48.807286', '2024-08-23 12:20:22.080712');
INSERT INTO public.tbchangerequest VALUES (274, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Erro ao solicitar 2 via na WebAPI - chatbot', 5, 2, 2, 2, 'Erro descrito no Ticket:
Segunda via de boleto, após inserir o número da instalação o chat informa que estamos com instabilidade e já trava a tela, não sendo possível clicar em outra opção.', 6, 4, '2024-08-23 19:32:40.809', '2024-08-23 19:50:44.291', '0003337', '', '2024-08-23 19:36:41.104021', '2024-08-23 19:32:51.924492');
INSERT INTO public.tbchangerequest VALUES (277, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Armazenamento contrato de locação e estatuto', 24, 1, 2, 1, 'Estória de armazenamento dos contratos de locação e estatuto atual dos clientes.', 3, 1, '2024-08-27 16:00:00', '2024-08-27 16:30:00', '', '', NULL, '2024-08-27 13:33:34.079908');
INSERT INTO public.tbchangerequest VALUES (276, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Downgrade Portal do cliente no heroku', 2, 4, 2, 1, 'Downgrade no portal do cliente.', 6, 4, '2024-08-27 13:31:00.042', '2024-08-27 15:31:00', '', '', '2024-08-27 14:12:45.341876', '2024-08-27 13:31:09.178503');
INSERT INTO public.tbchangerequest VALUES (279, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Armazenamento drive -> s3 Docusign', 1, 3, 2, 1, 'Armazenar contratos da docusign na s3', 6, 1, '2024-08-29 11:00:00', '2024-08-29 12:00:00', '', '', '2024-09-11 19:27:33.872913', '2024-08-28 22:18:40.372878');
INSERT INTO public.tbchangerequest VALUES (268, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Correção máscara CNPJ Boleto', 20, 2, 2, 1, 'Retirar funções inúteis que estavam causando problema na geração do boleto de alguns clientes', 3, 3, '2024-08-21 18:00:00', '2024-08-21 19:00:00', '', '', NULL, '2024-08-21 17:22:00.427345');
INSERT INTO public.tbchangerequest VALUES (280, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Correção link do contrato', 2, 2, 2, 1, 'Link do contrato não funcionando.', 6, 4, '2024-09-03 12:51:11.916', '2024-09-03 13:00:00', 'Mensagem no chat (Rodrigo)', '', '2024-09-11 18:29:46.476561', '2024-09-03 12:51:19.017224');
INSERT INTO public.tbchangerequest VALUES (282, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Retroativo arquivos DocuSign', 12, 1, 2, 1, 'Inserir assinaturas de documentos nos contratos da docusign referenciando ao arquivo dele na S3', 3, 1, '2024-09-04 17:30:00', '2024-09-04 18:00:00', '', '', NULL, '2024-09-04 16:40:50.325801');
INSERT INTO public.tbchangerequest VALUES (281, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Retroativo contrato de locação e estatuto', 12, 1, 2, 1, 'Retroativo para criar documentos da conta para o contrato de locação/estatuto nos contratos referentes aos arquivos do veículo de venda', 3, 1, '2024-09-04 17:00:00', '2024-09-04 18:00:00', '', '0', NULL, '2024-09-04 16:37:41.840785');
INSERT INTO public.tbchangerequest VALUES (283, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Bloquear usuários de cartão da Jornada de lembrete de vencimento', 6, 3, 2, 1, 'Adicionar um filtro nas jornadas de D-0 e D-2 para lembrete de vencimento da fatura para que clientes Cartão de crédito não sejam comunicados.', 3, 2, '2024-09-04 18:00:00', '2024-09-04 19:00:00', '', '', NULL, '2024-09-04 17:47:10.729141');
INSERT INTO public.tbchangerequest VALUES (284, 'matheus.fialho@evoluaenergia.com.br', 'matheus.fialho@evoluaenergia.com.br', 'Termos novos expansão', 24, 1, 2, 2, 'Adição de novos termos para cada veículo de venda de expansão', 3, 1, '2024-09-05 12:58:24.904', '2024-09-05 13:30:26.477', '', '5354', NULL, '2024-09-05 12:58:39.651547');
INSERT INTO public.tbchangerequest VALUES (286, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Tangram', 22, 1, 2, 3, 'Subida da nova versão do Tangram FD', 3, 3, '2024-09-09 22:00:00', '2024-09-09 23:00:00', '', '', NULL, '2024-09-09 18:01:28.647523');
INSERT INTO public.tbchangerequest VALUES (285, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Erro Demonstrativo antigo', 20, 2, 2, 1, 'O erro estava sendo causado por um método de formatação do CNPJ do consórcio. Uma correção foi implementada.', 3, 3, '2024-09-05 17:00:00', '2024-09-05 18:00:00', '0003384', '', NULL, '2024-09-05 16:48:42.974335');
INSERT INTO public.tbchangerequest VALUES (287, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Correção do TimeOut e statuscode no chatbot.', 5, 3, 2, 2, 'Alteração da lógica de validação de documento que estava ocasionando TimeOut na requisição.
Melhor retorno para o frontend no caso de invalidade do documento.', 6, 4, '2024-09-11 17:09:31.008', '2024-09-11 19:00:00', '', '', '2024-09-11 18:29:49.703745', '2024-09-11 17:09:41.6429');
INSERT INTO public.tbchangerequest VALUES (288, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Melhoria nos contratos para gerar o contrato sem a cooperativa', 24, 2, 2, 2, 'Mudança na geração dos contratos do java para pegar o nome da associação', 6, 1, '2024-09-11 18:00:00', '2024-09-11 18:30:00', '', '', '2024-09-11 19:27:29.007204', '2024-09-11 17:51:50.5814');
INSERT INTO public.tbchangerequest VALUES (289, 'flaviano.consultor@evoluaenergia.com.br', 'flaviano.consultor@evoluaenergia.com.br', 'Correção nome Neo Bahia nas faturas da distribuidora', 4, 2, 2, 1, 'Foi alterado como sistema lê as configuração de Distribuidora quando começa com Neo já que temos a Neo Pernambuco e Bahia', 3, 3, '2024-09-12 19:00:12.9', '2024-09-12 19:30:00', '3271', '', NULL, '2024-09-12 18:24:39.01079');
INSERT INTO public.tbchangerequest VALUES (308, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Esteira personalizada socar coca cola', 1, 1, 2, 3, 'Esteira personalizada solar coca cola', 6, 1, '2024-10-05 17:00:00', '2024-10-05 17:30:00', '', '', '2024-10-07 12:48:11.377764', '2024-10-02 17:08:55.403307');
INSERT INTO public.tbchangerequest VALUES (290, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Campo Status da Oferta (Task)', 18, 1, 2, 1, 'Campo novo no objeto Activity', 6, 4, '2024-09-13 13:26:43.887', '2024-09-13 13:26:45.199', '', '5659', '2024-09-13 13:30:14.355824', '2024-09-13 13:26:46.486179');
INSERT INTO public.tbchangerequest VALUES (292, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Mensagem de mudança do formato de pagamento - Demonstrativo XIP', 20, 1, 2, 2, 'Adicionado um texto e um popup informando o cliente Conta Xip sobre a mudança na sua modalidade de pagamento.', 3, 3, '2024-09-13 17:30:00', '2024-09-13 18:00:00', '', '4390', NULL, '2024-09-13 16:59:18.788495');
INSERT INTO public.tbchangerequest VALUES (299, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Atualiza valor total Demonstrativo Cemig', 20, 2, 2, 1, 'Atualiza o cálculo do demonstrativo para usar o valor "FaturaDistribuiroa__c.ValorTotalSerPago__c" para o valor final da Distribuidora no caso de Demonstrativos Cemig', 3, 3, '2024-09-26 18:00:00', '2024-09-26 19:00:00', '3497', '', NULL, '2024-09-26 17:50:08.400741');
INSERT INTO public.tbchangerequest VALUES (294, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Correção leitura FD - Esteira', 1, 2, 2, 1, 'Correção pra leitura da FD não quebrar a leitura da contratação', 6, 1, '2024-09-17 17:00:00', '2024-09-17 18:00:00', '3425', '', '2024-09-17 17:10:39.44907', '2024-09-17 16:16:00.745557');
INSERT INTO public.tbchangerequest VALUES (305, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Termo para expansão', 24, 1, 2, 3, 'Nova versão para os termos de expansão', 3, 1, '2024-10-01 18:00:00', '2024-10-01 19:00:00', '', '6055', NULL, '2024-10-01 17:27:49.336407');
INSERT INTO public.tbchangerequest VALUES (293, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Limpeza de dados - Marketing Cloud', 6, 1, 2, 1, 'Limpeza dos dados que não cumprem com os métodos internos da Evolua.', 3, 2, '2024-09-13 18:00:00', '2024-09-13 19:00:00', '', '5595', NULL, '2024-09-13 17:01:38.098001');
INSERT INTO public.tbchangerequest VALUES (295, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Saldo GD Tangram', 22, 1, 2, 2, 'Subida do workspace de saldo GD do tangram para medicoes distribuidoras do SF', 6, 3, '2024-09-21 13:00:00', '2024-09-21 15:00:00', '', '0', '2024-10-01 17:28:56.552925', '2024-09-20 13:46:49.313413');
INSERT INTO public.tbchangerequest VALUES (297, 'flaviano.consultor@evoluaenergia.com.br', 'flaviano.consultor@evoluaenergia.com.br', 'Correção Marcar Cobrar valor Distribuidora', 21, 2, 2, 1, 'Alterado o preenchimento do campo CobrarValorDistribuidora__c quando e feita a leitura pela mostQI', 3, 3, '2024-09-23 21:00:00', '2024-09-23 21:30:00', '3469', '', NULL, '2024-09-23 20:46:36.442648');
INSERT INTO public.tbchangerequest VALUES (298, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Campos da FD', 4, 1, 2, 1, 'Solicitação Pablo', 3, 3, '2024-09-26 21:30:00', '2024-09-26 23:00:00', '', '0', NULL, '2024-09-26 17:13:57.486544');
INSERT INTO public.tbchangerequest VALUES (300, 'gabriel.zanotelli@evoluaenergia.com.br', 'gabriel.zanotelli@evoluaenergia.com.br', 'Atualiza Contato - Jornada de Imóvel Alugado', 6, 3, 2, 1, 'Atualiza o Contato utilizado como "Subscriber" da jornada de Imóvel Alugado de forma a adequar a jornada ao novo método de divisão de contatos e corrigir possíveis erros de referencia nula', 3, 2, '2024-09-26 18:00:00', '2024-09-26 19:00:00', '', '', NULL, '2024-09-26 17:53:22.058402');
INSERT INTO public.tbchangerequest VALUES (301, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Código de autenticação do chatbot e ura', 5, 1, 2, 1, 'AuthCode', 6, 4, '2024-09-27 18:44:00', '2024-09-27 19:43:00', '', '4825  4493 4828 4827 4826', '2024-09-27 20:27:57.575563', '2024-09-27 18:43:50.547706');
INSERT INTO public.tbchangerequest VALUES (302, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Alteração termos de EXP para colocar cod de verificação', 24, 3, 2, 1, 'Alocando um item para o cod de verificação', 3, 1, '2024-09-30 17:00:00', '2024-09-30 18:00:00', '', '', NULL, '2024-09-30 16:59:18.734581');
INSERT INTO public.tbchangerequest VALUES (296, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'Correção alteração V5 PJ termos', 24, 2, 2, 2, 'Alteração para enviar termos PJ para a V5 se necessário', 6, 1, '2024-09-23 15:00:00', '2024-09-23 16:00:00', 'x', '', '2024-10-01 17:28:48.479312', '2024-09-23 14:41:33.820554');
INSERT INTO public.tbchangerequest VALUES (303, 'pablo.magalhaes@evoluaenergia.com.br', 'pablo.magalhaes@evoluaenergia.com.br', 'Subida de história de novos campos na FD', 4, 1, 2, 1, 'Subida de novos campos da Fatura Distribuidor, sendo estes número de dias, próxima leitura, leitura anterior e alerta residual', 6, 3, '2024-10-01 22:00:01.239', '2024-10-01 23:00:01.239', '', '5197 ', '2024-10-02 00:11:22.94809', '2024-10-01 12:42:20.898641');
INSERT INTO public.tbchangerequest VALUES (304, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Cliente acima de 1500kwh', 5, 1, 2, 1, 'Informar se o cliente é > 1500kwh na api', 6, 4, '2024-10-01 19:00:00', '2024-10-01 19:30:00', '', '4826', '2024-10-01 19:46:54.882766', '2024-10-01 17:12:14.826658');
INSERT INTO public.tbchangerequest VALUES (291, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Bug media de consumo', 1, 2, 2, 1, 'Arrumando a forma como pega a media de consumo na esteira', 6, 1, '2024-09-13 16:30:00', '2024-09-13 17:00:00', '3427', '', '2024-10-05 15:12:47.158899', '2024-09-13 16:05:09.865525');
INSERT INTO public.tbchangerequest VALUES (306, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Contratos Cancelados V2', 1, 1, 2, 1, 'Permitir que instalações de contratos cancelados possam subir novamente pela esteira', 6, 1, '2024-10-01 21:00:00', '2024-10-01 21:30:00', '', '', '2024-10-04 19:43:48.577525', '2024-10-01 19:19:30.284576');
INSERT INTO public.tbchangerequest VALUES (307, 'gustavo.riegert@evoluaenergia.com.br', 'gustavo.riegert@evoluaenergia.com.br', 'API dos Parceiros', 7, 3, 2, 1, 'Correção de erros de inserção de documentos e ativação de contrato', 3, 1, '2024-10-02 17:00:00', '2024-10-02 18:00:00', '', '', NULL, '2024-10-02 16:20:48.116394');
INSERT INTO public.tbchangerequest VALUES (312, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Injeção Mínima Evolua Pré', 1, 1, 2, 1, 'Injeção mínima na elegibilidade diminuirá para 80kwh, os produtos evolua pré terão injeção minima de 80, e os que não tem injeção será alterado para 120.', 6, 1, '2024-10-05 13:00:00', '2024-10-05 13:15:00', '', '', '2024-10-14 22:24:15.637879', '2024-10-04 19:45:37.32093');
INSERT INTO public.tbchangerequest VALUES (309, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Campanha evolua pré', 1, 1, 2, 1, 'Desenvolvimento para gerar termo de campanha evolua pré e anexá-lo na Most', 6, 1, '2024-10-05 18:00:00', '2024-10-05 18:30:00', '', '', '2024-10-05 15:12:42.417242', '2024-10-02 17:09:48.710523');
INSERT INTO public.tbchangerequest VALUES (311, 'pablo.magalhaes@evoluaenergia.com.br', 'pablo.magalhaes@evoluaenergia.com.br', 'Novo retorno no cadastro de vendedor', 7, 1, 2, 1, 'Novo retorno no cadastro de vendedor, agora recebe o ID do contato, caso ele exista no sistema', 6, 1, '2024-10-04 19:00:02.837', '2024-10-04 19:50:02.837', '', '0', '2024-10-07 12:52:48.285914', '2024-10-04 18:16:29.38258');
INSERT INTO public.tbchangerequest VALUES (310, 'pablo.magalhaes@evoluaenergia.com.br', 'pablo.magalhaes@evoluaenergia.com.br', 'Consumo KWH (Equatorial Goiás)', 4, 2, 1, 1, 'Mudança em forma como o consumo é lido.', 6, 3, '2024-10-03 10:00:00', '2024-10-03 11:00:00', '3451', '', '2024-10-07 12:52:51.441567', '2024-10-02 19:38:13.934859');
INSERT INTO public.tbchangerequest VALUES (323, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Portabilidade', 1, 1, 1, 1, 'Status de portabilidade no contrato e autmação para funcionar com auditoria/celula de qualidade', 6, 1, '2024-10-14 22:00:00', '2024-10-14 22:30:00', '', '', '2024-10-14 22:24:18.969457', '2024-10-14 21:09:03.427985');
INSERT INTO public.tbchangerequest VALUES (324, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Grandes Contas', 1, 1, 1, 2, 'Criação de novo tipo de canal na esteira de contratação', 6, 1, '2024-10-14 22:30:00', '2024-10-14 23:00:00', '', '', '2024-10-14 22:24:22.021399', '2024-10-14 21:09:51.474882');
INSERT INTO public.tbchangerequest VALUES (325, 'nicolas.vespucio@evoluaenergia.com.br', 'nicolas.vespucio@evoluaenergia.com.br', 'Consulta cpf coca cola', 1, 1, 1, 1, 'Consulta na API da Coca Cola o cpf do colaborador', 6, 1, '2024-10-14 23:00:00', '2024-10-14 23:30:00', '', '', '2024-10-14 22:24:24.311933', '2024-10-14 21:10:48.749458');
INSERT INTO public.tbchangerequest VALUES (326, 'flaviano.consultor@evoluaenergia.com.br', 'flaviano.consultor@evoluaenergia.com.br', 'Correção de Data de Vencimento', 4, 2, 2, 1, 'Alterado o processo de calculo da data de vencimento da transação conforme especificado em Story', 3, 3, '2024-10-15 17:00:00', '2024-10-15 17:30:00', '', '', NULL, '2024-10-15 16:38:03.326208');
INSERT INTO public.tbchangerequest VALUES (322, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Não entrou no portal', 18, 1, 2, 1, 'Criação do objeto task quando o cliente não acessar o portal por x tempo.', 6, 4, '2024-10-09 16:06:19.285', '2024-10-09 20:06:00', '', '5083', '2024-10-09 19:15:40.844271', '2024-10-09 16:06:26.453148');
INSERT INTO public.tbchangerequest VALUES (321, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Assinatura pendente', 18, 1, 2, 1, 'Criação do objeto task quando o cliene permanecer com a assinatura pendente por x tempo', 6, 4, '2024-10-09 16:05:38.757', '2024-10-09 20:05:00', '', '5086', '2024-10-09 19:15:43.06717', '2024-10-09 16:05:45.624153');
INSERT INTO public.tbchangerequest VALUES (320, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'CSAT Ruim', 18, 1, 2, 1, 'Criação do objeto task quando o cliente avaliar o CSAT como ruim', 6, 4, '2024-10-09 16:04:58.369', '2024-10-09 20:04:00', '', '5084', '2024-10-09 19:15:47.44269', '2024-10-09 16:05:05.563426');
INSERT INTO public.tbchangerequest VALUES (319, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', '2 faturas no mês', 18, 1, 2, 1, 'Criação do objeto task quando o cliente possuir 2 faturas no mes', 6, 4, '2024-10-09 16:04:21.949', '2024-10-09 20:04:00', '', '5087', '2024-10-09 19:15:49.572844', '2024-10-09 16:04:29.035089');
INSERT INTO public.tbchangerequest VALUES (317, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', '1 ano de Evolua', 2, 1, 2, 1, 'Criação do objeto task quando um cliente completar 1 ano de contrato', 6, 4, '2024-10-09 16:02:39.343', '2024-10-09 20:02:00', '', '5089', '2024-10-09 19:15:52.835999', '2024-10-09 16:02:51.277475');
INSERT INTO public.tbchangerequest VALUES (318, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Nenhuma fatura no mês', 18, 1, 2, 1, 'Criação do objeto task quando não for gerada uma fatura para o cliente no mes', 6, 4, '2024-10-09 16:03:41.747', '2024-10-09 20:03:00', '', '5088', '2024-10-09 19:15:56.411703', '2024-10-09 16:03:46.979032');
INSERT INTO public.tbchangerequest VALUES (316, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Contato de cortesia', 5, 1, 2, 1, 'Criação do objeto task para realizar um contato de cortesia aos clientes considerados "premium".', 6, 4, '2024-10-09 15:59:30.678', '2024-10-09 19:59:00', '', '5090', '2024-10-09 19:15:58.2085', '2024-10-09 15:59:37.001897');
INSERT INTO public.tbchangerequest VALUES (315, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Renovação de contrato', 18, 1, 2, 1, 'Criação do objeto Task quando o contrato do cleinte estiver expirando.', 6, 4, '2024-10-09 15:43:17.636', '2024-10-09 19:43:00', '', '5091', '2024-10-09 19:16:00.192923', '2024-10-09 15:43:40.519461');
INSERT INTO public.tbchangerequest VALUES (314, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Injeção reprovada', 18, 1, 2, 1, 'Criação do objeto Task caso o cliente tenha a injeção reprovada', 6, 4, '2024-10-09 15:42:32.218', '2024-10-09 19:42:00', '', '3134', '2024-10-09 19:16:01.885434', '2024-10-09 15:42:37.337864');
INSERT INTO public.tbchangerequest VALUES (313, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', '5 casos criados no mês', 18, 1, 2, 1, 'Criação do objeto Task quando 5 casos forem criados para o mesmo cliente no mesmo mês.', 6, 4, '2024-10-09 15:41:35.22', '2024-10-09 19:41:00', '', '5195', '2024-10-09 19:16:04.094733', '2024-10-09 15:41:43.989812');
INSERT INTO public.tbchangerequest VALUES (328, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Duplicação do campo Kwh do contrato para o caso.', 18, 1, 2, 1, 'Duplicação do campo Kwh do contrato para o caso. Sem impacto.', 6, 4, '2024-10-17 12:54:57.669', '2024-10-17 14:54:00', '', '5046', '2024-10-17 15:59:04.627516', '2024-10-17 12:55:15.046997');
INSERT INTO public.tbchangerequest VALUES (327, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Email Respondido pelo cliente - abrir caso vinculado.', 18, 1, 2, 1, 'Criação de uma automação para alterar o status do caso quando o cliente realizar uma resposta.', 6, 4, '2024-10-17 12:52:46.552', '2024-10-17 14:52:00', '', '5045', '2024-10-17 16:00:09.940377', '2024-10-17 12:52:55.542214');
INSERT INTO public.tbchangerequest VALUES (330, 'pedro.santos@evoluaenergia.com.br', 'pedro.santos@evoluaenergia.com.br', 'Preencher os dados no caso quando email-to-case', 18, 1, 2, 1, 'Preencher os campos do caso relacionadas ao email de quem enviou a conta.', 6, 4, '2024-10-17 12:58:49.767', '2024-10-17 14:58:00', '', '5049', '2024-10-17 16:00:11.856404', '2024-10-17 12:59:10.905473');


--
-- TOC entry 3479 (class 0 OID 16413)
-- Dependencies: 222
-- Data for Name: tbimpact; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbimpact VALUES (1, 'Insignificante', 1);
INSERT INTO public.tbimpact VALUES (2, 'Moderado', 2);
INSERT INTO public.tbimpact VALUES (3, 'Catastrófico', 3);


--
-- TOC entry 3484 (class 0 OID 16426)
-- Dependencies: 227
-- Data for Name: tboperator; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tboperator VALUES (2, 'Gustavo Riegert', 'gustavo.riegert@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (3, 'Pedro Santos', 'pedro.santos@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (4, 'Pedro Couto', 'pedro.couto@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (5, 'Matheus Fialho', 'matheus.fialho@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (6, 'Nicolas Vespúcio', 'nicolas.vespucio@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (7, 'Arthur Menezes', 'arthur.menezes@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (1, 'Rodrigo Herthel', 'rodrigo.herthel@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (9, 'Flaviano Toledo', 'flaviano.consultor@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (11, 'Gabriel Camatta', 'gabriel.zanotelli@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (12, 'Alexandre Nunes', 'alexandre.silva@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (13, 'Vinicius Ritter', 'vinicius.ritter@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (14, 'Luiz Rezende', 'luiz.rezende@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (10, 'Maxwell Souza', 'maxwell.souza@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (16, 'Victor Diniz', 'victor.diniz@evoluaenergia.com.br', NULL);
INSERT INTO public.tboperator VALUES (17, 'Pablo Magalhaes', 'pablo.magalhaes@evoluaenergia.com.br', NULL);


--
-- TOC entry 3486 (class 0 OID 16432)
-- Dependencies: 229
-- Data for Name: tbprobability; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbprobability VALUES (1, 'Baixa', 1);
INSERT INTO public.tbprobability VALUES (2, 'Média', 2);
INSERT INTO public.tbprobability VALUES (3, 'Alta', 3);


--
-- TOC entry 3481 (class 0 OID 16419)
-- Dependencies: 224
-- Data for Name: tbreason; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbreason VALUES (1, 'UserStories');
INSERT INTO public.tbreason VALUES (2, 'Correção de Bugs');
INSERT INTO public.tbreason VALUES (4, 'Configuração');
INSERT INTO public.tbreason VALUES (3, 'Melhoria ou débito técnico');


--
-- TOC entry 3490 (class 0 OID 16444)
-- Dependencies: 233
-- Data for Name: tbrisk; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbrisk VALUES (3, 3, 'Alto');
INSERT INTO public.tbrisk VALUES (1, 1, 'Baixo');
INSERT INTO public.tbrisk VALUES (2, 2, 'Médio');


--
-- TOC entry 3492 (class 0 OID 16450)
-- Dependencies: 235
-- Data for Name: tbriskImpactProbability; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public."tbriskImpactProbability" VALUES (10, 1, 1, 1);
INSERT INTO public."tbriskImpactProbability" VALUES (11, 1, 2, 1);
INSERT INTO public."tbriskImpactProbability" VALUES (12, 1, 3, 2);
INSERT INTO public."tbriskImpactProbability" VALUES (13, 2, 1, 1);
INSERT INTO public."tbriskImpactProbability" VALUES (14, 2, 2, 2);
INSERT INTO public."tbriskImpactProbability" VALUES (15, 2, 3, 3);
INSERT INTO public."tbriskImpactProbability" VALUES (16, 3, 1, 2);
INSERT INTO public."tbriskImpactProbability" VALUES (17, 3, 2, 3);
INSERT INTO public."tbriskImpactProbability" VALUES (18, 3, 3, 3);


--
-- TOC entry 3488 (class 0 OID 16438)
-- Dependencies: 231
-- Data for Name: tbschedule; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbschedule VALUES (10, '9h', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (11, '10h', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (12, '11h', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (13, '12h', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (14, '13h', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (15, '14h', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (16, '15h', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (17, '16h', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (18, '17h', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (19, '18h', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (20, '19h', 1, 2, 3, 4, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (21, '20h', 1, 2, 3, 4, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (22, '21h', 1, 2, 3, 4, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (23, '22h', 1, 2, 3, 4, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (24, '23h', 1, 2, 3, 4, NULL, NULL, NULL);
INSERT INTO public.tbschedule VALUES (1, '0h', NULL, 1, 2, 3, 4, NULL, NULL);
INSERT INTO public.tbschedule VALUES (2, '1h', NULL, 1, 2, 3, 4, NULL, NULL);
INSERT INTO public.tbschedule VALUES (3, '2h', NULL, 1, 2, 3, 4, NULL, NULL);
INSERT INTO public.tbschedule VALUES (4, '3h', NULL, 1, 2, 3, 4, NULL, NULL);
INSERT INTO public.tbschedule VALUES (5, '4h', NULL, 1, 2, 3, 4, NULL, NULL);
INSERT INTO public.tbschedule VALUES (6, '5h', NULL, 1, 2, 3, 4, NULL, NULL);
INSERT INTO public.tbschedule VALUES (7, '6h', NULL, 1, 2, 3, 4, NULL, NULL);
INSERT INTO public.tbschedule VALUES (8, '7h', NULL, 1, 2, 3, 4, NULL, NULL);
INSERT INTO public.tbschedule VALUES (9, '8h', NULL, 1, 2, 3, 4, NULL, NULL);


--
-- TOC entry 3496 (class 0 OID 16460)
-- Dependencies: 239
-- Data for Name: tbstatus; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbstatus VALUES (1, 'Novo');
INSERT INTO public.tbstatus VALUES (2, 'Aguardando');
INSERT INTO public.tbstatus VALUES (3, 'Aprovado');
INSERT INTO public.tbstatus VALUES (4, 'Reprovado');
INSERT INTO public.tbstatus VALUES (5, 'Cancelado');
INSERT INTO public.tbstatus VALUES (6, 'Concluído');


--
-- TOC entry 3494 (class 0 OID 16454)
-- Dependencies: 237
-- Data for Name: tbsystem; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbsystem VALUES (2, 'Portal do Cliente', 4);
INSERT INTO public.tbsystem VALUES (5, 'Chatbot', 4);
INSERT INTO public.tbsystem VALUES (6, 'Marketing Cloud', 2);
INSERT INTO public.tbsystem VALUES (8, 'URA', 4);
INSERT INTO public.tbsystem VALUES (10, 'Aplicativo Android', 4);
INSERT INTO public.tbsystem VALUES (11, 'Aplicativo IOS', 4);
INSERT INTO public.tbsystem VALUES (12, 'Dados', 1);
INSERT INTO public.tbsystem VALUES (13, 'Infra', 1);
INSERT INTO public.tbsystem VALUES (14, 'Dados', 2);
INSERT INTO public.tbsystem VALUES (15, 'Infra', 2);
INSERT INTO public.tbsystem VALUES (16, 'Dados', 3);
INSERT INTO public.tbsystem VALUES (17, 'Infra', 3);
INSERT INTO public.tbsystem VALUES (18, 'Dados', 4);
INSERT INTO public.tbsystem VALUES (19, 'Infra', 4);
INSERT INTO public.tbsystem VALUES (20, 'Demonstrativos', 3);
INSERT INTO public.tbsystem VALUES (21, 'Cobrança', 3);
INSERT INTO public.tbsystem VALUES (23, 'Robôs / RPA', 3);
INSERT INTO public.tbsystem VALUES (1, 'Esteira de contratação', 1);
INSERT INTO public.tbsystem VALUES (7, 'WebAPI de Parceiros', 1);
INSERT INTO public.tbsystem VALUES (24, 'Termo de adesão', 1);
INSERT INTO public.tbsystem VALUES (3, 'Portal do Parceiro', 1);
INSERT INTO public.tbsystem VALUES (4, 'Transação de faturas', 3);
INSERT INTO public.tbsystem VALUES (25, 'Site institucional', 2);
INSERT INTO public.tbsystem VALUES (22, 'Tangram', 3);


--
-- TOC entry 3498 (class 0 OID 16466)
-- Dependencies: 241
-- Data for Name: tbtype; Type: TABLE DATA; Schema: public; Owner: evolua
--

INSERT INTO public.tbtype VALUES (1, 'Programada');
INSERT INTO public.tbtype VALUES (2, 'Não Programada');


--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 216
-- Name: tbaprovacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbaprovacao_id_seq', 219, true);


--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 218
-- Name: tbaprovadores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbaprovadores_id_seq', 20, true);


--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 220
-- Name: tbarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbarea_id_seq', 4, true);


--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 223
-- Name: tbimpact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbimpact_id_seq', 3, true);


--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 225
-- Name: tbmotivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbmotivo_id_seq', 5, true);


--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 226
-- Name: tbmudanca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbmudanca_id_seq', 330, true);


--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 228
-- Name: tboperator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tboperator_id_seq', 17, true);


--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 230
-- Name: tbprobability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbprobability_id_seq', 3, true);


--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 232
-- Name: tbprogramacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbprogramacao_id_seq', 24, true);


--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 234
-- Name: tbrisco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbrisco_id_seq', 5, true);


--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 236
-- Name: tbrisks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbrisks_id_seq', 18, true);


--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 238
-- Name: tbsistemaplataforma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbsistemaplataforma_id_seq', 25, true);


--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 240
-- Name: tbstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbstatus_id_seq', 6, true);


--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 242
-- Name: tbtipomudanca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evolua
--

SELECT pg_catalog.setval('public.tbtipomudanca_id_seq', 2, true);


--
-- TOC entry 3287 (class 2606 OID 16488)
-- Name: tbarea tbarea_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbarea
    ADD CONSTRAINT tbarea_pk PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 16490)
-- Name: tbassessment tbassessment_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbassessment
    ADD CONSTRAINT tbassessment_pk PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 16492)
-- Name: tbassessors tbassessors_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbassessors
    ADD CONSTRAINT tbassessors_pk PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 16494)
-- Name: tbchangerequest tbchangerequest_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_pk PRIMARY KEY (id);


--
-- TOC entry 3291 (class 2606 OID 16496)
-- Name: tbimpact tbimpact_id_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbimpact
    ADD CONSTRAINT tbimpact_id_pk PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 16498)
-- Name: tboperator tboperator_id_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tboperator
    ADD CONSTRAINT tboperator_id_pk PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 16500)
-- Name: tbprobability tbprobability_id_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbprobability
    ADD CONSTRAINT tbprobability_id_pk PRIMARY KEY (id);


--
-- TOC entry 3293 (class 2606 OID 16502)
-- Name: tbreason tbreason_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbreason
    ADD CONSTRAINT tbreason_pk PRIMARY KEY (id);


--
-- TOC entry 3299 (class 2606 OID 16504)
-- Name: tbrisk tbrisk_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbrisk
    ADD CONSTRAINT tbrisk_pk PRIMARY KEY (id);


--
-- TOC entry 3301 (class 2606 OID 16506)
-- Name: tbriskImpactProbability tbriskimpactprobability_id_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public."tbriskImpactProbability"
    ADD CONSTRAINT tbriskimpactprobability_id_pk PRIMARY KEY (id);


--
-- TOC entry 3305 (class 2606 OID 16508)
-- Name: tbstatus tbstatus_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbstatus
    ADD CONSTRAINT tbstatus_pk PRIMARY KEY (id);


--
-- TOC entry 3303 (class 2606 OID 16510)
-- Name: tbsystem tbsystem_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbsystem
    ADD CONSTRAINT tbsystem_pk PRIMARY KEY (id);


--
-- TOC entry 3307 (class 2606 OID 16512)
-- Name: tbtype tbtype_pk; Type: CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbtype
    ADD CONSTRAINT tbtype_pk PRIMARY KEY (id);


--
-- TOC entry 3311 (class 2606 OID 16513)
-- Name: tbassessors tbaprovadores_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbassessors
    ADD CONSTRAINT tbaprovadores_fk FOREIGN KEY (areaid) REFERENCES public.tbarea(id);


--
-- TOC entry 3308 (class 2606 OID 16518)
-- Name: tbassessment tbassessment_assessors_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbassessment
    ADD CONSTRAINT tbassessment_assessors_fk FOREIGN KEY (assessorsid) REFERENCES public.tbassessors(id);


--
-- TOC entry 3309 (class 2606 OID 16523)
-- Name: tbassessment tbassessment_changerequest_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbassessment
    ADD CONSTRAINT tbassessment_changerequest_fk FOREIGN KEY (changerequestid) REFERENCES public.tbchangerequest(id);


--
-- TOC entry 3310 (class 2606 OID 16528)
-- Name: tbassessment tbassessment_status_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbassessment
    ADD CONSTRAINT tbassessment_status_fk FOREIGN KEY (statusid) REFERENCES public.tbstatus(id);


--
-- TOC entry 3312 (class 2606 OID 16533)
-- Name: tbchangerequest tbchangerequest_area_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_area_fk FOREIGN KEY (areaid) REFERENCES public.tbarea(id);


--
-- TOC entry 3313 (class 2606 OID 16538)
-- Name: tbchangerequest tbchangerequest_reason_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_reason_fk FOREIGN KEY (reasonid) REFERENCES public.tbreason(id);


--
-- TOC entry 3314 (class 2606 OID 16543)
-- Name: tbchangerequest tbchangerequest_risk_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_risk_fk FOREIGN KEY (riskid) REFERENCES public.tbrisk(id);


--
-- TOC entry 3315 (class 2606 OID 16548)
-- Name: tbchangerequest tbchangerequest_status_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_status_fk FOREIGN KEY (statusid) REFERENCES public.tbstatus(id);


--
-- TOC entry 3316 (class 2606 OID 16553)
-- Name: tbchangerequest tbchangerequest_system_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_system_fk FOREIGN KEY (systemid) REFERENCES public.tbsystem(id);


--
-- TOC entry 3317 (class 2606 OID 16558)
-- Name: tbchangerequest tbchangerequest_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_type_fk FOREIGN KEY (typeid) REFERENCES public.tbtype(id);


--
-- TOC entry 3318 (class 2606 OID 16563)
-- Name: tbschedule tbprogramacao_domingo_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_domingo_fk FOREIGN KEY (sunday) REFERENCES public.tbarea(id);


--
-- TOC entry 3319 (class 2606 OID 16568)
-- Name: tbschedule tbprogramacao_quarta_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_quarta_fk FOREIGN KEY (wednesday) REFERENCES public.tbarea(id);


--
-- TOC entry 3320 (class 2606 OID 16573)
-- Name: tbschedule tbprogramacao_quinta_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_quinta_fk FOREIGN KEY (thursday) REFERENCES public.tbarea(id);


--
-- TOC entry 3321 (class 2606 OID 16578)
-- Name: tbschedule tbprogramacao_sabado_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_sabado_fk FOREIGN KEY (saturday) REFERENCES public.tbarea(id);


--
-- TOC entry 3322 (class 2606 OID 16583)
-- Name: tbschedule tbprogramacao_segunda_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_segunda_fk FOREIGN KEY (monday) REFERENCES public.tbarea(id);


--
-- TOC entry 3323 (class 2606 OID 16588)
-- Name: tbschedule tbprogramacao_sexta_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_sexta_fk FOREIGN KEY (friday) REFERENCES public.tbarea(id);


--
-- TOC entry 3324 (class 2606 OID 16593)
-- Name: tbschedule tbprogramacao_terca_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_terca_fk FOREIGN KEY (tuesday) REFERENCES public.tbarea(id);


--
-- TOC entry 3325 (class 2606 OID 16598)
-- Name: tbriskImpactProbability tbriskimpactprobability_impact_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public."tbriskImpactProbability"
    ADD CONSTRAINT tbriskimpactprobability_impact_fk FOREIGN KEY (impactid) REFERENCES public.tbimpact(id);


--
-- TOC entry 3326 (class 2606 OID 16603)
-- Name: tbriskImpactProbability tbriskimpactprobability_probability_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public."tbriskImpactProbability"
    ADD CONSTRAINT tbriskimpactprobability_probability_fk FOREIGN KEY (probabilityid) REFERENCES public.tbprobability(id);


--
-- TOC entry 3327 (class 2606 OID 16608)
-- Name: tbriskImpactProbability tbriskimpactprobability_risk_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public."tbriskImpactProbability"
    ADD CONSTRAINT tbriskimpactprobability_risk_fk FOREIGN KEY (riskid) REFERENCES public.tbrisk(id);


--
-- TOC entry 3328 (class 2606 OID 16613)
-- Name: tbsystem tbsystem_area_fk; Type: FK CONSTRAINT; Schema: public; Owner: evolua
--

ALTER TABLE ONLY public.tbsystem
    ADD CONSTRAINT tbsystem_area_fk FOREIGN KEY (areaid) REFERENCES public.tbarea(id);


-- Completed on 2024-10-23 10:00:49

--
-- PostgreSQL database dump complete
--

