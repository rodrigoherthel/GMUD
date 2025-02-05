PGDMP  "    '    	        	    |            GMUD    16.4 (Debian 16.4-1.pgdg120+2)    16.3 |    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16389    GMUD    DATABASE     q   CREATE DATABASE "GMUD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE "GMUD";
                evolua    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16390    tbassessment    TABLE     �   CREATE TABLE public.tbassessment (
    id smallint NOT NULL,
    changerequestid smallint NOT NULL,
    statusid smallint NOT NULL,
    assessorsid smallint,
    comment character varying,
    "validateAt" timestamp without time zone NOT NULL
);
     DROP TABLE public.tbassessment;
       public         heap    evolua    false    4            �            1259    16395    tbaprovacao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbaprovacao_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbaprovacao_id_seq;
       public          evolua    false    215    4            �           0    0    tbaprovacao_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.tbaprovacao_id_seq OWNED BY public.tbassessment.id;
          public          evolua    false    216            �            1259    16396    tbassessors    TABLE     �   CREATE TABLE public.tbassessors (
    id smallint NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    areaid smallint NOT NULL
);
    DROP TABLE public.tbassessors;
       public         heap    evolua    false    4            �            1259    16401    tbaprovadores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbaprovadores_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbaprovadores_id_seq;
       public          evolua    false    217    4            �           0    0    tbaprovadores_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbaprovadores_id_seq OWNED BY public.tbassessors.id;
          public          evolua    false    218            �            1259    16402    tbarea    TABLE     ]   CREATE TABLE public.tbarea (
    id integer NOT NULL,
    area character varying NOT NULL
);
    DROP TABLE public.tbarea;
       public         heap    evolua    false    4            �            1259    16407    tbarea_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbarea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tbarea_id_seq;
       public          evolua    false    4    219            �           0    0    tbarea_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tbarea_id_seq OWNED BY public.tbarea.id;
          public          evolua    false    220            �            1259    16408    tbchangerequest    TABLE     �  CREATE TABLE public.tbchangerequest (
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
 #   DROP TABLE public.tbchangerequest;
       public         heap    evolua    false    4            �            1259    16413    tbimpact    TABLE     }   CREATE TABLE public.tbimpact (
    id integer NOT NULL,
    impact character varying NOT NULL,
    value integer NOT NULL
);
    DROP TABLE public.tbimpact;
       public         heap    evolua    false    4            �            1259    16418    tbimpact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbimpact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbimpact_id_seq;
       public          evolua    false    4    222            �           0    0    tbimpact_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbimpact_id_seq OWNED BY public.tbimpact.id;
          public          evolua    false    223            �            1259    16419    tbreason    TABLE     a   CREATE TABLE public.tbreason (
    id integer NOT NULL,
    reason character varying NOT NULL
);
    DROP TABLE public.tbreason;
       public         heap    evolua    false    4            �            1259    16424    tbmotivo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbmotivo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbmotivo_id_seq;
       public          evolua    false    224    4            �           0    0    tbmotivo_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbmotivo_id_seq OWNED BY public.tbreason.id;
          public          evolua    false    225            �            1259    16425    tbmudanca_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbmudanca_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbmudanca_id_seq;
       public          evolua    false    221    4            �           0    0    tbmudanca_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbmudanca_id_seq OWNED BY public.tbchangerequest.id;
          public          evolua    false    226            �            1259    16426 
   tboperator    TABLE     �   CREATE TABLE public.tboperator (
    id integer NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    areaid integer
);
    DROP TABLE public.tboperator;
       public         heap    evolua    false    4            �            1259    16431    tboperator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tboperator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tboperator_id_seq;
       public          evolua    false    4    227            �           0    0    tboperator_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tboperator_id_seq OWNED BY public.tboperator.id;
          public          evolua    false    228            �            1259    16432    tbprobability    TABLE     �   CREATE TABLE public.tbprobability (
    id integer NOT NULL,
    probability character varying NOT NULL,
    value integer NOT NULL
);
 !   DROP TABLE public.tbprobability;
       public         heap    evolua    false    4            �            1259    16437    tbprobability_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbprobability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbprobability_id_seq;
       public          evolua    false    4    229            �           0    0    tbprobability_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tbprobability_id_seq OWNED BY public.tbprobability.id;
          public          evolua    false    230            �            1259    16438 
   tbschedule    TABLE     �   CREATE TABLE public.tbschedule (
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
    DROP TABLE public.tbschedule;
       public         heap    evolua    false    4            �            1259    16443    tbprogramacao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbprogramacao_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbprogramacao_id_seq;
       public          evolua    false    231    4            �           0    0    tbprogramacao_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.tbprogramacao_id_seq OWNED BY public.tbschedule.id;
          public          evolua    false    232            �            1259    16444    tbrisk    TABLE     �   CREATE TABLE public.tbrisk (
    id smallint NOT NULL,
    grade smallint NOT NULL,
    description character varying NOT NULL
);
    DROP TABLE public.tbrisk;
       public         heap    evolua    false    4            �            1259    16449    tbrisco_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbrisco_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tbrisco_id_seq;
       public          evolua    false    4    233            �           0    0    tbrisco_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.tbrisco_id_seq OWNED BY public.tbrisk.id;
          public          evolua    false    234            �            1259    16450    tbriskImpactProbability    TABLE     �   CREATE TABLE public."tbriskImpactProbability" (
    id integer NOT NULL,
    impactid integer NOT NULL,
    probabilityid integer NOT NULL,
    riskid integer NOT NULL
);
 -   DROP TABLE public."tbriskImpactProbability";
       public         heap    evolua    false    4            �            1259    16453    tbrisks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbrisks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tbrisks_id_seq;
       public          evolua    false    235    4            �           0    0    tbrisks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbrisks_id_seq OWNED BY public."tbriskImpactProbability".id;
          public          evolua    false    236            �            1259    16454    tbsystem    TABLE        CREATE TABLE public.tbsystem (
    id integer NOT NULL,
    system character varying NOT NULL,
    areaid smallint NOT NULL
);
    DROP TABLE public.tbsystem;
       public         heap    evolua    false    4            �            1259    16459    tbsistemaplataforma_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbsistemaplataforma_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbsistemaplataforma_id_seq;
       public          evolua    false    4    237            �           0    0    tbsistemaplataforma_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.tbsistemaplataforma_id_seq OWNED BY public.tbsystem.id;
          public          evolua    false    238            �            1259    16460    tbstatus    TABLE     a   CREATE TABLE public.tbstatus (
    id integer NOT NULL,
    status character varying NOT NULL
);
    DROP TABLE public.tbstatus;
       public         heap    evolua    false    4            �            1259    16465    tbstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbstatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbstatus_id_seq;
       public          evolua    false    4    239            �           0    0    tbstatus_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbstatus_id_seq OWNED BY public.tbstatus.id;
          public          evolua    false    240            �            1259    16466    tbtype    TABLE     ]   CREATE TABLE public.tbtype (
    id integer NOT NULL,
    type character varying NOT NULL
);
    DROP TABLE public.tbtype;
       public         heap    evolua    false    4            �            1259    16471    tbtipomudanca_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbtipomudanca_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbtipomudanca_id_seq;
       public          evolua    false    4    241            �           0    0    tbtipomudanca_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.tbtipomudanca_id_seq OWNED BY public.tbtype.id;
          public          evolua    false    242            �           2604    16472 	   tbarea id    DEFAULT     f   ALTER TABLE ONLY public.tbarea ALTER COLUMN id SET DEFAULT nextval('public.tbarea_id_seq'::regclass);
 8   ALTER TABLE public.tbarea ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    220    219            �           2604    16473    tbassessment id    DEFAULT     q   ALTER TABLE ONLY public.tbassessment ALTER COLUMN id SET DEFAULT nextval('public.tbaprovacao_id_seq'::regclass);
 >   ALTER TABLE public.tbassessment ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    216    215            �           2604    16474    tbassessors id    DEFAULT     r   ALTER TABLE ONLY public.tbassessors ALTER COLUMN id SET DEFAULT nextval('public.tbaprovadores_id_seq'::regclass);
 =   ALTER TABLE public.tbassessors ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    218    217            �           2604    16475    tbchangerequest id    DEFAULT     r   ALTER TABLE ONLY public.tbchangerequest ALTER COLUMN id SET DEFAULT nextval('public.tbmudanca_id_seq'::regclass);
 A   ALTER TABLE public.tbchangerequest ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    226    221            �           2604    16476    tbimpact id    DEFAULT     j   ALTER TABLE ONLY public.tbimpact ALTER COLUMN id SET DEFAULT nextval('public.tbimpact_id_seq'::regclass);
 :   ALTER TABLE public.tbimpact ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    223    222            �           2604    16477    tboperator id    DEFAULT     n   ALTER TABLE ONLY public.tboperator ALTER COLUMN id SET DEFAULT nextval('public.tboperator_id_seq'::regclass);
 <   ALTER TABLE public.tboperator ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    228    227            �           2604    16478    tbprobability id    DEFAULT     t   ALTER TABLE ONLY public.tbprobability ALTER COLUMN id SET DEFAULT nextval('public.tbprobability_id_seq'::regclass);
 ?   ALTER TABLE public.tbprobability ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    230    229            �           2604    16479    tbreason id    DEFAULT     j   ALTER TABLE ONLY public.tbreason ALTER COLUMN id SET DEFAULT nextval('public.tbmotivo_id_seq'::regclass);
 :   ALTER TABLE public.tbreason ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    225    224            �           2604    16480 	   tbrisk id    DEFAULT     g   ALTER TABLE ONLY public.tbrisk ALTER COLUMN id SET DEFAULT nextval('public.tbrisco_id_seq'::regclass);
 8   ALTER TABLE public.tbrisk ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    234    233            �           2604    16481    tbriskImpactProbability id    DEFAULT     z   ALTER TABLE ONLY public."tbriskImpactProbability" ALTER COLUMN id SET DEFAULT nextval('public.tbrisks_id_seq'::regclass);
 K   ALTER TABLE public."tbriskImpactProbability" ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    236    235            �           2604    16482    tbschedule id    DEFAULT     q   ALTER TABLE ONLY public.tbschedule ALTER COLUMN id SET DEFAULT nextval('public.tbprogramacao_id_seq'::regclass);
 <   ALTER TABLE public.tbschedule ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    232    231            �           2604    16483    tbstatus id    DEFAULT     j   ALTER TABLE ONLY public.tbstatus ALTER COLUMN id SET DEFAULT nextval('public.tbstatus_id_seq'::regclass);
 :   ALTER TABLE public.tbstatus ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    240    239            �           2604    16484    tbsystem id    DEFAULT     u   ALTER TABLE ONLY public.tbsystem ALTER COLUMN id SET DEFAULT nextval('public.tbsistemaplataforma_id_seq'::regclass);
 :   ALTER TABLE public.tbsystem ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    238    237            �           2604    16485 	   tbtype id    DEFAULT     m   ALTER TABLE ONLY public.tbtype ALTER COLUMN id SET DEFAULT nextval('public.tbtipomudanca_id_seq'::regclass);
 8   ALTER TABLE public.tbtype ALTER COLUMN id DROP DEFAULT;
       public          evolua    false    242    241            �          0    16402    tbarea 
   TABLE DATA           *   COPY public.tbarea (id, area) FROM stdin;
    public          evolua    false    219   �       �          0    16390    tbassessment 
   TABLE DATA           i   COPY public.tbassessment (id, changerequestid, statusid, assessorsid, comment, "validateAt") FROM stdin;
    public          evolua    false    215   0�       �          0    16396    tbassessors 
   TABLE DATA           >   COPY public.tbassessors (id, name, email, areaid) FROM stdin;
    public          evolua    false    217   ��       �          0    16408    tbchangerequest 
   TABLE DATA           �   COPY public.tbchangerequest (id, requestername, requestermail, title, systemid, reasonid, typeid, riskid, description, statusid, areaid, forecaststart, forecastend, bugsid, userstoriesid, closuredatetime, createdat) FROM stdin;
    public          evolua    false    221   �       �          0    16413    tbimpact 
   TABLE DATA           5   COPY public.tbimpact (id, impact, value) FROM stdin;
    public          evolua    false    222   ��       �          0    16426 
   tboperator 
   TABLE DATA           =   COPY public.tboperator (id, name, email, areaid) FROM stdin;
    public          evolua    false    227   B�       �          0    16432    tbprobability 
   TABLE DATA           ?   COPY public.tbprobability (id, probability, value) FROM stdin;
    public          evolua    false    229   ��       �          0    16419    tbreason 
   TABLE DATA           .   COPY public.tbreason (id, reason) FROM stdin;
    public          evolua    false    224   ��       �          0    16444    tbrisk 
   TABLE DATA           8   COPY public.tbrisk (id, grade, description) FROM stdin;
    public          evolua    false    233   S�       �          0    16450    tbriskImpactProbability 
   TABLE DATA           X   COPY public."tbriskImpactProbability" (id, impactid, probabilityid, riskid) FROM stdin;
    public          evolua    false    235   ��       �          0    16438 
   tbschedule 
   TABLE DATA           n   COPY public.tbschedule (id, hour, monday, tuesday, wednesday, thursday, friday, saturday, sunday) FROM stdin;
    public          evolua    false    231   ��       �          0    16460    tbstatus 
   TABLE DATA           .   COPY public.tbstatus (id, status) FROM stdin;
    public          evolua    false    239   i�       �          0    16454    tbsystem 
   TABLE DATA           6   COPY public.tbsystem (id, system, areaid) FROM stdin;
    public          evolua    false    237   ��       �          0    16466    tbtype 
   TABLE DATA           *   COPY public.tbtype (id, type) FROM stdin;
    public          evolua    false    241   ��       �           0    0    tbaprovacao_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tbaprovacao_id_seq', 219, true);
          public          evolua    false    216            �           0    0    tbaprovadores_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbaprovadores_id_seq', 20, true);
          public          evolua    false    218            �           0    0    tbarea_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tbarea_id_seq', 4, true);
          public          evolua    false    220            �           0    0    tbimpact_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tbimpact_id_seq', 3, true);
          public          evolua    false    223            �           0    0    tbmotivo_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tbmotivo_id_seq', 5, true);
          public          evolua    false    225            �           0    0    tbmudanca_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tbmudanca_id_seq', 330, true);
          public          evolua    false    226            �           0    0    tboperator_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tboperator_id_seq', 17, true);
          public          evolua    false    228            �           0    0    tbprobability_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tbprobability_id_seq', 3, true);
          public          evolua    false    230            �           0    0    tbprogramacao_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbprogramacao_id_seq', 24, true);
          public          evolua    false    232            �           0    0    tbrisco_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tbrisco_id_seq', 5, true);
          public          evolua    false    234            �           0    0    tbrisks_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tbrisks_id_seq', 18, true);
          public          evolua    false    236            �           0    0    tbsistemaplataforma_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tbsistemaplataforma_id_seq', 25, true);
          public          evolua    false    238            �           0    0    tbstatus_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tbstatus_id_seq', 6, true);
          public          evolua    false    240            �           0    0    tbtipomudanca_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tbtipomudanca_id_seq', 2, true);
          public          evolua    false    242            �           2606    16488    tbarea tbarea_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.tbarea
    ADD CONSTRAINT tbarea_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tbarea DROP CONSTRAINT tbarea_pk;
       public            evolua    false    219            �           2606    16490    tbassessment tbassessment_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbassessment
    ADD CONSTRAINT tbassessment_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tbassessment DROP CONSTRAINT tbassessment_pk;
       public            evolua    false    215            �           2606    16492    tbassessors tbassessors_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbassessors
    ADD CONSTRAINT tbassessors_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tbassessors DROP CONSTRAINT tbassessors_pk;
       public            evolua    false    217            �           2606    16494 "   tbchangerequest tbchangerequest_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tbchangerequest DROP CONSTRAINT tbchangerequest_pk;
       public            evolua    false    221            �           2606    16496    tbimpact tbimpact_id_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.tbimpact
    ADD CONSTRAINT tbimpact_id_pk PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.tbimpact DROP CONSTRAINT tbimpact_id_pk;
       public            evolua    false    222            �           2606    16498    tboperator tboperator_id_pk 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tboperator
    ADD CONSTRAINT tboperator_id_pk PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.tboperator DROP CONSTRAINT tboperator_id_pk;
       public            evolua    false    227            �           2606    16500 !   tbprobability tbprobability_id_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbprobability
    ADD CONSTRAINT tbprobability_id_pk PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.tbprobability DROP CONSTRAINT tbprobability_id_pk;
       public            evolua    false    229            �           2606    16502    tbreason tbreason_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.tbreason
    ADD CONSTRAINT tbreason_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tbreason DROP CONSTRAINT tbreason_pk;
       public            evolua    false    224            �           2606    16504    tbrisk tbrisk_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.tbrisk
    ADD CONSTRAINT tbrisk_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tbrisk DROP CONSTRAINT tbrisk_pk;
       public            evolua    false    233            �           2606    16506 5   tbriskImpactProbability tbriskimpactprobability_id_pk 
   CONSTRAINT     u   ALTER TABLE ONLY public."tbriskImpactProbability"
    ADD CONSTRAINT tbriskimpactprobability_id_pk PRIMARY KEY (id);
 a   ALTER TABLE ONLY public."tbriskImpactProbability" DROP CONSTRAINT tbriskimpactprobability_id_pk;
       public            evolua    false    235            �           2606    16508    tbstatus tbstatus_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.tbstatus
    ADD CONSTRAINT tbstatus_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tbstatus DROP CONSTRAINT tbstatus_pk;
       public            evolua    false    239            �           2606    16510    tbsystem tbsystem_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.tbsystem
    ADD CONSTRAINT tbsystem_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tbsystem DROP CONSTRAINT tbsystem_pk;
       public            evolua    false    237            �           2606    16512    tbtype tbtype_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.tbtype
    ADD CONSTRAINT tbtype_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tbtype DROP CONSTRAINT tbtype_pk;
       public            evolua    false    241            �           2606    16513    tbassessors tbaprovadores_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.tbassessors
    ADD CONSTRAINT tbaprovadores_fk FOREIGN KEY (areaid) REFERENCES public.tbarea(id);
 F   ALTER TABLE ONLY public.tbassessors DROP CONSTRAINT tbaprovadores_fk;
       public          evolua    false    217    219    3287            �           2606    16518 &   tbassessment tbassessment_assessors_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbassessment
    ADD CONSTRAINT tbassessment_assessors_fk FOREIGN KEY (assessorsid) REFERENCES public.tbassessors(id);
 P   ALTER TABLE ONLY public.tbassessment DROP CONSTRAINT tbassessment_assessors_fk;
       public          evolua    false    217    3285    215            �           2606    16523 *   tbassessment tbassessment_changerequest_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbassessment
    ADD CONSTRAINT tbassessment_changerequest_fk FOREIGN KEY (changerequestid) REFERENCES public.tbchangerequest(id);
 T   ALTER TABLE ONLY public.tbassessment DROP CONSTRAINT tbassessment_changerequest_fk;
       public          evolua    false    221    3289    215            �           2606    16528 #   tbassessment tbassessment_status_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbassessment
    ADD CONSTRAINT tbassessment_status_fk FOREIGN KEY (statusid) REFERENCES public.tbstatus(id);
 M   ALTER TABLE ONLY public.tbassessment DROP CONSTRAINT tbassessment_status_fk;
       public          evolua    false    239    215    3305            �           2606    16533 '   tbchangerequest tbchangerequest_area_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_area_fk FOREIGN KEY (areaid) REFERENCES public.tbarea(id);
 Q   ALTER TABLE ONLY public.tbchangerequest DROP CONSTRAINT tbchangerequest_area_fk;
       public          evolua    false    219    221    3287            �           2606    16538 )   tbchangerequest tbchangerequest_reason_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_reason_fk FOREIGN KEY (reasonid) REFERENCES public.tbreason(id);
 S   ALTER TABLE ONLY public.tbchangerequest DROP CONSTRAINT tbchangerequest_reason_fk;
       public          evolua    false    224    3293    221            �           2606    16543 '   tbchangerequest tbchangerequest_risk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_risk_fk FOREIGN KEY (riskid) REFERENCES public.tbrisk(id);
 Q   ALTER TABLE ONLY public.tbchangerequest DROP CONSTRAINT tbchangerequest_risk_fk;
       public          evolua    false    221    233    3299            �           2606    16548 )   tbchangerequest tbchangerequest_status_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_status_fk FOREIGN KEY (statusid) REFERENCES public.tbstatus(id);
 S   ALTER TABLE ONLY public.tbchangerequest DROP CONSTRAINT tbchangerequest_status_fk;
       public          evolua    false    221    239    3305            �           2606    16553 )   tbchangerequest tbchangerequest_system_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_system_fk FOREIGN KEY (systemid) REFERENCES public.tbsystem(id);
 S   ALTER TABLE ONLY public.tbchangerequest DROP CONSTRAINT tbchangerequest_system_fk;
       public          evolua    false    221    237    3303            �           2606    16558 '   tbchangerequest tbchangerequest_type_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbchangerequest
    ADD CONSTRAINT tbchangerequest_type_fk FOREIGN KEY (typeid) REFERENCES public.tbtype(id);
 Q   ALTER TABLE ONLY public.tbchangerequest DROP CONSTRAINT tbchangerequest_type_fk;
       public          evolua    false    221    241    3307            �           2606    16563 #   tbschedule tbprogramacao_domingo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_domingo_fk FOREIGN KEY (sunday) REFERENCES public.tbarea(id);
 M   ALTER TABLE ONLY public.tbschedule DROP CONSTRAINT tbprogramacao_domingo_fk;
       public          evolua    false    219    3287    231            �           2606    16568 "   tbschedule tbprogramacao_quarta_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_quarta_fk FOREIGN KEY (wednesday) REFERENCES public.tbarea(id);
 L   ALTER TABLE ONLY public.tbschedule DROP CONSTRAINT tbprogramacao_quarta_fk;
       public          evolua    false    3287    219    231            �           2606    16573 "   tbschedule tbprogramacao_quinta_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_quinta_fk FOREIGN KEY (thursday) REFERENCES public.tbarea(id);
 L   ALTER TABLE ONLY public.tbschedule DROP CONSTRAINT tbprogramacao_quinta_fk;
       public          evolua    false    3287    219    231            �           2606    16578 "   tbschedule tbprogramacao_sabado_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_sabado_fk FOREIGN KEY (saturday) REFERENCES public.tbarea(id);
 L   ALTER TABLE ONLY public.tbschedule DROP CONSTRAINT tbprogramacao_sabado_fk;
       public          evolua    false    3287    219    231            �           2606    16583 #   tbschedule tbprogramacao_segunda_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_segunda_fk FOREIGN KEY (monday) REFERENCES public.tbarea(id);
 M   ALTER TABLE ONLY public.tbschedule DROP CONSTRAINT tbprogramacao_segunda_fk;
       public          evolua    false    3287    231    219            �           2606    16588 !   tbschedule tbprogramacao_sexta_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_sexta_fk FOREIGN KEY (friday) REFERENCES public.tbarea(id);
 K   ALTER TABLE ONLY public.tbschedule DROP CONSTRAINT tbprogramacao_sexta_fk;
       public          evolua    false    231    3287    219            �           2606    16593 !   tbschedule tbprogramacao_terca_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbschedule
    ADD CONSTRAINT tbprogramacao_terca_fk FOREIGN KEY (tuesday) REFERENCES public.tbarea(id);
 K   ALTER TABLE ONLY public.tbschedule DROP CONSTRAINT tbprogramacao_terca_fk;
       public          evolua    false    3287    219    231            �           2606    16598 9   tbriskImpactProbability tbriskimpactprobability_impact_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."tbriskImpactProbability"
    ADD CONSTRAINT tbriskimpactprobability_impact_fk FOREIGN KEY (impactid) REFERENCES public.tbimpact(id);
 e   ALTER TABLE ONLY public."tbriskImpactProbability" DROP CONSTRAINT tbriskimpactprobability_impact_fk;
       public          evolua    false    222    235    3291            �           2606    16603 >   tbriskImpactProbability tbriskimpactprobability_probability_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."tbriskImpactProbability"
    ADD CONSTRAINT tbriskimpactprobability_probability_fk FOREIGN KEY (probabilityid) REFERENCES public.tbprobability(id);
 j   ALTER TABLE ONLY public."tbriskImpactProbability" DROP CONSTRAINT tbriskimpactprobability_probability_fk;
       public          evolua    false    3297    235    229            �           2606    16608 7   tbriskImpactProbability tbriskimpactprobability_risk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."tbriskImpactProbability"
    ADD CONSTRAINT tbriskimpactprobability_risk_fk FOREIGN KEY (riskid) REFERENCES public.tbrisk(id);
 c   ALTER TABLE ONLY public."tbriskImpactProbability" DROP CONSTRAINT tbriskimpactprobability_risk_fk;
       public          evolua    false    235    3299    233                        2606    16613    tbsystem tbsystem_area_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.tbsystem
    ADD CONSTRAINT tbsystem_area_fk FOREIGN KEY (areaid) REFERENCES public.tbarea(id);
 C   ALTER TABLE ONLY public.tbsystem DROP CONSTRAINT tbsystem_area_fk;
       public          evolua    false    219    3287    237            �   >   x�3�t��+)J,I<����|.# ?�4/3�7�tK,)-J�M�+��2�t,I�KɄ�b���� F��      �   {	  x��XMo�=���������&�7@6��'7��8�&&9�� �k��!�!'�r�˫&eqZ$r`Y�uwU��x=d��pe�����8<����voM|K��.9,MОM�vA�� �/8V䖎�D�g2����s8o��hg�78�Ǧ�yEii͒�f�e?��Tq��Q�hl��-)��R�/�gν��"^ZZZ��qbK�c�ؒ�a��.�2p��A����������{������as�=�}��xח�����~[������~W��?Mc��Mן�͗�pw�c�t�~{����_�_���n�?)��o����u�_�TC��_�%��F�N`�_�S����`4"�>d�:�q�GGpi���9d�ӂ��q>�;&�"I&]1�W86K��L�����Q���IV��}t��M��qNp�/9����!���Z\Zzl�4�uF�E�������z,�~�?V�z�ַ��C7l{թ��ݺL��a,����!^��2�NG� �����/e�|�6��2���X^� 6[�ŷ\�2= �V���R�.��(+��ڍh
������+d��)�z.�Ks��w�f@��>�cPc�X�\V�;�D�PƢ���~<|���}��O���n|<�^���u�)��~�3���6`a{��w:���������}Wa���VL���e�m�֬�Ͱ�vc�����0���G�4v7�T6��0�������C��8�|�a�Ѳv�� ��R+�7���d�Ǹ���$WM �ـ�d�>�r8��-�h�Vp�}��p�'5�#���������eN̈HKX�R��Z
�~{/q@H�]�]8TV!��n�է�O(�{�鮰�Gi�	�O��ʮ�F�ˮg+�|+���|�2�s)9�h������OF���ImQtN��^f�z�F2������]�|�D���47��u�{�D�n�4 ��u\����rI��	ۢ�������S��G<"yT�IR?7�4I֩>�ǹ���Ϻ�#���/�7Xw`�_����}_Qu��aܔ��^�C�ۯ�(��I���u���{9hR�8�k'�o����w�T<ݔ�����|����oި���4=���[�R�Y���]���$���W5u)��୘Z��JV{�gz��݌�J�a�M���%��pw��G��î��e�˜9�.j�����N�-��\��6�����:�P_�2�a�7&��Cu���Q��v�&��3�[B�w�	.7��f��e�;��U%���� �β7g��5��"/�S�UzT���I"���Ѣ�#��C�
��ޞ��� bm|�= �w-��I�	� G�7쑓Ɇ�	z7{X�U��90,4/zd4>Ȇ���.�L����{����Z�*PIL\��p�}~e!�<�EE�/8�����r���v�e���0���e�C�ZiI���mp�Y��66�R���k\F[��ѐ�)/�"8;��f�/�*���650�p�1�8P�+�GE����� FBSxL�\-�a��CnxP���*�O#�����GIF\H�+�M4�	U�B�	�]Bp�&6!��K�Ծ%d#��ȗpY��� jb[�5��!Y���c�(�c�Fo\��Nplcy�UQ��	���ڃcU6V��$���d�(P�^e�a��p�gw~k�hX[�π,���f���zgq��[Nt	'�֙(���dO��'\�'�$炒����G��+}D%)���\{"�*��n�kFB:���.��{тN�Uאָ��rJ���@n�2\��-��[0��)���+�$�'�(�-!>�t2H���l����1��~7��z��5t�^dʻ�c7��d���5:h4�8�<3q��|3R�!�%p�Ω�j\wCA�(�n#9/��>���D897��FUo�V$z��	*s�Bǆ�u�}&�$��9̏=�p��~�� ��cs����岘,�*�Ch87)$�@��j7�0�`�m��9�L_���U	I}Gc�T���JAbb�<-���Q�?�\,��MS�����!��EɈ�ƞ�I�ޖ,�C��9�b@��lN��e AM@Fd)Y�ٸS;�_K�d�'(��~��3~	�Y��H)�iQ�S���Qi)byɋ�jʄK04�r���u�.�,k��A\�s��{.tt��.j��� 0F��l�P6��������B�-����5.��ЛH�,��6`�}��y]_!Q�g�،&�<y��t��0�s\�WH�&�3݌�f	n�&wG�����Ȣ�j���g#)3���{	�	�ي�P_5������Q�1B�y1P�X� ���^���3�c/�:�\?��t�Y������K8�5#]��^,�,��      �   E  x���MN�0F��S�V��wG�Z�
K6��M��r�^�[���',�E���2�7_[
�A��l�ƁP}�xg��{���Cu�Zh�ãǳ��ʭu���?*񺖉���I>���T9�u%K��Gl�K���5/T=\`�\�����|Ǧ�z�2\W�b/�_�H�̃�z>+�由��
�0���qC*;{2��$�m��FV��Iq{w�`H���qFV4r�Ԝ"�_[g�#d��z�^NM0z�!"�E���H���̧:���p�T'zԗ>��̈�09+��[��m��J�l6��s���zz      �      x��}�r�F��9�)`u�n3��vۦHV��UE6ɪ�]���Y�2) �M�8{������0�6�I6'�d�d�="� TWk��RU 	xx���ų7��C�o��|����e��>T������x�V����}���j�ֳ7�e�9�{,�`W���jS7E��fl&f��ov�}�.6�"�7���~�
6���E]yw���M�̃E����6��j�������Q������ ���	Eo�J/�������(�f_����bW���l�#._D��&��<VY��?��#�D�f�/�/2���D��G鬮�uy_����'�'M�9��9Nς�뛳�������t~zq=cHa�qY��!���b����A����N�r{UD��&��G�n@���H�&X�Jܩ&��i88?��c��DŽqю��+,%�ġH��I�?�*��DJ��e��JS#�\S�Өsru>�
ޜ�M.��o����?N�W7s�����s|;���Wsx5M��>|�MS�%��~��=��]U�������*�wu�P48��ˉsu�,�b	4��sb�up���;�~L�E�7&�XG7đ@��(	��)K{�D��)�$�%�-�et�_^]��� }��n.��o�O�(1х9<76M���ϔ��Xb��^�=+��8ca�T�Sx�lvY,�ĞT�]5����!����2��k�#��A���I����@z��Q��n\QK�(����δ�i2\xW(�dxܳ�j_~��w�fY�?�?��n��ADn�V*��؝��
$ ����Ɠc�au��=������>���4�]��T�����.nF��<w��H0iQ��CR��-,�_�)ѓ7��� 5S�����s��
�ޕ�"�6p�Ğ\�o���rE��Y��)���-;}ppW�x���̽)�H��L��U�R)�b��V#����Mp������
�vګ7�N���{1F/��,MG^L���P��<��0J�P)���/`���<����4C��mEύr�|�X��ח�UU��ճ-_��f��v�CE2�� �x��Jy0ߣ`v����ҫۯ����u>P��� �c.��8��q�s.�G{���D�#����*��CYi���l�4�$�>���[��[��M�po�+� ��#����}'B�ʞ�>�ߴˁ�ͮG&�~�����ǳc6"�� ���U�/?��2�x�D�ױ�����9��������9���goOA���c�f�ժ\h�����ߌ�CL�=.
˷�\E�������o�eC�v�"_��-MR��Xfa�޸&�`2�	i/*�D��hj2B�!xww��^�X\���5����#\��iI�����l@��$�8��]�$wA�t��$�+��g�����j�~T_���zx��F���n�3-��i�,�S� ���}~[��*�.�Tp�V�8%?qڼi*�+4�0��
���r�K���@����@9 �uފKgv�
t�9�u�;lJ��(s��@�X2$��.�T�\4MA��\��ۃ?U��)=�K"Eb1	c�иh�t���f� N g�i�lW���54����)tr����@�f�Q����!���1s���K�@X11�[� F7�,7�~ze��>u�	ڏ�������LO0���i.�I�#���)(j��{7�!��68k �5"��w~f������^gI�~�7�V8�90/�X��0��`�)o<�*z���&qg�%I�d��1�$M| o򺼃���׋�Xþ��T�bH
<���3����j�_�cE���toQU�@>=��YQ����	�Kz���5�DN�b�p�
,Gm�9�`�(j�צ�gغ[4CϚB��F�;3ȝD]�g=��a�@0 _�$c�3���\���%(麼݃Ɍ~�W���W+��EĪw����5��KP!9�2@=�2��AS}�"T����{b�_#�S��ֺ���4�AC��~&��F	�OD�}���A������03F˒E\Ŭ��I�Q2�*U�+�a���!���ܢEN@\I$�3,k��={}���ޟ�.�D��\ܜ���.<K�Q�������kBA�54� 	I@�,�+;Nl�F>ےD�iL�爣ߌ������2 �K�u�ʨ6{�n�3(�r��ɓ��5260)�s�}�١N;
�>�w�)�d��K��)�Y� aU.:�؁d@K؇��f��Pz��p��~��hH�7�]����v�"����X|0���#�>���:�+ Y4�
O�Eә� `��U��0-��5�pK�ٞ����,�x�=��2̌�γ��ÍQ
�4U\��ǳM��V��f�R����zS��-�ˇ_�Q�}@�a��i�]U��N�|�k�VtR�YfE�|ݶ�2&�-WҐv�
��vV�9$I:���).yAW 1)�gY�$�'�Lt\�o��	�t��>����kK��o`�	�"����`!�
GD��jA �[/���?~}-:���̒>	�c����<BѐNkp6���s���Qǣ�A��E�T�ĀAk7iw{Eg��O8W�nYw���T��_x�_��M��=���|���g��<�G�+W��~�<L���[L<&���K��&�J��ǉ�v���8� F��3 z69�8CPj���(��ӠG�u���ϸ�2 ��E
�W���6�r�/[\�����]���D)�d������X��7��l��Ta�#��B\�8�X�HiQ2�2��-�з �����Q��Wc�W�!!��hmK����p��	���<8ltDp�������<x3��^���8
����yu>��8�����م�;>�~>�/6`UĻm�; �.L�#�=����Ҋh[5����|蔫�~����I:����7ڳqO4�X2&����Ȧ�"KT֯�e��f�,g�چ�r�hC��� 3�.���Q ���f1X�1�'��x����q\K\��0r_����&���R�ʌ�U��N��R��`��M5���t�'���<LS)�m������!<Z�]���|ʜK`��vU�:�`zܗ�� V=y�> q�����G��J��Z\<<��)�K�ec<������~$�.O�1#�����.ؽ��o���v�'�4������{�'�G�j�Cƙ`}���$���JN�S:�e�'bl���ي �@:�:����YE�ñ�%諸/7G`�w��VO��B_����%����+V�{ts�q�0�my3�!���0I�޸��T\�@q���S<ݴ�X��	Ҍ�DWfsHY���~�.�*u rl�����I������_��ꢍ. �@��^�9���`�Յ�ar�b�6���[�w��� �ҁ^9���Eĭ�DT�x���W@��0��H&�%�F�P� ���rb�J�2.R�}a��g�`78��bE�|ջ�A��E��٥��� a�,ſn��9��P#�j	d�g��)����J<�b�"8	�w��M����w.���a����xU_~������rd��3~b.�ɦ��sR����/{�Haf�T�����NAp}	��m�g�_o/n���^�6ˍ��#,�mzoI�?�"��$�p���1�M��g�����N?����5ߝ\J}�̿$�?�P���U��q�/ޖ���FG�������"�v̀L����*9}�QL�a|)(��YE:���9��N�^ϸ�V_vF���� <o���c�]
Һ��ާe�S�>�T�`���U�_��P�܍�˓�Pe�df|ֻ�z��$V�/B�����f�1qԭGH`t���5�s�k���⮨�,(�=vk��
����S[@F;p���#��9��)�ty���) ,����VI%9b�xB��ʯ <�䫢yY��������
�#������� �X�Os9��_1�|���&�s�95 A�/ӳ\�[�;�}"$��Ļ��C��g�, ���h�'��1;��	�z٣\�'=�]��>�u��;    ,�ESl��G�g��M�y�&"�I6B=>F�(Y���-���]�ɭ������8���n�E&�k�^e鯲���-�d����}�j���Q��Y��� O_�Q��8Ly���]�U�~�\��'t�*4�L �H�͓tk(�����-��B�ObS���",��g��)����aY(b��L��eɁh_U�����E��Gۢ�v&���5܁���`3����<3�x��hL���I]M@�]
�pE��(��u�w)t ��	�<JG�)��M$��g��7�c��V`ݩ8�2�W���0"���M���1EN����mR�μ�V�c���'f#�k�u�]cp�~W�Y^��,b����NM��p���DJ)�v�1�qrJ��W&[���:���e�}g
дs �\G�c6�`)/��Vm�e�5�bq��&͐z¤��\�SO�H)(A�H+���ȉ�y�,�D��:��I{97^ܦ�X��
�	�r��=ff��e�G�D�R;��h]-�΍:�?j]GN"hp�4�W�tB��,�MH��acr��q��u\�O���/A�h��u�tܴ�V�e��&y7-7�mz��[s<�����.-˟��P���|� �D�{l"F��Xbs��*��>}�']��=�YT����űY�nTyl�椫�Ş�5��gjg�N���������N�.���'��W&������n�ڔ�r������gZ��=��7�B��q+�&��"\C]�z�������d�e��4���y����n����<�pLFlC)����8)�8�,�U��!u�6�#��F�z�Ur~�,�3��7<�塝�����̆k�RI����Gط�F,i���/j5r��E��x��OK��Q���ˣ7�樍o��B_7�.ގ��#�:�)0%��(�m,��+:m�����[7���A���s�8b�
d�����0~K�H�6�&׾N��NY�&��Q��=���.���p3���;11J�>���������y16c�b��n�ږ/ �j�.|��geT4���˜�2��t��U����BX�(M#<�bڨp�y_>�)A��N.�q��_�߿�k3�X�I���19��X�6� ��k�0�� Ei%�cԄ��s'�Ɛ1�T�~�<������N\���XR���.j�ޒnt���q��0��O�q+�X�'�w�S�a
@1Rϐ�Sa�3�U�7��Mn%�g��,����PN��4H�t�~A�1�;(]w-��v�c# 8��,�Q�<&�;�<�������-u(Sr���\H�6�F��بo�<	FV[�[
�E�F�J%s��bY�!ۦ}�����r]� KL����j�,�s���Kf��O�8�v[=��L]��N��#���C3G$Bx�D�*��T�%�|Ɠi���M��׮X����;Т�Q�w`��i��s����ߞ_`)�������V��R�1;���ò�	�:���P>���� ��%�cjK����=��*�efǜ2"��ƅ����.
��0p�d���q�YbQ&�g������:����lO�3QStN`�������}*���P_�f�*S��Bv\ji�Ag{ t��H�v1�i�b9�:m-��Z�㡟�ܭ���$���v���.E�c>����Ƈ��d��"T)w���u� j��$��K'8�@&B�F]���. o�T�@���4h��2�ȑ�t�t[��b4���ފv�M�.���#��p��������<h��œb]�c�DAp��T�%qtS��<�S�(��Pc5� ��yzO�;9%#i$	��6�7E	��(�h�O:
v�q����"�*��l��U��o-�g`��0���*|��ף���I�l*e�qn(e�(P��� 7��b5�d�i��1�5D��QBEZ?+�FgM\�tR9�9�~\����ōZ̋I��Eڎ��YO�!BRa�8�Io1]�&1��Ƥ	��3�]ap��BScC�D�����4��עl}S�����I�;>߀���	�?�� v�c�X��C5��2���ώبC���V���+V��\��1x\�Z	x�ٻ�m�!5#��Eϝ
ĻlڪԊuMU'�E1�(����7,��'���]��9`����|��

�$��9�H���8f��<�c'�pPK}��d���ȋ'���Z�:݉��k��% g� 2�=����
 ��o^�uqPU{�
5"�6�Ӝ� Ǹ�-��wLI p[
f�WC���#3���&�@(���IO���t��Uu$}s�iL
��3Ox (�I ��.�AkTk�����_QI��5:�W*{�$"������ ���d��q'������Z`q*#4o�%�(W��tvs���4�'.[��f"��i}�Y�����1>��zT�F9���M���0��H�,��d��i�]��q]�o,�&�ʙ����$���ƽ^D�o�����0*�=6.e�U�uե��� �sl��M65)�>��/��wA�7%6/;���K��!tLԴn� �W�qXۃ�c02��s�&�Э�.�[��(�Do$]��ܴ��9Hkd �T���uEpB���N�|(m��ﱆ��K�ٶNH�(��7����I�*o���`�A�P���#u�c�Q����D�ee	
'�R��ivAT3g�R�%f{x�u�;���m����Ie����=�>�1��G��<�����"�4�a�Y,���&1�L��3������) 	�ٍ)�(7����9|�kZι���ޗ�[]a�2��/6؆���ra7� a�VB�hk��?�z�r�J��
C�]˾�46�p<��
#+2V�ɯh�<,���3m�1���iF��!8�c�VȻۢ��K��}>w�w��j�aC_�P�L K�N�";.���|�S8�&$f��NĤ���s�ذt@���u9Ď�갰�ɹ@O:��b�u~aד��ޝ\�ұ�M����� K�)>T���oɆ�G�����l�O
�Ox��t�m�4�i
���6��S]������ ~aC�&j��=����*2���\�G��4	�X�w��Ï�i�Y�W{��觬��|m�M�ۖ}�W��X{�-y�l�ͲjA:%#�ǶQ{l�`��{�B����P?덃�$Az�%O�sLh��cV�d��pM�K�MВi���]�1<ۦQ���i�Dܡ�d�[){�]c���t�����~�$Iү��c#ɯxA��#@&Y��'a���ol�Z���q? ~�7%,̙=VS�c�Д�I�+=��jҴe#Y��#e!KR	x�lB��#˺|(�`P�$�����7`�fJ�F��-3!Yw�3W>ʨ�V/6H8K�N��.� ɇ��8���ׇ�������2ɳ��m���� ����i%�C�~�}Cޮ��WI^�GGL�:�W��>�Vc��I2�C	jVbL�	�8��P��'m��u���f�gle/"a*.�6�A�[���Ev��F�������g��|Y1zT��I�O�����C����/`���\��i1��n]*C�g6�U1~�����R.򞶿�
c�t�^Zve��Hޟ��p��*Ųa��~e�ɓ*�%�s���)���������ߪ$�����Z��?ۍ��m'�����FO�6W$��S%I�Ē�U��˛=��Um?qc95- �n�Bg�> K�,������s��
���(�?�q������>Pm��H�;�)�y�щ�nF�OgwlDڍ��Du"���k�v��,���I�����d�2���(��h����:]��R��Hz��>�(�0�I(�Q��(�0� |�-�)O�M��h=㶥�i�����SG�e��؋��11��:|ư�U,j��N��L�9�n����uc",ڨ ���x�և����|r�%�,�n��0x���j&��ņ>��cz̞2D���� �>E�&6BR�L�p�A\�w &�AMA@���R�N�� �  �WƸ:�x_�<�^�r��0V B��i��'7=��e�) �ڒ���7Kݻ�1>��}�8G|�)�,쪲,~C��da��m^�,���g�鄰�&�_�ШvU���-�
�'�������V�����ԁ���p�tvlK����x�6@�{����af»�;�9�Mo�������qz��r|���כt�����&������&n����S���OJ<�����G@�}�&��K�I�����B?�'67\�@�F�)�H�'5L�5~% 4������]���!.��J��.��2��N<9{��n�ECYَy���	5JL�"I�X�0^�=hR�ԅ��I��L+*��n}��M���&o����E�t�����r��/�Ȁ´L���>��
�+)3��wUP�P*�cbl&��W6uqwk����*T�;+/o�ߘYw�:�eKtA���b���:uCy��9![���4%s[唪���]t�{_/#��������{L_��Uv��0IS��R���uJ�L���BוO@J/��M{��(�ogM�~�8=����X����/�{�x��z]ԗ�=v�ynU����~{�^g-W=������ס_��S˂����ń�]R8�Q�6B6eZ��41�/O��[S>��o�0dI��49K�X��_W���dq�-���m6�?)�(�����(�����t���������5 4��I�#�J�>�0c-:�#�Z60�X-bI�}j+�5`��\��@���_�����S�5��'6 H���aca4���޸96��� w���R�ꋥ�,��Q�F�ʦ���|��N����[��
�V�_7�|A��7`�mcH�}�*zM�	�^�t23r����`N�\��	J�W
�]�uv��������W��FYPi�mס��]{۹ř#�MݠA�By��� �B�l:�������"w���y1M!����<$�����2�Mi���B�3Ϻ��.��U���0��>�6T��2A4���8u_�V��oN�p�x��Ï��c�ɥ���Զ��t(���s8^��-��H���\��ز]+P��������c�$&�/eR_`���%F�v����m��*���?��c�\P\�2�)U�vi��~���le�_�9T�bd��pR-�sR�Rz�C=6���0�*@� ���	���1Ο �D�X�Wd	�$�b  �2P�8k�B��^�_U]TK�:Pcn��1���4N�Bi��#w�.P��5�B��T)j�)3����нW��lk�օ�N#�6CD��4��ۛ�)��1���w��gC�%Slt�UXe�3"�Q��B�%f[�����Շ��FƟ4ɪ��/i�NpS���s{�7	E������i��R��
?>b���\G�
�F@Қ������\�׬pIg��,�.ʌg|�X��{ �*�O&����ã0���M��c;���4��(��oZ1dzmc3I��=|��Nŭȷe'�z`���E[��^�X�� ��ǆ��-�'~2�6���� s�t�L�9�-o�>���C���f_�-%���-<��T�=e:�c9�J�,�-�y��(����t�p'm*\��p�n�Z�\e�f/F�Hkc�jш�����XJ�9(l�=�d`�F���RI��S�LE�Y�*Ae�L�̰w	
_�t��%���_e����3/n_x� ;"�6)qA�1�e.Ę�ta,�h6m҂��o��M��e}���a�3<"��l�����K�HJ,E�r��ø�v�����_چgi�鮱��iZ0Z��~��L�zE��4F��a>]�ǩx1I�d}�TX�'x�	�ik�H��a��i�~�v9Ֆ��i��# 'n����+�eX0 ��1�O��P�������p,a�_1Gz:�@��l���ݗ0L^ 0��f�4�(��+�梸E=x~j����1��x,�.�����k3x����v\����	�rvy�2&��Rꭗ���T�&��)	��/������������ht�Ƌ��"�Z�+��}�$���c�U����*�]�d*N<n�(	_���@�g�O�N��V^����m��{�x�FE��[��ݦ����m���/�AK8�w���X��ub)�8��]�4Pj�Ɠ,� 6Ɣ�zU�)�;�U�|���mP�?�|̫S�}�t�ݱ^��K��9Y6$rS"r��`;ў98ۻ^�B0��h�W����M$_V�m�������ؓ��e2��d|KF!��& ? �����W��.qL���/u.��޶��sĜ�hu]�����&�����������Dt�h�ds�\�"�i5Mg÷���;mCƺV�[8W_[?��lN���.L���G���������%�WC��c�R�]�Q*�;2AX� %��a��O�}��͝�]�M�?M]b�ot�+�^?������H�0��8�ԐJYR�#�a',�%3r�d�}�D9 ���j_�	�䘷D�Cː�q�BPGig}BHK9B��|�ِ����|��2��}xև�7�� �I����Ŋf� ���|� �A20X�.[,#��Ó`���1��$MM�<�Dr�o��J�U��[�b��:B��`!E�$ܒ$�D!�UY6`�}<Idx�M�I��\�I1��9�tШɬZ�/R���^�|#0q/��",��"��e,���bq�%Y$ Ͱi��l �6��M��'�$���N+%�.��P�|���~�)�1:]��χ�J�?^Da��	�2C�,!�N����RIE,� ���`W������e�_ �E�B}S�q� ��xܖu�
�}!)�����!i�)c}�PR�x��p1P�e2f@�i�͝3�.tO��(C�uw�v:-ܖ��b#D��]��FjA�����0M�c�%�I�?m���^���e��:�e� #L�0�!�{u��h�a�����O-]l�F�%����C���Y�о�Fl���W�tB���+��v���������]�ȱ�|�Ha���^����ػBR��D�������8C�ħ������J�|��؟���{(7�h>�4��=�}Є�lC�h+�M�� Q9*A���]>JU��L)ާ�RyWt�2�$.���(�ά�j�ԉgi�����`�Ůz�����h���N����9�fQf	�*ֶ���X%[J%q�'[jɖ��@ԩXF��2�z��'���g��?�`TY      �   >   x�3���+�L��L�LN�+I�4�2���OI-JL��4�2�tN,I,.):��"�Ә+F��� ���      �   [  x�u�Kn�0�דS�Vy�]tQ
+6CbKN�����^�������ǿg
��<v$r�*e=T�����:2U�l�Q�ȋ��>��A���[OnH7Bҙ?�5O��I�v�k��h45AQ^GLz��:qR���[h�6VdǕ�������u�b��z� G�MĤ7��J�+��\��Ȳ��4�`c��ؒ�&�J������ɦ���/�^F����Ud��^���VFݱ-����}�t�t�Vgp����ɵ��B�`��������E�y��� m�����p���#�yF�n����6P|pw=�8�,HKK8�Ő�aŃ��m`�<9��e�e���2I      �   +   x�3�tJ̬H�4�2��=�2%3�ӈ˘�1�$�Ә+F��� �"w      �   [   x�3�-N-
.�/�L-�2�t�/*J=����|��T���b.�`^ZfziQ"X�˘�75'�#Q!�T!��ʤ̒|���+��2��b���� �� �      �   +   x�3�4�t�)��2�4�tJ̬��2�4��=�2%3�+F��� ���      �   <   x����0�x���4�0����ęþˌ��US-7f%4�	�Fށ1�*���]�~�
�      �      x�uл1�xT��%��5�
� �_�8�a`�`��\/���5	��R�Y�y���M4��Ь�F�j�E���.�p�ˏ��S�Y�y���Ohg�D��DOt�NF����f%z����7�7v�      �   F   x�3���/��2�tL/M,JI�K��2�t,(�/K2M8�RalSN�ļ��ی�9?/9���Z 'F��� N�      �     x�M�MN�0���S�P;��(e�"j�ذ��nk�z��p!� 7���A����f��������d�;듅R̡>aj)�^��O��?��Z��m[�L͠��]��}���	�L��o^w�iX��J�6�0�r�Z��DY.&Z��(��Dy��DK�g��g�1���
jj�񒃺�-��o��r�Ty<�d]@i����,�����m[5�<k0t���%�m8S�hl�����w3f/ߏ��9q�4�����%+wvi�y���Z��1��MB�?m{�      �   #   x�3�(�O/J�MLI�2��;�8_I$F��� ��q     