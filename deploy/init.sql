--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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
-- Name: banners; Type: TABLE; Schema: public; Owner: avito
--

CREATE TABLE public.banners (
                                banner_id integer NOT NULL,
                                tag_ids integer[],
                                feature_id integer,
                                content jsonb,
                                is_active boolean,
                                created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
                                updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.banners OWNER TO avito;

--
-- Name: banners_banner_id_seq; Type: SEQUENCE; Schema: public; Owner: avito
--

CREATE SEQUENCE public.banners_banner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banners_banner_id_seq OWNER TO avito;

--
-- Name: banners_banner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: avito
--

ALTER SEQUENCE public.banners_banner_id_seq OWNED BY public.banners.banner_id;


--
-- Name: banners banner_id; Type: DEFAULT; Schema: public; Owner: avito
--

ALTER TABLE ONLY public.banners ALTER COLUMN banner_id SET DEFAULT nextval('public.banners_banner_id_seq'::regclass);


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: avito
--

COPY public.banners (banner_id, tag_ids, feature_id, content, is_active, created_at, updated_at) FROM stdin;
1	{1}	1	{"url": "example1", "text1.1": "text1.2", "title": "title1", "test_field": "12345"}	t	2024-04-11 12:07:08.305734	2024-04-11 12:07:08.305734
2	{2,3}	2	{"2": "2", "url": "example2", "text2": "text2.2", "title": "title2", "test_field": "12345"}	t	2024-04-11 13:08:38.395746	2024-04-11 13:08:38.395746
3	{1,2,3}	4	{"bar": "bar3", "active": false, "balance": 1.10}	t	2024-04-11 16:53:22.909924	2024-04-11 16:53:22.909924
4	{4}	4	{"bar": "bar4", "active": false, "balance": 13.37}	f	2024-04-11 08:16:49.190019	2024-04-12 08:16:49.190019
5	{6, 0}	0	{"url": "example5", "tex5t": "some_text1", "title": "some_title1"}	t	2024-04-11 19:15:28.265048	2024-04-12 19:15:28.265048
6	{0}	0	{"url": "example6", "text6": "some_text", "title": "some_title"}	t	2024-04-11 19:15:41.290035	2024-04-12 23:03:19.952611
\.


--
-- Name: banners_banner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: avito
--

SELECT pg_catalog.setval('public.banners_banner_id_seq', 9, true);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: avito
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (banner_id);


--
-- PostgreSQL database dump complete
--
