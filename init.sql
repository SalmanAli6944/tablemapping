--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    "Addressid" integer NOT NULL,
    "Location" character varying NOT NULL,
    "City" character varying NOT NULL
);


ALTER TABLE public.address OWNER TO postgres;

--
-- Name: address_Addressid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."address_Addressid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."address_Addressid_seq" OWNER TO postgres;

--
-- Name: address_Addressid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."address_Addressid_seq" OWNED BY public.address."Addressid";


--
-- Name: blog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog (
    blogid integer NOT NULL,
    content character varying NOT NULL,
    "Description" character varying(200) NOT NULL
);


ALTER TABLE public.blog OWNER TO postgres;

--
-- Name: blog_blogid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_blogid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogid_seq OWNER TO postgres;

--
-- Name: blog_blogid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_blogid_seq OWNED BY public.blog.blogid;


--
-- Name: buy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.buy (
    "Buyid" integer NOT NULL,
    "Title" character varying NOT NULL,
    "Description" character varying(200) NOT NULL,
    "PropertyType" character varying NOT NULL,
    "AreaGrid" character varying NOT NULL,
    "Size" integer NOT NULL,
    "Beds" integer NOT NULL,
    "TotalRooms" integer NOT NULL,
    "Bathroom" integer NOT NULL,
    "Phone_No" character varying NOT NULL,
    "Email" character varying NOT NULL,
    price character varying NOT NULL,
    "imagesImageId" integer
);


ALTER TABLE public.buy OWNER TO postgres;

--
-- Name: buy_Buyid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."buy_Buyid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."buy_Buyid_seq" OWNER TO postgres;

--
-- Name: buy_Buyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."buy_Buyid_seq" OWNED BY public.buy."Buyid";


--
-- Name: developers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.developers (
    "Did" integer NOT NULL,
    "Name" character varying NOT NULL,
    "Address" character varying(100) NOT NULL,
    "Phone_no" character varying(20) NOT NULL,
    "Website_link" character varying(200) NOT NULL,
    "Email" character varying(30) NOT NULL
);


ALTER TABLE public.developers OWNER TO postgres;

--
-- Name: developers_Did_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."developers_Did_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."developers_Did_seq" OWNER TO postgres;

--
-- Name: developers_Did_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."developers_Did_seq" OWNED BY public.developers."Did";


--
-- Name: image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.image (
    "ImageId" integer NOT NULL,
    "LogoImage" character varying NOT NULL,
    "CoverImage" character varying NOT NULL
);


ALTER TABLE public.image OWNER TO postgres;

--
-- Name: image_ImageId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."image_ImageId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."image_ImageId_seq" OWNER TO postgres;

--
-- Name: image_ImageId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."image_ImageId_seq" OWNED BY public.image."ImageId";


--
-- Name: partners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partners (
    "Partners_id" integer NOT NULL,
    "Partners_name" character varying(20) NOT NULL,
    "Contact" character varying(20) NOT NULL,
    "Email" character varying NOT NULL
);


ALTER TABLE public.partners OWNER TO postgres;

--
-- Name: partners_Partners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."partners_Partners_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."partners_Partners_id_seq" OWNER TO postgres;

--
-- Name: partners_Partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."partners_Partners_id_seq" OWNED BY public.partners."Partners_id";


--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    "Project_id" integer NOT NULL,
    "Project_Name" character varying(40) NOT NULL,
    "Property_Type" character varying(20) NOT NULL,
    "AreaUnit" character varying(10) NOT NULL,
    "Company_Name" character varying(50) NOT NULL
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: project_Project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."project_Project_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."project_Project_id_seq" OWNER TO postgres;

--
-- Name: project_Project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."project_Project_id_seq" OWNED BY public.project."Project_id";


--
-- Name: rent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rent (
    "Rent_id" integer NOT NULL,
    "Price" character varying(10) NOT NULL,
    "Phone_Number" character varying(20) NOT NULL,
    "No_Of_Rooms" integer NOT NULL,
    "AreaUnit" character varying(10) NOT NULL,
    "Property_type" character varying(50) NOT NULL
);


ALTER TABLE public.rent OWNER TO postgres;

--
-- Name: rent_Rent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."rent_Rent_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."rent_Rent_id_seq" OWNER TO postgres;

--
-- Name: rent_Rent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."rent_Rent_id_seq" OWNED BY public.rent."Rent_id";


--
-- Name: wanted; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wanted (
    "Wanted_id" integer NOT NULL,
    "Price" character varying(20) NOT NULL,
    "Phone_number" character varying(20) NOT NULL,
    "NoOfRooms" character varying(10) NOT NULL,
    "Property_type" character varying(10) NOT NULL,
    "AreaUnit" character varying(50) NOT NULL
);


ALTER TABLE public.wanted OWNER TO postgres;

--
-- Name: wanted_Wanted_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."wanted_Wanted_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."wanted_Wanted_id_seq" OWNER TO postgres;

--
-- Name: wanted_Wanted_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."wanted_Wanted_id_seq" OWNED BY public.wanted."Wanted_id";


--
-- Name: address Addressid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address ALTER COLUMN "Addressid" SET DEFAULT nextval('public."address_Addressid_seq"'::regclass);


--
-- Name: blog blogid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog ALTER COLUMN blogid SET DEFAULT nextval('public.blog_blogid_seq'::regclass);


--
-- Name: buy Buyid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buy ALTER COLUMN "Buyid" SET DEFAULT nextval('public."buy_Buyid_seq"'::regclass);


--
-- Name: developers Did; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developers ALTER COLUMN "Did" SET DEFAULT nextval('public."developers_Did_seq"'::regclass);


--
-- Name: image ImageId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image ALTER COLUMN "ImageId" SET DEFAULT nextval('public."image_ImageId_seq"'::regclass);


--
-- Name: partners Partners_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners ALTER COLUMN "Partners_id" SET DEFAULT nextval('public."partners_Partners_id_seq"'::regclass);


--
-- Name: project Project_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project ALTER COLUMN "Project_id" SET DEFAULT nextval('public."project_Project_id_seq"'::regclass);


--
-- Name: rent Rent_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent ALTER COLUMN "Rent_id" SET DEFAULT nextval('public."rent_Rent_id_seq"'::regclass);


--
-- Name: wanted Wanted_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wanted ALTER COLUMN "Wanted_id" SET DEFAULT nextval('public."wanted_Wanted_id_seq"'::regclass);


--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address ("Addressid", "Location", "City") FROM stdin;
\.


--
-- Data for Name: blog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog (blogid, content, "Description") FROM stdin;
\.


--
-- Data for Name: buy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buy ("Buyid", "Title", "Description", "PropertyType", "AreaGrid", "Size", "Beds", "TotalRooms", "Bathroom", "Phone_No", "Email", price, "imagesImageId") FROM stdin;
\.


--
-- Data for Name: developers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.developers ("Did", "Name", "Address", "Phone_no", "Website_link", "Email") FROM stdin;
\.


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.image ("ImageId", "LogoImage", "CoverImage") FROM stdin;
\.


--
-- Data for Name: partners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partners ("Partners_id", "Partners_name", "Contact", "Email") FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project ("Project_id", "Project_Name", "Property_Type", "AreaUnit", "Company_Name") FROM stdin;
\.


--
-- Data for Name: rent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rent ("Rent_id", "Price", "Phone_Number", "No_Of_Rooms", "AreaUnit", "Property_type") FROM stdin;
\.


--
-- Data for Name: wanted; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wanted ("Wanted_id", "Price", "Phone_number", "NoOfRooms", "Property_type", "AreaUnit") FROM stdin;
\.


--
-- Name: address_Addressid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."address_Addressid_seq"', 1, false);


--
-- Name: blog_blogid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_blogid_seq', 1, false);


--
-- Name: buy_Buyid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."buy_Buyid_seq"', 1, false);


--
-- Name: developers_Did_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."developers_Did_seq"', 1, false);


--
-- Name: image_ImageId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."image_ImageId_seq"', 1, false);


--
-- Name: partners_Partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."partners_Partners_id_seq"', 1, false);


--
-- Name: project_Project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."project_Project_id_seq"', 1, false);


--
-- Name: rent_Rent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."rent_Rent_id_seq"', 1, false);


--
-- Name: wanted_Wanted_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."wanted_Wanted_id_seq"', 1, false);


--
-- Name: wanted PK_04136a9c674de51f290806a804d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wanted
    ADD CONSTRAINT "PK_04136a9c674de51f290806a804d" PRIMARY KEY ("Wanted_id");


--
-- Name: developers PK_120b51682fe354808b09c8f640d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developers
    ADD CONSTRAINT "PK_120b51682fe354808b09c8f640d" PRIMARY KEY ("Did");


--
-- Name: buy PK_30d00a499b6aec5239f11f08154; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buy
    ADD CONSTRAINT "PK_30d00a499b6aec5239f11f08154" PRIMARY KEY ("Buyid");


--
-- Name: partners PK_656786f19650f5bb7edeac500ee; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT "PK_656786f19650f5bb7edeac500ee" PRIMARY KEY ("Partners_id");


--
-- Name: blog PK_65758da9bd6ec201099c50c4342; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog
    ADD CONSTRAINT "PK_65758da9bd6ec201099c50c4342" PRIMARY KEY (blogid);


--
-- Name: image PK_7eab49b9f1982f826e883246b16; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT "PK_7eab49b9f1982f826e883246b16" PRIMARY KEY ("ImageId");


--
-- Name: address PK_b63d1680874a3bd2cdca855516a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "PK_b63d1680874a3bd2cdca855516a" PRIMARY KEY ("Addressid");


--
-- Name: rent PK_c9cf968283a206b653cc1fc9c17; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent
    ADD CONSTRAINT "PK_c9cf968283a206b653cc1fc9c17" PRIMARY KEY ("Rent_id");


--
-- Name: project PK_f3ac4a28c6bb9d027858a371d6f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT "PK_f3ac4a28c6bb9d027858a371d6f" PRIMARY KEY ("Project_id");


--
-- Name: buy REL_780e59ea74f3ff0e40c881da00; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buy
    ADD CONSTRAINT "REL_780e59ea74f3ff0e40c881da00" UNIQUE ("imagesImageId");


--
-- Name: image UQ_179d95b793dda8364921fd231e9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT "UQ_179d95b793dda8364921fd231e9" UNIQUE ("CoverImage");


--
-- Name: developers UQ_60449498e2cf841ef406737169f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developers
    ADD CONSTRAINT "UQ_60449498e2cf841ef406737169f" UNIQUE ("Email");


--
-- Name: image UQ_6c4d1f251dcc647c84a189b7481; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT "UQ_6c4d1f251dcc647c84a189b7481" UNIQUE ("LogoImage");


--
-- Name: rent UQ_72e9648cca0b4011b49c1254872; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent
    ADD CONSTRAINT "UQ_72e9648cca0b4011b49c1254872" UNIQUE ("Phone_Number");


--
-- Name: partners UQ_eb3ca630a333635e0723103960e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT "UQ_eb3ca630a333635e0723103960e" UNIQUE ("Email");


--
-- Name: buy UQ_fe5e6340c9cd4601b7d7f072f2d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buy
    ADD CONSTRAINT "UQ_fe5e6340c9cd4601b7d7f072f2d" UNIQUE ("Email");


--
-- Name: buy FK_780e59ea74f3ff0e40c881da009; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buy
    ADD CONSTRAINT "FK_780e59ea74f3ff0e40c881da009" FOREIGN KEY ("imagesImageId") REFERENCES public.image("ImageId");


--
-- PostgreSQL database dump complete
--

