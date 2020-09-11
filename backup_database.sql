--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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
-- Name: authors; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    description text NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.authors OWNER TO strapi;

--
-- Name: authors_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.authors_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.authors_components OWNER TO strapi;

--
-- Name: authors_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.authors_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_components_id_seq OWNER TO strapi;

--
-- Name: authors_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.authors_components_id_seq OWNED BY public.authors_components.id;


--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO strapi;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: components_page_buttons; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    label character varying(255) NOT NULL,
    url character varying(255) NOT NULL
);


ALTER TABLE public.components_page_buttons OWNER TO strapi;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_buttons_id_seq OWNER TO strapi;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;


--
-- Name: components_page_concepts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_concepts (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.components_page_concepts OWNER TO strapi;

--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_concepts_id_seq OWNER TO strapi;

--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_concepts_id_seq OWNED BY public.components_page_concepts.id;


--
-- Name: components_page_headers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_headers (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.components_page_headers OWNER TO strapi;

--
-- Name: components_page_headers_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_headers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_header_id integer NOT NULL
);


ALTER TABLE public.components_page_headers_components OWNER TO strapi;

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_components_id_seq OWNER TO strapi;

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_headers_components_id_seq OWNED BY public.components_page_headers_components.id;


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_id_seq OWNER TO strapi;

--
-- Name: components_page_headers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_headers_id_seq OWNED BY public.components_page_headers.id;


--
-- Name: components_page_modules; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_modules (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    subtitle character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.components_page_modules OWNER TO strapi;

--
-- Name: components_page_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_modules_id_seq OWNER TO strapi;

--
-- Name: components_page_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_modules_id_seq OWNED BY public.components_page_modules.id;


--
-- Name: components_page_pricing_boxes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_pricing_boxes (
    id integer NOT NULL,
    "totalPrice" integer NOT NULL,
    "installmentsNumber" integer NOT NULL,
    "installmentPrice" integer NOT NULL,
    benefits text NOT NULL
);


ALTER TABLE public.components_page_pricing_boxes OWNER TO strapi;

--
-- Name: components_page_pricing_boxes_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_pricing_boxes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_pricing_box_id integer NOT NULL
);


ALTER TABLE public.components_page_pricing_boxes_components OWNER TO strapi;

--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_pricing_boxes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_pricing_boxes_components_id_seq OWNER TO strapi;

--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_pricing_boxes_components_id_seq OWNED BY public.components_page_pricing_boxes_components.id;


--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_pricing_boxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_pricing_boxes_id_seq OWNER TO strapi;

--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_pricing_boxes_id_seq OWNED BY public.components_page_pricing_boxes.id;


--
-- Name: components_page_questions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_questions (
    id integer NOT NULL,
    question text NOT NULL,
    answer text NOT NULL
);


ALTER TABLE public.components_page_questions OWNER TO strapi;

--
-- Name: components_page_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_questions_id_seq OWNER TO strapi;

--
-- Name: components_page_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_questions_id_seq OWNED BY public.components_page_questions.id;


--
-- Name: components_page_reviews; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_reviews (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    text text NOT NULL
);


ALTER TABLE public.components_page_reviews OWNER TO strapi;

--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_reviews_id_seq OWNER TO strapi;

--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_reviews_id_seq OWNED BY public.components_page_reviews.id;


--
-- Name: components_page_section_about_projects; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_about_projects (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.components_page_section_about_projects OWNER TO strapi;

--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_about_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_about_projects_id_seq OWNER TO strapi;

--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_about_projects_id_seq OWNED BY public.components_page_section_about_projects.id;


--
-- Name: components_page_section_aboutuses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_aboutuses (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.components_page_section_aboutuses OWNER TO strapi;

--
-- Name: components_page_section_aboutuses__authors; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_aboutuses__authors (
    id integer NOT NULL,
    components_page_section_aboutus_id integer,
    author_id integer
);


ALTER TABLE public.components_page_section_aboutuses__authors OWNER TO strapi;

--
-- Name: components_page_section_aboutuses__authors_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_aboutuses__authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_aboutuses__authors_id_seq OWNER TO strapi;

--
-- Name: components_page_section_aboutuses__authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_aboutuses__authors_id_seq OWNED BY public.components_page_section_aboutuses__authors.id;


--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_aboutuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_aboutuses_id_seq OWNER TO strapi;

--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_aboutuses_id_seq OWNED BY public.components_page_section_aboutuses.id;


--
-- Name: components_page_section_concepts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_concepts (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.components_page_section_concepts OWNER TO strapi;

--
-- Name: components_page_section_concepts_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_concepts_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_concept_id integer NOT NULL
);


ALTER TABLE public.components_page_section_concepts_components OWNER TO strapi;

--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_concepts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_concepts_components_id_seq OWNER TO strapi;

--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_concepts_components_id_seq OWNED BY public.components_page_section_concepts_components.id;


--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_concepts_id_seq OWNER TO strapi;

--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_concepts_id_seq OWNED BY public.components_page_section_concepts.id;


--
-- Name: components_page_section_faqs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_faqs (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.components_page_section_faqs OWNER TO strapi;

--
-- Name: components_page_section_faqs_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_faqs_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_faq_id integer NOT NULL
);


ALTER TABLE public.components_page_section_faqs_components OWNER TO strapi;

--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_faqs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_faqs_components_id_seq OWNER TO strapi;

--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_faqs_components_id_seq OWNED BY public.components_page_section_faqs_components.id;


--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_faqs_id_seq OWNER TO strapi;

--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_faqs_id_seq OWNED BY public.components_page_section_faqs.id;


--
-- Name: components_page_section_modules; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_modules (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.components_page_section_modules OWNER TO strapi;

--
-- Name: components_page_section_modules_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_modules_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_module_id integer NOT NULL
);


ALTER TABLE public.components_page_section_modules_components OWNER TO strapi;

--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_modules_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_modules_components_id_seq OWNER TO strapi;

--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_modules_components_id_seq OWNED BY public.components_page_section_modules_components.id;


--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_modules_id_seq OWNER TO strapi;

--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_modules_id_seq OWNED BY public.components_page_section_modules.id;


--
-- Name: components_page_section_reviews; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_reviews (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.components_page_section_reviews OWNER TO strapi;

--
-- Name: components_page_section_reviews_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_reviews_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_review_id integer NOT NULL
);


ALTER TABLE public.components_page_section_reviews_components OWNER TO strapi;

--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_reviews_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_reviews_components_id_seq OWNER TO strapi;

--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_reviews_components_id_seq OWNED BY public.components_page_section_reviews_components.id;


--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_reviews_id_seq OWNER TO strapi;

--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_reviews_id_seq OWNED BY public.components_page_section_reviews.id;


--
-- Name: components_page_section_schedules; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_schedules (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.components_page_section_schedules OWNER TO strapi;

--
-- Name: components_page_section_schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_schedules_id_seq OWNER TO strapi;

--
-- Name: components_page_section_schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_schedules_id_seq OWNED BY public.components_page_section_schedules.id;


--
-- Name: components_page_section_teches; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_teches (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.components_page_section_teches OWNER TO strapi;

--
-- Name: components_page_section_teches_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_section_teches_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_tech_id integer NOT NULL
);


ALTER TABLE public.components_page_section_teches_components OWNER TO strapi;

--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_teches_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_teches_components_id_seq OWNER TO strapi;

--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_teches_components_id_seq OWNED BY public.components_page_section_teches_components.id;


--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_section_teches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_teches_id_seq OWNER TO strapi;

--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_section_teches_id_seq OWNED BY public.components_page_section_teches.id;


--
-- Name: components_page_social_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_social_links (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    url character varying(255) NOT NULL
);


ALTER TABLE public.components_page_social_links OWNER TO strapi;

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_social_links_id_seq OWNER TO strapi;

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_social_links_id_seq OWNED BY public.components_page_social_links.id;


--
-- Name: components_page_tech_icons; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_page_tech_icons (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.components_page_tech_icons OWNER TO strapi;

--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_page_tech_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_tech_icons_id_seq OWNER TO strapi;

--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_page_tech_icons_id_seq OWNED BY public.components_page_tech_icons.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO strapi;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO strapi;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: landing_page; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.landing_page (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.landing_page OWNER TO strapi;

--
-- Name: landing_page_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.landing_page_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    landing_page_id integer NOT NULL
);


ALTER TABLE public.landing_page_components OWNER TO strapi;

--
-- Name: landing_page_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.landing_page_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_page_components_id_seq OWNER TO strapi;

--
-- Name: landing_page_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.landing_page_components_id_seq OWNED BY public.landing_page_components.id;


--
-- Name: landing_page_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.landing_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_page_id_seq OWNER TO strapi;

--
-- Name: landing_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.landing_page_id_seq OWNED BY public.landing_page.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean
);


ALTER TABLE public.strapi_administrator OWNER TO strapi;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO strapi;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    fields jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO strapi;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO strapi;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO strapi;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO strapi;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO strapi;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO strapi;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO strapi;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO strapi;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO strapi;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO strapi;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO strapi;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO strapi;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO strapi;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: authors_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors_components ALTER COLUMN id SET DEFAULT nextval('public.authors_components_id_seq'::regclass);


--
-- Name: components_page_buttons id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);


--
-- Name: components_page_concepts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_concepts_id_seq'::regclass);


--
-- Name: components_page_headers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_id_seq'::regclass);


--
-- Name: components_page_headers_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_components_id_seq'::regclass);


--
-- Name: components_page_modules id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_modules_id_seq'::regclass);


--
-- Name: components_page_pricing_boxes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_pricing_boxes ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_id_seq'::regclass);


--
-- Name: components_page_pricing_boxes_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_components_id_seq'::regclass);


--
-- Name: components_page_questions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_questions ALTER COLUMN id SET DEFAULT nextval('public.components_page_questions_id_seq'::regclass);


--
-- Name: components_page_reviews id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_reviews_id_seq'::regclass);


--
-- Name: components_page_section_about_projects id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_about_projects ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_about_projects_id_seq'::regclass);


--
-- Name: components_page_section_aboutuses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_aboutuses ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_aboutuses_id_seq'::regclass);


--
-- Name: components_page_section_aboutuses__authors id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_aboutuses__authors ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_aboutuses__authors_id_seq'::regclass);


--
-- Name: components_page_section_concepts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_id_seq'::regclass);


--
-- Name: components_page_section_concepts_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_concepts_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_components_id_seq'::regclass);


--
-- Name: components_page_section_faqs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_id_seq'::regclass);


--
-- Name: components_page_section_faqs_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_faqs_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_components_id_seq'::regclass);


--
-- Name: components_page_section_modules id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_id_seq'::regclass);


--
-- Name: components_page_section_modules_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_modules_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_components_id_seq'::regclass);


--
-- Name: components_page_section_reviews id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_id_seq'::regclass);


--
-- Name: components_page_section_reviews_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_reviews_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_components_id_seq'::regclass);


--
-- Name: components_page_section_schedules id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_schedules ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_schedules_id_seq'::regclass);


--
-- Name: components_page_section_teches id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_teches ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_id_seq'::regclass);


--
-- Name: components_page_section_teches_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_teches_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_components_id_seq'::regclass);


--
-- Name: components_page_social_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_social_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_social_links_id_seq'::regclass);


--
-- Name: components_page_tech_icons id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_tech_icons ALTER COLUMN id SET DEFAULT nextval('public.components_page_tech_icons_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: landing_page id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.landing_page ALTER COLUMN id SET DEFAULT nextval('public.landing_page_id_seq'::regclass);


--
-- Name: landing_page_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.landing_page_components ALTER COLUMN id SET DEFAULT nextval('public.landing_page_components_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.authors (id, name, role, description, created_by, updated_by, created_at, updated_at) FROM stdin;
1	Willian Justen	Instrutor	Desenvolvedor Front-end há mais de 10 anos, tendo trabalhado em grandes empresas como Toptal, Globo.com e Huge. Tenho um blog com mais de 200 mil views por mês, além de ter diversos cursos na Udemy, alcançando a incrível marca de mais de 200 mil alunos!	1	1	2020-09-10 17:25:48.806+00	2020-09-10 17:25:48.887+00
2	Guilherme Louro	Instrutor	Desenvolvedor Fullstack há muitos anos, com conhecimento em diversas linguagens de programação. Já liderou grandes projetos e trabalha atualmente na Personare, um dos maiores portais de autoconhecimento do Brasil. Nas horas vagas é o criador e mantenedor do Netfla, site de notícias do Flamengo com mais de meio milhão de views por mês!	1	1	2020-09-10 17:49:40.51+00	2020-09-10 17:49:40.583+00
3	Marcos Oliveira	Designer	Front-End e UI Designer há alguns anos. Atualmente trabalha na Lukin Co. Já participou de diversos tipos de projetos, na área da saúde, streaming e varejo. Sempre dividido entre design e programação. No tempo livre sempre está envolvido com a comunidade, organizando eventos e meetups.	1	1	2020-09-10 17:50:50.073+00	2020-09-10 17:50:50.148+00
\.


--
-- Data for Name: authors_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.authors_components (id, field, "order", component_type, component_id, author_id) FROM stdin;
1	socialLinks	1	components_page_social_links	1	1
2	socialLinks	2	components_page_social_links	2	1
3	socialLinks	1	components_page_social_links	3	2
4	socialLinks	2	components_page_social_links	4	2
5	socialLinks	1	components_page_social_links	5	3
6	socialLinks	2	components_page_social_links	6	3
7	socialLinks	3	components_page_social_links	7	3
\.


--
-- Data for Name: components_page_buttons; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_buttons (id, label, url) FROM stdin;
5	Comprar	https://www.udemy.com/course/react-avancado/?couponCode=PROMOSET20
6	Comprar	https://www.udemy.com/course/react-avancado/?couponCode=PROMOSET20
\.


--
-- Data for Name: components_page_concepts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_concepts (id, title) FROM stdin;
37	Boas práticas com ReactJS
38	Boas práticas com Styled
39	Boas práticas com Testes
40	Server Side Rendering (SSR)
41	Static Site Generation (SSG)
42	Rotas simples e dinâmicas
43	Funcionamento do GraphQL
44	Queries e Mutations
45	Filtros e paginações
46	Criar componentes do zero
47	Utilizar componentes third-party
48	Utilizar Storybook
49	Criar APIs rapidamente
50	Envio de emails automatizado
51	Autenticação de usuários
52	Fluxo de pagamentos
53	Criação de pipelines em CI
54	Deploy automatizado
\.


--
-- Data for Name: components_page_headers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_headers (id, title, description) FROM stdin;
3	React Avançado	Crie aplicações reais com NextJS, Strapi, GraphQL e mais!
\.


--
-- Data for Name: components_page_headers_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_headers_components (id, field, "order", component_type, component_id, components_page_header_id) FROM stdin;
3	button	1	components_page_buttons	5	3
\.


--
-- Data for Name: components_page_modules; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_modules (id, title, subtitle, description) FROM stdin;
16	Módulo 4	Sistema de Pagamento e Área do Cliente	<p>Conheceremos algumas soluções de pagamento do mercado, vendo suas vantagens, desvantagens e APIs.</p><p>Criaremos toda a parte final do fluxo de pagamentos, conectando a nossa loja a um gateway de pagamento, salvando as compras em nosso banco de dados. Além de desenvolvermos a área do cliente, para que o cliente possa editar seus dados, ver compras realizadas e sua wishlist.</p>
13	Módulo 1	Introdução e Arquitetura do Projeto	<p>Iremos conhecer a <i>Stack</i> utilizada no curso, tendo explicação de cada uma das escolhas, assim como mostrando os prós e contras de cada uma delas</p><p>Iremos construir nosso boilerplate do zero, aprendendo a configurar as ferramentas de qualidade de código, como <i>Eslint</i>, <i>Prettier</i>, <i>Git hooks</i> e <i>TypeScript</i>. Assim como também configurar o <i>Styled Components</i> para funcionar com <i>SSR</i> e <i>PWA</i>.</p>
14	Módulo 2	Strapi e GraphQL	<p>Vamos iniciar nosso backend/CMS com o Strapi, aprender mais sobre sua API, como o content type builder, single types, custom components. Além de aprender a criar controllers customizados, serviços, instalar plugins de documentação e também do GraphQL, onde iremos aprender como funciona, como criar queries, filtros, mutations e mais.</p><p>Para finalizar, aprenderemos como customizar o CMS para que ele tenha a cara da loja e se torne uma solução mais interessante para o cliente.</p>
15	Módulo 3	Criando o Frontend	<p>Essa que será uma das maiores etapas, é onde vamos aprender a pegar um layout diretamente do Figma e vamos transformá-los em diferentes componentes e estilos.</p><p>Faremos todos os componentes com styled components, com testes, cenários no Storybook e pensando na responsividade. Com os componentes prontos, construiremos as páginas, ajustando o que for necessário para que tudo se encaixe perfeitamente.</p>
17	Módulo 5	Testes de Integração	<p>Neste módulo iremos aprender a importância dos testes de integração e como garantir ainda mais qualidade no nosso projeto.</p><p>Vamos criar testes para todos os fluxos que um usuário normal pode executar em nosso site, desde a navegação normal até uma compra efetuada.</p>
18	Módulo 6	CI e Deploy	<p>Normalmente a maioria dos cursos termina na criação do projeto, mas nunca ensina como fazer para realmente deixar em produção.</p><p>Aqui nós iremos aprender quais as necessidades do projeto e quais as soluçoes que podemos utilizar. Além disso, iremos criar uma pipeline em um CI para que tenhamos todo o processo de deploy o mais automatizado possível</p>
\.


--
-- Data for Name: components_page_pricing_boxes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_pricing_boxes (id, "totalPrice", "installmentsNumber", "installmentPrice", benefits) FROM stdin;
3	549	6	67	<ul><li>Acesso aos <strong>6 módulos</strong> assim que lançados</li><li>Código de <strong>todo o projeto</strong> separado em commits</li><li>Contato <strong>direto</strong> com os instrutores via Slack</li><li><strong>Lives exclusivas</strong> durante o curso</li></ul>
\.


--
-- Data for Name: components_page_pricing_boxes_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_pricing_boxes_components (id, field, "order", component_type, component_id, components_page_pricing_box_id) FROM stdin;
3	button	1	components_page_buttons	6	3
\.


--
-- Data for Name: components_page_questions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_questions (id, question, answer) FROM stdin;
3	Quanto tempo tenho para fazer o curso?	<p>O curso é vitalício, faça quantas vezes quiser e quando quiser, nada de bloqueios ou pressa.</p>
4	Esse curso tem certificado?	<p>Sim, o curso terá certificado e você poderá baixá-lo diretamente da Udemy ao término do curso.</p>
5	Quais outros cursos você tem?	<p>Tenho alguns cursos gratuitos e pagos, você pode acessar todos os cursos <a href="https://willianjusten.com.br/cursos">nesse link.</a></p>
6	Posso usar o projeto para o meu Portfólio?	<p>Definitivamente! A ideia é que vocês tenham um projeto de verdade que possam utilizar como bem entenderem.</p>
7	Eu tenho outra dúvida!	<p>Sem problemas! Você pode acessar qualquer uma das <a href="https://willianjusten.com.br/about">minhas redes sociais</a> ou entrar no <a href="https://willianjusten-cursos.slack.com/join/shared_invite/zt-g20h37hj-GnSb_y7PXCRjS92N9T8LCQ#/">slack do nosso curso.</a></p>
1	O que preciso saber para o curso?	<p>Um conhecimento básico de JavaScript/React é necessário para maior entendimento do curso, mas todo o conteúdo será explicado em detalhes e todas as perguntas/dúvidas serão respondidas.</p>
2	Onde os vídeos serão publicados?	<p>Os vídeos serão publicados na Udemy, com o mesmo funcionamento que já existe, vídeos offline, autoplay, acelerar em 2x, aplicativo nativo e mais.</p>
\.


--
-- Data for Name: components_page_reviews; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_reviews (id, name, text) FROM stdin;
1	Henrique Albert Schmaiske	O Curso foi incrível! Gostei muito das explicações, bem claras e objetivas! Deixo a sugestão para um próximo Curso: NextJS mostrando fazer um Ecommerce. Compraria sem nem olhar o preço.
9	Daniel P. de Oliveira	É incrível a forma como foi passado o conteúdo do curso, dá para ver que o Will tem um domínio impressionante sobre as ferramentas e tecnologias passadas, e mesmo eu tendo pouco conhecimento em React consegui acompanhar o curso sem muitas dificuldades. Espero que tenha mais cursos nessa linha, com certeza comprarei! Obrigado Will!
10	Milene Souto	Sensacional! A didática do instrutor é excelente para estruturar o curso e dar o ritmo das aulas. Foi uma experiência muito enriquecedora (e divertida) construir um blog seguindo o passo-a-passo dos vídeos. Não sabia nada sobre Gatsby, GraphQL ou Netlify CMS mas consegui acompanhar todo o processo sem grandes dificuldades. Além disso, foi ótimo aprender um pouquinho mais sobre algumas práticas de desenvolvimento, como temas em React, estilização CSS in JS com styled-components e utilização do Algolia como solução de busca. Recomendo! =)
11	Douglas Lopes	Não teve nenhum curso que eu tenha feito, cuja autoria é do Willian Justem que eu não tenha gostado. Explica de uma maneira simples, didática, fácil de entender e assimilar. Fora isso, existem uma série de outros conhecimentos que acabam por vir embarcados em todos os cursos. Coisas como melhores práticas, facilidades da linguagem e itens novos da linguagem, organização de código, organização de arquivos, otimização para performance, otimização para SEO, etc. Sério, que curso completo e fácil de assimilar. Will, parabéns novamente e obrigado por disponibilizar um conteúdo tão rico e capaz de mudar a vida profissional de quem o faz. Não vejo a hora de fazer o próximo curso.
12	Ariel Dalton	Sensacional esse curso, os pontos que destaco são a clareza nas explicações, stack tecnológica mais atual possível e sem enrolação. Agradeço ao Willian pelo esforço em produzir essa qualidade de curso que é até difícil encontrar algo desse na nível em Português.
13	Luíz Cláudio Silva	Curso excelente! O Willian aborda os assuntos com uma explicação muito clara, simples e, a meu ver, com uma profundidade "na medida" (nem superficial, nem super aprofundado). Também deixa um "caminho" para o caso de o aluno querer se aprofundar em algum detalhe específico e tem se demonstrado sempre solícito tanto nas perguntas aqui na Udemy quanto lá no Slack. Por fim, recomendo também a leitura dos artigos do próprio blog do Willian. Lá ele fala sobre vários assuntos, inclusive tocando em em um ponto que não é citado pela maioria dos profissionais: problemas com saúde (Ex.: depressão). Ganhou um "fã", com ctz :)
14	Karoline Medeiros	A didática é ótima, professor sabe o que fala e como passar a informação da melhor maneira possível. Acabei consumindo +60% do curso no dia em que comprei, depois que comecei foi difícil parar rsrs nota mil!
15	Alane Ribeiro	Willian é maravilhoso! Didática excelente, interage muito com os alunos. Gosto muito da didática que ele usa e da forma que ele explica. Parabéns, Professor!
16	Lianker Lopes	Willian é um otimo professor e seus cursos são extremamente uteis, pois focam em praticas reais de mercado e ele faz isso sem perder a excelência técnica mantendo o uso de boas praticas de codigo.
2	Alexandre Teixeira	Esse já é o terceiro curso do Will que faço, e a didática do cara é incrível! Além disso, o cara segue trazendo o que tem de mais moderno no mercado de forma bem explicada e com aplicações práticas.
17	Jorge Bierhals Ramos	Os cursos do professor Willian Justen são excelentes, sua forma de ensinar é incrível. Caso precise de uma ajuda ele está sempre pronto para ajudar, seja aqui pela plataforma da Udemy ou em suas redes sociais. Recomendo à todos!!!
18	Michael Costa	Curso de altíssima qualidade. O professor Willian Justen tem uma didática muito boa e nos mostrou várias tecnologias além dessas mencionados no nome do curso em um exemplo real do dia a dia. Estou curtindo tanto o curso, que já até comprei outros dois dele: Aprendendo SVG Do Início ao Avançado e Aprenda a criar sites animados com Greensock, agora só falta começar.
19	Lianker Lopes	Willian é um otimo professor e seus cursos são extremamente uteis, pois focam em praticas reais de mercado e ele faz isso sem perder a excelência técnica mantendo o uso de boas praticas de codigo.
20	Anuar Daher Neto	Show! Fiquei impressionado com o domínio que o Willian possui sobre os temas abordados, temas parelelos que surgem ao longo do curso e como ele externa esse domínio passando, com facilidade, tudo que precisando pra ter uma ótima experiência e entender o que é necessário.
21	Michael Costa	Curso de altíssima qualidade. O professor Willian Justen tem uma didática muito boa e nos mostrou várias tecnologias além dessas mencionados no nome do curso em um exemplo real do dia a dia. Estou curtindo tanto o curso, que já até comprei outros dois dele: Aprendendo SVG Do Início ao Avançado e Aprenda a criar sites animados com Greensock, agora só falta começar.
22	Rafael de Jesus	Didática incrível. O conhecimento básico no início do curso me serviu como revisão. Aquilo que já sabia fui passando rapidamente. Iniciei agora a parte prática de testes e gostei muito do exemplo real, assim como qualidade do audio e também conteúdo. Gostei muito que o autor explica algumas "teorias" em torno do que estamos fazendo e isso a longo prazo fixa melhor o conteúdo e faz total diferença.
\.


--
-- Data for Name: components_page_section_about_projects; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_about_projects (id, title, description) FROM stdin;
3	O que iremos contruir	<p>Iremos criar um e-commerce de jogos, incluindo toda a parte de pagamentos e área do cliente. Os clientes poderão fazer buscas, filtrar, adicionar ao carrinho e comprar seus jogos favoritos.</p><p>Teremos também um <strong>CMS completamente customizado</strong> para que os administradores possam adicionar produtos, categorias, plataformas, criar promoções, editar partes do site, além de emails automatizados para às vendas de cada produto.</p><p>Para criar tudo isso, iremos utilizar ferramentas muito famosas no mercado de trabalho, como ReactJS, Next, Apollo e outras coisas mais. Sempre prezando pela qualidade do código, ou seja, teremos <strong>testes em tudo!</strong></p>
\.


--
-- Data for Name: components_page_section_aboutuses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_aboutuses (id, title) FROM stdin;
3	Quem somos nós?
\.


--
-- Data for Name: components_page_section_aboutuses__authors; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_aboutuses__authors (id, components_page_section_aboutus_id, author_id) FROM stdin;
1	3	1
2	3	2
3	3	3
\.


--
-- Data for Name: components_page_section_concepts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_concepts (id, title) FROM stdin;
3	Conceitos que você irá aprender
\.


--
-- Data for Name: components_page_section_concepts_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_concepts_components (id, field, "order", component_type, component_id, components_page_section_concept_id) FROM stdin;
37	concepts	1	components_page_concepts	37	3
38	concepts	2	components_page_concepts	38	3
39	concepts	3	components_page_concepts	39	3
40	concepts	4	components_page_concepts	40	3
41	concepts	5	components_page_concepts	41	3
42	concepts	6	components_page_concepts	42	3
43	concepts	7	components_page_concepts	43	3
44	concepts	8	components_page_concepts	44	3
45	concepts	9	components_page_concepts	45	3
46	concepts	10	components_page_concepts	46	3
47	concepts	11	components_page_concepts	47	3
48	concepts	12	components_page_concepts	48	3
49	concepts	13	components_page_concepts	49	3
50	concepts	14	components_page_concepts	50	3
51	concepts	15	components_page_concepts	51	3
52	concepts	16	components_page_concepts	52	3
53	concepts	17	components_page_concepts	53	3
54	concepts	18	components_page_concepts	54	3
\.


--
-- Data for Name: components_page_section_faqs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_faqs (id, title) FROM stdin;
1	FAQ
\.


--
-- Data for Name: components_page_section_faqs_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_faqs_components (id, field, "order", component_type, component_id, components_page_section_faq_id) FROM stdin;
3	questions	3	components_page_questions	3	1
4	questions	4	components_page_questions	4	1
5	questions	5	components_page_questions	5	1
6	questions	6	components_page_questions	6	1
7	questions	7	components_page_questions	7	1
1	questions	1	components_page_questions	1	1
2	questions	2	components_page_questions	2	1
\.


--
-- Data for Name: components_page_section_modules; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_modules (id, title) FROM stdin;
3	Módulos deste curso
\.


--
-- Data for Name: components_page_section_modules_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_modules_components (id, field, "order", component_type, component_id, components_page_section_module_id) FROM stdin;
13	module	1	components_page_modules	13	3
14	module	2	components_page_modules	14	3
15	module	3	components_page_modules	15	3
16	module	4	components_page_modules	16	3
17	module	5	components_page_modules	17	3
18	module	6	components_page_modules	18	3
\.


--
-- Data for Name: components_page_section_reviews; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_reviews (id, title) FROM stdin;
3	Junte-se a mais de 200 mil alunos
\.


--
-- Data for Name: components_page_section_reviews_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_reviews_components (id, field, "order", component_type, component_id, components_page_section_review_id) FROM stdin;
9	review	12	components_page_reviews	18	3
10	review	14	components_page_reviews	20	3
11	review	15	components_page_reviews	21	3
12	review	16	components_page_reviews	22	3
13	review	3	components_page_reviews	9	3
14	review	4	components_page_reviews	10	3
15	review	5	components_page_reviews	11	3
16	review	6	components_page_reviews	12	3
17	review	7	components_page_reviews	13	3
18	review	8	components_page_reviews	14	3
19	review	9	components_page_reviews	15	3
20	review	10	components_page_reviews	16	3
21	review	11	components_page_reviews	17	3
22	review	13	components_page_reviews	19	3
1	review	1	components_page_reviews	1	3
2	review	2	components_page_reviews	2	3
\.


--
-- Data for Name: components_page_section_schedules; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_schedules (id, title, description) FROM stdin;
3	Agenda pré-lançamento	<p>Esse é um curso extremamente vivo, estaremos lançando os módulos conforme vamos terminando. Com isso, além de permitir que vocês iniciem o curso mais rápido, também irá facilitar que tenhamos um feedback mais constante sobre tudo, deixando nosso curso ainda melhor.</p><p>Para agradecer as pessoas que nos apoiarem desde o início, conforme os módulos forem sendo lançados, o desconto vai diminuindo. <strong>Ou seja, quanto mais cedo você comprar, mais barato irá pagar</strong>. Segue a agenda:</p>
\.


--
-- Data for Name: components_page_section_teches; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_teches (id, title) FROM stdin;
3	Tecnologias Utilizadas
\.


--
-- Data for Name: components_page_section_teches_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_section_teches_components (id, field, "order", component_type, component_id, components_page_section_tech_id) FROM stdin;
21	techIcons	1	components_page_tech_icons	21	3
22	techIcons	2	components_page_tech_icons	22	3
23	techIcons	3	components_page_tech_icons	23	3
24	techIcons	4	components_page_tech_icons	24	3
25	techIcons	5	components_page_tech_icons	25	3
26	techIcons	6	components_page_tech_icons	26	3
27	techIcons	7	components_page_tech_icons	27	3
28	techIcons	8	components_page_tech_icons	28	3
29	techIcons	9	components_page_tech_icons	29	3
30	techIcons	10	components_page_tech_icons	30	3
\.


--
-- Data for Name: components_page_social_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_social_links (id, title, url) FROM stdin;
1	Twitter	https://twitter.com/Willian_justen
2	Github	https://github.com/willianjusten
3	Twitter	https://twitter.com/guilhermelouro
4	Github	https://github.com/guilouro
5	Twitter	https://twitter.com/vmaarcosp
6	Dribbble	https://dribbble.com/vmarcosp
7	Github	https://github.com/vmarcosp
\.


--
-- Data for Name: components_page_tech_icons; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_page_tech_icons (id, title) FROM stdin;
21	TypeScript
22	React
23	NextJS
24	Strapi
25	Apollo
26	GraphQL
27	Jest
28	Testing Library
29	Storybook
30	Cypress
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
1	db_model_core_store	{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}	object	\N	\N
2	db_model_components_page_concepts	{"title":{"type":"string","required":true}}	object	\N	\N
3	db_model_components_page_section_faqs	{"title":{"type":"string","required":true},"questions":{"type":"component","repeatable":true,"component":"page.question","required":true,"min":2}}	object	\N	\N
4	db_model_components_page_buttons	{"label":{"type":"string","default":"Comprar","required":true,"maxLength":20},"url":{"type":"string","required":true}}	object	\N	\N
5	db_model_components_page_pricing_boxes	{"totalPrice":{"type":"integer","default":415,"required":true},"installmentsNumber":{"type":"integer","required":true},"installmentPrice":{"type":"integer","required":true},"benefits":{"type":"richtext","default":"Create items as bullet list","required":true},"button":{"type":"component","repeatable":false,"component":"page.button","required":true}}	object	\N	\N
7	db_model_components_page_headers	{"title":{"type":"string","required":true},"description":{"type":"text","required":true},"button":{"type":"component","repeatable":false,"component":"page.button","required":true},"image":{"model":"file","via":"related","allowedTypes":["images","videos"],"plugin":"upload","required":true}}	object	\N	\N
8	db_model_components_page_questions	{"question":{"type":"text","required":true},"answer":{"type":"richtext","required":true}}	object	\N	\N
9	db_model_components_page_reviews	{"photo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false},"name":{"type":"string","required":true},"text":{"type":"text","required":true}}	object	\N	\N
11	db_model_components_page_section_modules	{"title":{"type":"string","required":true},"module":{"type":"component","repeatable":true,"component":"page.module","required":true,"min":2}}	object	\N	\N
12	db_model_components_page_modules	{"title":{"type":"string","required":true},"subtitle":{"type":"string","required":true},"description":{"type":"richtext","required":true}}	object	\N	\N
13	db_model_components_page_section_schedules	{"title":{"type":"string","required":true},"description":{"type":"richtext","required":true}}	object	\N	\N
14	db_model_components_page_section_about_projects	{"title":{"type":"string","required":true},"description":{"type":"richtext","required":true},"image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true}}	object	\N	\N
15	db_model_components_page_section_aboutuses	{"title":{"type":"string","required":true},"authors":{"collection":"authors","attribute":"author","column":"id","isVirtual":true}}	object	\N	\N
16	db_model_components_page_section_teches	{"title":{"type":"string","required":true},"techIcons":{"type":"component","repeatable":true,"component":"page.tech-icons","required":true,"max":10,"min":5}}	object	\N	\N
17	db_model_landing_page	{"logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true},"header":{"type":"component","repeatable":false,"component":"page.header","required":true},"sectionAboutProject":{"type":"component","repeatable":false,"component":"page.section-about-project","required":true},"sectionTech":{"type":"component","repeatable":false,"component":"page.section-tech","required":true},"sectionConcepts":{"type":"component","repeatable":false,"component":"page.section-concepts","required":true},"sectionModules":{"type":"component","repeatable":false,"component":"page.section-modules","required":true},"sectionSchedule":{"type":"component","repeatable":false,"component":"page.section-schedule","required":true},"pricingBox":{"type":"component","repeatable":false,"component":"page.pricing-box","required":true},"sectionAboutUs":{"type":"component","repeatable":false,"component":"page.section-about-us","required":true},"sectionReviews":{"type":"component","repeatable":false,"component":"page.section-reviews","required":true},"sectionFaq":{"type":"component","repeatable":false,"component":"page.section-faq","required":true},"created_by":{"model":"user","plugin":"admin"},"updated_by":{"model":"user","plugin":"admin"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
18	db_model_components_page_tech_icons	{"image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true},"title":{"type":"string","required":true}}	object	\N	\N
19	db_model_components_page_social_links	{"title":{"type":"enumeration","enum":["Dribbble","Facebook","Github","LinkedIn","Twitter"],"default":"Twitter","required":true},"url":{"type":"string","required":true}}	object	\N	\N
20	db_model_strapi_webhooks	{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}	object	\N	\N
21	db_model_strapi_permission	{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"fields":{"type":"json","configurable":false,"required":false,"default":[]},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
22	db_model_authors	{"photo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true},"name":{"type":"string","required":true},"role":{"type":"string","required":true},"socialLinks":{"type":"component","repeatable":true,"component":"page.social-links","required":true},"description":{"type":"text","required":true},"created_by":{"model":"user","plugin":"admin"},"updated_by":{"model":"user","plugin":"admin"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
23	db_model_upload_file	{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin"},"updated_by":{"model":"user","plugin":"admin"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
10	db_model_components_page_section_concepts	{"title":{"type":"string","required":true},"concepts":{"type":"component","repeatable":true,"component":"page.concepts"}}	object	\N	\N
24	db_model_users-permissions_permission	{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin"},"updated_by":{"model":"user","plugin":"admin"}}	object	\N	\N
28	db_model_strapi_role	{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
38	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4}]]}}	object
61	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object
51	plugin_content_manager_configuration_components::page.section-about-project	{"uid":"page.section-about-project","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","image"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}],[{"name":"image","size":6}]],"editRelations":[]}}	object
25	db_model_strapi_administrator	{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true}}	object	\N	\N
39	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object
49	plugin_content_manager_configuration_components::page.question	{"uid":"page.question","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"question":{"edit":{"label":"Question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Question","searchable":true,"sortable":true}},"answer":{"edit":{"label":"Answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Answer","searchable":false,"sortable":false}}},"layouts":{"list":["id","question"],"edit":[[{"name":"question","size":6}],[{"name":"answer","size":12}]],"editRelations":[]}}	object
59	plugin_content_manager_configuration_components::page.social-links	{"uid":"page.social-links","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","url"],"edit":[[{"name":"title","size":6},{"name":"url","size":6}]],"editRelations":[]}}	object
26	db_model_users-permissions_role	{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin"},"updated_by":{"model":"user","plugin":"admin"}}	object	\N	\N
29	db_model_components_page_section_aboutuses__authors	{"components_page_section_aboutus_id":{"type":"integer"},"author_id":{"type":"integer"}}	object	\N	\N
34	plugin_content_manager_configuration_content_types::application::authors.authors	{"uid":"application::authors.authors","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"photo":{"edit":{"label":"Photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Photo","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Role","searchable":true,"sortable":true}},"socialLinks":{"edit":{"label":"SocialLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SocialLinks","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","photo","name","role"],"editRelations":[],"edit":[[{"name":"photo","size":6},{"name":"name","size":6}],[{"name":"role","size":6}],[{"name":"socialLinks","size":12}],[{"name":"description","size":6}]]}}	object
52	plugin_content_manager_configuration_components::page.section-about-us	{"uid":"page.section-about-us","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"authors":{"edit":{"label":"Authors","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Authors","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6},{"name":"authors","size":6}]],"editRelations":[]}}	object
60	plugin_content_manager_configuration_components::page.tech-icons	{"uid":"page.tech-icons","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","title"],"edit":[[{"name":"image","size":6},{"name":"title","size":6}]],"editRelations":[]}}	object
27	db_model_users-permissions_user	{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin"},"updated_by":{"model":"user","plugin":"admin"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
33	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development
53	plugin_content_manager_configuration_components::page.section-concepts	{"uid":"page.section-concepts","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"concepts":{"edit":{"label":"Concepts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Concepts","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"concepts","size":12}]],"editRelations":[]}}	object
30	db_model_strapi_users_roles	{"user_id":{"type":"integer"},"role_id":{"type":"integer"}}	object	\N	\N
32	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback"},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]}}	object
42	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object
48	plugin_content_manager_configuration_components::page.pricing-box	{"uid":"page.pricing-box","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"totalPrice":{"edit":{"label":"TotalPrice","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TotalPrice","searchable":true,"sortable":true}},"installmentsNumber":{"edit":{"label":"InstallmentsNumber","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"InstallmentsNumber","searchable":true,"sortable":true}},"installmentPrice":{"edit":{"label":"InstallmentPrice","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"InstallmentPrice","searchable":true,"sortable":true}},"benefits":{"edit":{"label":"Benefits","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Benefits","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","totalPrice","installmentsNumber","installmentPrice"],"edit":[[{"name":"totalPrice","size":4},{"name":"installmentsNumber","size":4},{"name":"installmentPrice","size":4}],[{"name":"benefits","size":12}],[{"name":"button","size":12}]],"editRelations":[]}}	object
58	plugin_content_manager_configuration_components::page.section-tech	{"uid":"page.section-tech","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"techIcons":{"edit":{"label":"TechIcons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TechIcons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"techIcons","size":12}]],"editRelations":[]}}	object
31	db_model_upload_file_morph	{"upload_file_id":{"type":"integer"},"related_id":{"type":"integer"},"related_type":{"type":"text"},"field":{"type":"text"},"order":{"type":"integer"}}	object	\N	\N
35	plugin_content_manager_configuration_content_types::application::landing-page.landing-page	{"uid":"application::landing-page.landing-page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"sectionAboutProject":{"edit":{"label":"SectionAboutProject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionAboutProject","searchable":false,"sortable":false}},"sectionTech":{"edit":{"label":"SectionTech","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionTech","searchable":false,"sortable":false}},"sectionConcepts":{"edit":{"label":"SectionConcepts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionConcepts","searchable":false,"sortable":false}},"sectionModules":{"edit":{"label":"SectionModules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionModules","searchable":false,"sortable":false}},"sectionSchedule":{"edit":{"label":"SectionSchedule","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionSchedule","searchable":false,"sortable":false}},"pricingBox":{"edit":{"label":"PricingBox","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PricingBox","searchable":false,"sortable":false}},"sectionAboutUs":{"edit":{"label":"SectionAboutUs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionAboutUs","searchable":false,"sortable":false}},"sectionReviews":{"edit":{"label":"SectionReviews","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionReviews","searchable":false,"sortable":false}},"sectionFaq":{"edit":{"label":"SectionFaq","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionFaq","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"logo","size":6}],[{"name":"header","size":12}],[{"name":"sectionAboutProject","size":12}],[{"name":"sectionTech","size":12}],[{"name":"sectionConcepts","size":12}],[{"name":"sectionModules","size":12}],[{"name":"sectionSchedule","size":12}],[{"name":"pricingBox","size":12}],[{"name":"sectionAboutUs","size":12}],[{"name":"sectionReviews","size":12}],[{"name":"sectionFaq","size":12}]]}}	object
45	plugin_content_manager_configuration_components::page.concepts	{"uid":"page.concepts","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}]],"editRelations":[]}}	object
55	plugin_content_manager_configuration_components::page.section-modules	{"uid":"page.section-modules","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"module":{"edit":{"label":"Module","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Module","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"module","size":12}]],"editRelations":[]}}	object
36	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"fields":{"edit":{"label":"Fields","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fields","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","created_at"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"fields","size":12}],[{"name":"conditions","size":12}]]}}	object
50	plugin_content_manager_configuration_components::page.review	{"uid":"page.review","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"photo":{"edit":{"label":"Photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Photo","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}}},"layouts":{"list":["id","photo","name","text"],"edit":[[{"name":"photo","size":6},{"name":"name","size":6}],[{"name":"text","size":6}]],"editRelations":[]}}	object
37	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object
46	plugin_content_manager_configuration_components::page.header	{"uid":"page.header","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","image"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"button","size":12}],[{"name":"image","size":6}]],"editRelations":[]}}	object
56	plugin_content_manager_configuration_components::page.section-reviews	{"uid":"page.section-reviews","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"review":{"edit":{"label":"Review","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Review","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"review","size":12}]],"editRelations":[]}}	object
40	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object
44	plugin_content_manager_configuration_components::page.button	{"uid":"page.button","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","url"],"edit":[[{"name":"label","size":6},{"name":"url","size":6}]],"editRelations":[]}}	object
54	plugin_content_manager_configuration_components::page.section-faq	{"uid":"page.section-faq","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"questions":{"edit":{"label":"Questions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Questions","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"questions","size":12}]],"editRelations":[]}}	object
41	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object
43	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object
47	plugin_content_manager_configuration_components::page.module	{"uid":"page.module","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"description","size":12}]],"editRelations":[]}}	object
57	plugin_content_manager_configuration_components::page.section-schedule	{"uid":"page.section-schedule","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}]],"editRelations":[]}}	object
6	db_model_components_page_section_reviews	{"title":{"type":"string","required":true},"review":{"type":"component","repeatable":true,"component":"page.review","required":true}}	object	\N	\N
\.


--
-- Data for Name: landing_page; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.landing_page (id, created_by, updated_by, created_at, updated_at) FROM stdin;
3	1	1	2020-09-10 17:47:51.555+00	2020-09-10 18:10:34.589+00
\.


--
-- Data for Name: landing_page_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.landing_page_components (id, field, "order", component_type, component_id, landing_page_id) FROM stdin;
17	header	1	components_page_headers	3	3
18	sectionAboutProject	1	components_page_section_about_projects	3	3
19	sectionTech	1	components_page_section_teches	3	3
20	sectionConcepts	1	components_page_section_concepts	3	3
21	sectionModules	1	components_page_section_modules	3	3
22	sectionSchedule	1	components_page_section_schedules	3	3
23	pricingBox	1	components_page_pricing_boxes	3	3
24	sectionAboutUs	1	components_page_section_aboutuses	3	3
25	sectionReviews	1	components_page_section_reviews	3	3
26	sectionFaq	1	components_page_section_faqs	1	3
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_permission (id, action, subject, fields, conditions, role, created_at, updated_at) FROM stdin;
2	plugins::content-manager.explorer.create	application::authors.authors	["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]	[]	2	2020-09-10 16:43:02.767+00	2020-09-10 16:43:02.796+00
11	plugins::upload.assets.update	\N	\N	[]	2	2020-09-10 16:43:02.841+00	2020-09-10 16:43:02.851+00
16	plugins::content-manager.explorer.read	application::authors.authors	["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]	["admin::is-creator"]	3	2020-09-10 16:43:02.877+00	2020-09-10 16:43:02.913+00
44	plugins::upload.assets.copy-link	\N	\N	[]	1	2020-09-10 16:43:03.097+00	2020-09-10 16:43:03.126+00
54	plugins::users-permissions.providers.update	\N	\N	[]	1	2020-09-10 16:43:03.177+00	2020-09-10 16:43:03.21+00
64	admin::webhooks.update	\N	\N	[]	1	2020-09-10 16:43:03.259+00	2020-09-10 16:43:03.289+00
74	plugins::content-manager.explorer.create	application::landing-page.landing-page	["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.image", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.module.title", "sectionModules.module.subtitle", "sectionModules.module.description", "sectionSchedule.title", "sectionSchedule.description", "pricingBox.totalPrice", "pricingBox.installmentsNumber", "pricingBox.installmentPrice", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.review.photo", "sectionReviews.review.name", "sectionReviews.review.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]	[]	1	2020-09-10 17:33:27.775+00	2020-09-10 17:33:27.786+00
3	plugins::content-manager.explorer.read	application::authors.authors	["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]	[]	2	2020-09-10 16:43:02.768+00	2020-09-10 16:43:02.796+00
13	plugins::upload.assets.copy-link	\N	\N	[]	2	2020-09-10 16:43:02.844+00	2020-09-10 16:43:02.853+00
14	plugins::content-manager.explorer.create	application::authors.authors	["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]	["admin::is-creator"]	3	2020-09-10 16:43:02.876+00	2020-09-10 16:43:02.913+00
24	plugins::upload.assets.update	\N	\N	["admin::is-creator"]	3	2020-09-10 16:43:02.967+00	2020-09-10 16:43:02.979+00
29	plugins::content-manager.explorer.create	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmed", "blocked", "role"]	[]	1	2020-09-10 16:43:03.02+00	2020-09-10 16:43:03.045+00
43	plugins::upload.assets.download	\N	\N	[]	1	2020-09-10 16:43:03.091+00	2020-09-10 16:43:03.12+00
52	plugins::users-permissions.roles.delete	\N	\N	[]	1	2020-09-10 16:43:03.172+00	2020-09-10 16:43:03.204+00
59	admin::marketplace.read	\N	\N	[]	1	2020-09-10 16:43:03.253+00	2020-09-10 16:43:03.283+00
72	admin::roles.update	\N	\N	[]	1	2020-09-10 16:43:03.335+00	2020-09-10 16:43:03.359+00
75	plugins::content-manager.explorer.read	application::landing-page.landing-page	["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.image", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.module.title", "sectionModules.module.subtitle", "sectionModules.module.description", "sectionSchedule.title", "sectionSchedule.description", "pricingBox.totalPrice", "pricingBox.installmentsNumber", "pricingBox.installmentPrice", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.review.photo", "sectionReviews.review.name", "sectionReviews.review.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]	[]	1	2020-09-10 17:33:27.776+00	2020-09-10 17:33:27.788+00
23	plugins::upload.assets.create	\N	\N	[]	3	2020-09-10 16:43:02.878+00	2020-09-10 16:43:02.928+00
30	plugins::content-manager.explorer.read	application::authors.authors	["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]	[]	1	2020-09-10 16:43:03.02+00	2020-09-10 16:43:03.045+00
38	plugins::content-manager.explorer.delete	plugins::users-permissions.user	\N	[]	1	2020-09-10 16:43:03.09+00	2020-09-10 16:43:03.119+00
48	plugins::content-manager.components.configure-layout	\N	\N	[]	1	2020-09-10 16:43:03.165+00	2020-09-10 16:43:03.197+00
58	plugins::users-permissions.advanced-settings.update	\N	\N	[]	1	2020-09-10 16:43:03.252+00	2020-09-10 16:43:03.282+00
68	admin::users.update	\N	\N	[]	1	2020-09-10 16:43:03.332+00	2020-09-10 16:43:03.353+00
4	plugins::content-manager.explorer.read	application::landing-page.landing-page	["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.image", "sectionTech.techIcons.title", "sectionModules.title", "sectionModules.module.title", "sectionModules.module.subtitle", "sectionModules.module.description", "sectionSchedule.title", "sectionSchedule.description", "pricingBox.totalPrice", "pricingBox.installmentsNumber", "pricingBox.installmentPrice", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.review.photo", "sectionReviews.review.name", "sectionReviews.review.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "sectionConcepts.title"]	[]	2	2020-09-10 16:43:02.768+00	2020-09-10 17:31:01.78+00
76	plugins::content-manager.explorer.update	application::landing-page.landing-page	["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.image", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.module.title", "sectionModules.module.subtitle", "sectionModules.module.description", "sectionSchedule.title", "sectionSchedule.description", "pricingBox.totalPrice", "pricingBox.installmentsNumber", "pricingBox.installmentPrice", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.review.photo", "sectionReviews.review.name", "sectionReviews.review.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]	[]	1	2020-09-10 17:33:27.776+00	2020-09-10 17:33:27.788+00
5	plugins::content-manager.explorer.update	application::authors.authors	["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]	[]	2	2020-09-10 16:43:02.768+00	2020-09-10 16:43:02.796+00
12	plugins::upload.assets.download	\N	\N	[]	2	2020-09-10 16:43:02.843+00	2020-09-10 16:43:02.853+00
26	plugins::upload.assets.copy-link	\N	\N	[]	3	2020-09-10 16:43:02.968+00	2020-09-10 16:43:02.982+00
27	plugins::content-manager.explorer.create	application::authors.authors	["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]	[]	1	2020-09-10 16:43:03.02+00	2020-09-10 16:43:03.045+00
37	plugins::content-manager.explorer.delete	application::landing-page.landing-page	\N	[]	1	2020-09-10 16:43:03.087+00	2020-09-10 16:43:03.115+00
47	plugins::content-manager.collection-types.configure-view	\N	\N	[]	1	2020-09-10 16:43:03.165+00	2020-09-10 16:43:03.195+00
57	plugins::users-permissions.advanced-settings.read	\N	\N	[]	1	2020-09-10 16:43:03.247+00	2020-09-10 16:43:03.278+00
67	admin::users.read	\N	\N	[]	1	2020-09-10 16:43:03.331+00	2020-09-10 16:43:03.352+00
15	plugins::content-manager.explorer.create	application::landing-page.landing-page	["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.image", "sectionTech.techIcons.title", "sectionModules.title", "sectionModules.module.title", "sectionModules.module.subtitle", "sectionModules.module.description", "sectionSchedule.title", "sectionSchedule.description", "pricingBox.totalPrice", "pricingBox.installmentsNumber", "pricingBox.installmentPrice", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.review.photo", "sectionReviews.review.name", "sectionReviews.review.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "sectionConcepts.title"]	["admin::is-creator"]	3	2020-09-10 16:43:02.877+00	2020-09-10 17:31:01.78+00
21	plugins::content-manager.explorer.delete	application::landing-page.landing-page	\N	["admin::is-creator"]	3	2020-09-10 16:43:02.878+00	2020-09-10 16:43:02.914+00
36	plugins::content-manager.explorer.delete	application::authors.authors	\N	[]	1	2020-09-10 16:43:03.022+00	2020-09-10 16:43:03.054+00
46	plugins::content-manager.single-types.configure-view	\N	\N	[]	1	2020-09-10 16:43:03.101+00	2020-09-10 16:43:03.13+00
56	plugins::users-permissions.email-templates.update	\N	\N	[]	1	2020-09-10 16:43:03.181+00	2020-09-10 16:43:03.214+00
66	admin::users.create	\N	\N	[]	1	2020-09-10 16:43:03.266+00	2020-09-10 16:43:03.293+00
6	plugins::content-manager.explorer.update	application::landing-page.landing-page	["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.image", "sectionTech.techIcons.title", "sectionModules.title", "sectionModules.module.title", "sectionModules.module.subtitle", "sectionModules.module.description", "sectionSchedule.title", "sectionSchedule.description", "pricingBox.totalPrice", "pricingBox.installmentsNumber", "pricingBox.installmentPrice", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.review.photo", "sectionReviews.review.name", "sectionReviews.review.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "sectionConcepts.title"]	[]	2	2020-09-10 16:43:02.769+00	2020-09-10 17:31:01.781+00
7	plugins::content-manager.explorer.delete	application::authors.authors	\N	[]	2	2020-09-10 16:43:02.769+00	2020-09-10 16:43:02.797+00
20	plugins::content-manager.explorer.delete	application::authors.authors	\N	["admin::is-creator"]	3	2020-09-10 16:43:02.878+00	2020-09-10 16:43:02.914+00
32	plugins::content-manager.explorer.read	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmed", "blocked", "role"]	[]	1	2020-09-10 16:43:03.021+00	2020-09-10 16:43:03.046+00
39	plugins::content-type-builder.read	\N	\N	[]	1	2020-09-10 16:43:03.091+00	2020-09-10 16:43:03.119+00
53	plugins::users-permissions.providers.read	\N	\N	[]	1	2020-09-10 16:43:03.172+00	2020-09-10 16:43:03.204+00
60	admin::marketplace.plugins.install	\N	\N	[]	1	2020-09-10 16:43:03.253+00	2020-09-10 16:43:03.283+00
71	admin::roles.read	\N	\N	[]	1	2020-09-10 16:43:03.335+00	2020-09-10 16:43:03.356+00
8	plugins::content-manager.explorer.delete	application::landing-page.landing-page	\N	[]	2	2020-09-10 16:43:02.769+00	2020-09-10 16:43:02.797+00
18	plugins::content-manager.explorer.update	application::authors.authors	["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]	["admin::is-creator"]	3	2020-09-10 16:43:02.877+00	2020-09-10 16:43:02.913+00
35	plugins::content-manager.explorer.update	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmed", "blocked", "role"]	[]	1	2020-09-10 16:43:03.021+00	2020-09-10 16:43:03.054+00
45	plugins::upload.settings.read	\N	\N	[]	1	2020-09-10 16:43:03.099+00	2020-09-10 16:43:03.127+00
55	plugins::users-permissions.email-templates.read	\N	\N	[]	1	2020-09-10 16:43:03.177+00	2020-09-10 16:43:03.211+00
65	admin::webhooks.delete	\N	\N	[]	1	2020-09-10 16:43:03.26+00	2020-09-10 16:43:03.289+00
9	plugins::upload.read	\N	\N	[]	2	2020-09-10 16:43:02.769+00	2020-09-10 16:43:02.797+00
25	plugins::upload.assets.download	\N	\N	[]	3	2020-09-10 16:43:02.968+00	2020-09-10 16:43:02.98+00
42	plugins::upload.assets.update	\N	\N	[]	1	2020-09-10 16:43:03.091+00	2020-09-10 16:43:03.12+00
51	plugins::users-permissions.roles.update	\N	\N	[]	1	2020-09-10 16:43:03.172+00	2020-09-10 16:43:03.204+00
63	admin::webhooks.read	\N	\N	[]	1	2020-09-10 16:43:03.253+00	2020-09-10 16:43:03.283+00
73	admin::roles.delete	\N	\N	[]	1	2020-09-10 16:43:03.336+00	2020-09-10 16:43:03.359+00
19	plugins::content-manager.explorer.update	application::landing-page.landing-page	["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.image", "sectionTech.techIcons.title", "sectionModules.title", "sectionModules.module.title", "sectionModules.module.subtitle", "sectionModules.module.description", "sectionSchedule.title", "sectionSchedule.description", "pricingBox.totalPrice", "pricingBox.installmentsNumber", "pricingBox.installmentPrice", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.review.photo", "sectionReviews.review.name", "sectionReviews.review.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "sectionConcepts.title"]	["admin::is-creator"]	3	2020-09-10 16:43:02.877+00	2020-09-10 17:31:01.781+00
10	plugins::upload.assets.create	\N	\N	[]	2	2020-09-10 16:43:02.769+00	2020-09-10 16:43:02.806+00
33	plugins::content-manager.explorer.update	application::authors.authors	["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]	[]	1	2020-09-10 16:43:03.021+00	2020-09-10 16:43:03.046+00
41	plugins::upload.assets.create	\N	\N	[]	1	2020-09-10 16:43:03.091+00	2020-09-10 16:43:03.12+00
49	plugins::users-permissions.roles.create	\N	\N	[]	1	2020-09-10 16:43:03.171+00	2020-09-10 16:43:03.203+00
62	admin::webhooks.create	\N	\N	[]	1	2020-09-10 16:43:03.253+00	2020-09-10 16:43:03.283+00
70	admin::roles.create	\N	\N	[]	1	2020-09-10 16:43:03.335+00	2020-09-10 16:43:03.356+00
17	plugins::content-manager.explorer.read	application::landing-page.landing-page	["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.image", "sectionTech.techIcons.title", "sectionModules.title", "sectionModules.module.title", "sectionModules.module.subtitle", "sectionModules.module.description", "sectionSchedule.title", "sectionSchedule.description", "pricingBox.totalPrice", "pricingBox.installmentsNumber", "pricingBox.installmentPrice", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.review.photo", "sectionReviews.review.name", "sectionReviews.review.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "sectionConcepts.title"]	["admin::is-creator"]	3	2020-09-10 16:43:02.877+00	2020-09-10 17:31:01.793+00
22	plugins::upload.read	\N	\N	["admin::is-creator"]	3	2020-09-10 16:43:02.878+00	2020-09-10 16:43:02.914+00
40	plugins::upload.read	\N	\N	[]	1	2020-09-10 16:43:03.091+00	2020-09-10 16:43:03.12+00
50	plugins::users-permissions.roles.read	\N	\N	[]	1	2020-09-10 16:43:03.171+00	2020-09-10 16:43:03.204+00
61	admin::marketplace.plugins.uninstall	\N	\N	[]	1	2020-09-10 16:43:03.253+00	2020-09-10 16:43:03.283+00
69	admin::users.delete	\N	\N	[]	1	2020-09-10 16:43:03.335+00	2020-09-10 16:43:03.356+00
1	plugins::content-manager.explorer.create	application::landing-page.landing-page	["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.image", "sectionTech.techIcons.title", "sectionModules.title", "sectionModules.module.title", "sectionModules.module.subtitle", "sectionModules.module.description", "sectionSchedule.title", "sectionSchedule.description", "pricingBox.totalPrice", "pricingBox.installmentsNumber", "pricingBox.installmentPrice", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.review.photo", "sectionReviews.review.name", "sectionReviews.review.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer", "sectionConcepts.title"]	[]	2	2020-09-10 16:43:02.768+00	2020-09-10 17:31:01.793+00
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2020-09-10 16:43:02.697+00	2020-09-10 16:43:02.697+00
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2020-09-10 16:43:02.726+00	2020-09-10 16:43:02.726+00
3	Author	strapi-author	Authors can manage and publish the content they created.	2020-09-10 16:43:02.741+00	2020-09-10 16:43:02.741+00
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
1	logo_74e2fdc755.svg			256	56	\N	logo_74e2fdc755_e01f209c55	.svg	image/svg+xml	7.11	/uploads/logo_74e2fdc755_e01f209c55.svg	\N	local	\N	1	1	2020-09-10 17:06:33.866+00	2020-09-10 17:06:33.933+00
2	hero_illustration_86997ad966.svg			427	373	\N	hero_illustration_86997ad966_d3045ee703	.svg	image/svg+xml	12.61	/uploads/hero_illustration_86997ad966_d3045ee703.svg	\N	local	\N	1	1	2020-09-10 17:07:49.269+00	2020-09-10 17:07:49.347+00
3	project_440f25b520.png			586	447	{"small": {"ext": ".png", "url": "/uploads/small_project_440f25b520_dbe65bb9cd.png", "hash": "small_project_440f25b520_dbe65bb9cd", "mime": "image/png", "name": "small_project_440f25b520.png", "path": null, "size": 192.52, "width": 500, "height": 381}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_project_440f25b520_dbe65bb9cd.png", "hash": "thumbnail_project_440f25b520_dbe65bb9cd", "mime": "image/png", "name": "thumbnail_project_440f25b520.png", "path": null, "size": 41.41, "width": 205, "height": 156}}	project_440f25b520_dbe65bb9cd	.png	image/png	74.28	/uploads/project_440f25b520_dbe65bb9cd.png	\N	local	\N	1	1	2020-09-10 17:09:10.867+00	2020-09-10 17:09:10.929+00
4	typescript_8c2d3e5d4f.svg			128	129	\N	typescript_8c2d3e5d4f_9bb50699a5	.svg	image/svg+xml	1.84	/uploads/typescript_8c2d3e5d4f_9bb50699a5.svg	\N	local	\N	1	1	2020-09-10 17:11:48.324+00	2020-09-10 17:11:48.362+00
5	react_791425b954.svg			131	129	\N	react_791425b954_c4aff23de5	.svg	image/svg+xml	2.23	/uploads/react_791425b954_c4aff23de5.svg	\N	local	\N	1	1	2020-09-10 17:12:14.92+00	2020-09-10 17:12:15.038+00
6	nextjs_722bbe18a3.svg			131	128	\N	nextjs_722bbe18a3_a32edf7d0c	.svg	image/svg+xml	1.29	/uploads/nextjs_722bbe18a3_a32edf7d0c.svg	\N	local	\N	1	1	2020-09-10 17:12:39.204+00	2020-09-10 17:12:39.268+00
7	strapi_442d7d4708.svg			128	129	\N	strapi_442d7d4708_90bb49d24f	.svg	image/svg+xml	1.17	/uploads/strapi_442d7d4708_90bb49d24f.svg	\N	local	\N	1	1	2020-09-10 17:13:21.804+00	2020-09-10 17:13:21.886+00
8	apollo_e2a8694530.svg			130	128	\N	apollo_e2a8694530_34c8b5a13e	.svg	image/svg+xml	1.54	/uploads/apollo_e2a8694530_34c8b5a13e.svg	\N	local	\N	1	1	2020-09-10 17:13:42.929+00	2020-09-10 17:13:42.99+00
9	graphql_20c1bf23e2.svg			129	128	\N	graphql_20c1bf23e2_e102567a78	.svg	image/svg+xml	2.84	/uploads/graphql_20c1bf23e2_e102567a78.svg	\N	local	\N	1	1	2020-09-10 17:14:23.394+00	2020-09-10 17:14:23.472+00
10	jest_da49922029.svg			123	123	\N	jest_da49922029_3e1798762e	.svg	image/svg+xml	2.78	/uploads/jest_da49922029_3e1798762e.svg	\N	local	\N	1	1	2020-09-10 17:14:45.032+00	2020-09-10 17:14:45.103+00
11	rtl_e863b3c932.svg			128	129	\N	rtl_e863b3c932_92e767e399	.svg	image/svg+xml	9.62	/uploads/rtl_e863b3c932_92e767e399.svg	\N	local	\N	1	1	2020-09-10 17:15:23.912+00	2020-09-10 17:15:24+00
12	storybook_d7b6134b45.svg			128	129	\N	storybook_d7b6134b45_932afd2bc5	.svg	image/svg+xml	2.56	/uploads/storybook_d7b6134b45_932afd2bc5.svg	\N	local	\N	1	1	2020-09-10 17:15:55.674+00	2020-09-10 17:15:55.762+00
13	cypress_3aa76eb266.svg			130	129	\N	cypress_3aa76eb266_682749e098	.svg	image/svg+xml	1.73	/uploads/cypress_3aa76eb266_682749e098.svg	\N	local	\N	1	1	2020-09-10 17:16:16.011+00	2020-09-10 17:16:16.114+00
14	willian_3f15d1601b.png			250	250	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_willian_3f15d1601b_ad5eebb9ae.png", "hash": "thumbnail_willian_3f15d1601b_ad5eebb9ae", "mime": "image/png", "name": "thumbnail_willian_3f15d1601b.png", "path": null, "size": 53.4, "width": 156, "height": 156}}	willian_3f15d1601b_ad5eebb9ae	.png	image/png	38.54	/uploads/willian_3f15d1601b_ad5eebb9ae.png	\N	local	\N	1	1	2020-09-10 17:25:05.487+00	2020-09-10 17:25:05.522+00
15	henrique_albert_934b240c41.jpeg			50	50	\N	henrique_albert_934b240c41_2443e6eccd	.jpeg	image/jpeg	1.10	/uploads/henrique_albert_934b240c41_2443e6eccd.jpeg	\N	local	\N	1	1	2020-09-10 17:26:35.767+00	2020-09-10 17:26:35.828+00
16	thumbnail_guilherme_5278e405b4.png			156	156	\N	thumbnail_guilherme_5278e405b4_dce5140aaf	.png	image/png	60.89	/uploads/thumbnail_guilherme_5278e405b4_dce5140aaf.png	\N	local	\N	1	1	2020-09-10 17:48:56.083+00	2020-09-10 17:48:56.135+00
17	thumbnail_marcos_4c630b4166.png			157	156	\N	thumbnail_marcos_4c630b4166_eb50d7f36d	.png	image/png	61.30	/uploads/thumbnail_marcos_4c630b4166_eb50d7f36d.png	\N	local	\N	1	1	2020-09-10 17:49:55.858+00	2020-09-10 17:49:55.898+00
18	alexandre_teixeira_3477db86cc.jpeg			50	50	\N	alexandre_teixeira_3477db86cc_736cced3ff	.jpeg	image/jpeg	1.14	/uploads/alexandre_teixeira_3477db86cc_736cced3ff.jpeg	\N	local	\N	1	1	2020-09-10 17:55:27.429+00	2020-09-10 17:55:27.553+00
19	daniel_oliveira_22ceef05a5.jpeg			50	50	\N	daniel_oliveira_22ceef05a5_1af16b893e	.jpeg	image/jpeg	1.10	/uploads/daniel_oliveira_22ceef05a5_1af16b893e.jpeg	\N	local	\N	1	1	2020-09-10 17:59:18.3+00	2020-09-10 17:59:18.807+00
21	douglas_lopes_5c3cea8c4a.jpeg			50	50	\N	douglas_lopes_5c3cea8c4a_6713049410	.jpeg	image/jpeg	1.14	/uploads/douglas_lopes_5c3cea8c4a_6713049410.jpeg	\N	local	\N	1	1	2020-09-10 17:59:18.319+00	2020-09-10 17:59:18.824+00
20	mileine_souto_992539f184.jpeg			50	50	\N	mileine_souto_992539f184_ce9ea4c369	.jpeg	image/jpeg	1.21	/uploads/mileine_souto_992539f184_ce9ea4c369.jpeg	\N	local	\N	1	1	2020-09-10 17:59:18.317+00	2020-09-10 17:59:18.825+00
22	ariel_dalton_d3d50ca590.jpeg			50	50	\N	ariel_dalton_d3d50ca590_6886f55558	.jpeg	image/jpeg	1.04	/uploads/ariel_dalton_d3d50ca590_6886f55558.jpeg	\N	local	\N	1	1	2020-09-10 17:59:18.345+00	2020-09-10 17:59:18.85+00
23	alane_ribeiro_da08475e76.jpeg			50	50	\N	alane_ribeiro_da08475e76_61d8c66b6f	.jpeg	image/jpeg	1.40	/uploads/alane_ribeiro_da08475e76_61d8c66b6f.jpeg	\N	local	\N	1	1	2020-09-10 17:59:18.399+00	2020-09-10 17:59:18.9+00
24	luiz_claudio_silva_6e178a2283.jpeg			50	50	\N	luiz_claudio_silva_6e178a2283_f674aa3ce4	.jpeg	image/jpeg	1.44	/uploads/luiz_claudio_silva_6e178a2283_f674aa3ce4.jpeg	\N	local	\N	1	1	2020-09-10 17:59:18.4+00	2020-09-10 17:59:18.9+00
25	karoline_medeiros_cecb15095a.jpeg			50	50	\N	karoline_medeiros_cecb15095a_db964c835a	.jpeg	image/jpeg	1.52	/uploads/karoline_medeiros_cecb15095a_db964c835a.jpeg	\N	local	\N	1	1	2020-09-10 18:04:03.086+00	2020-09-10 18:04:03.122+00
26	lianker_lopes_c90c9e2872.jpeg			50	50	\N	lianker_lopes_c90c9e2872_cd0da3e7da	.jpeg	image/jpeg	1.41	/uploads/lianker_lopes_c90c9e2872_cd0da3e7da.jpeg	\N	local	\N	1	1	2020-09-10 18:05:28.698+00	2020-09-10 18:05:28.779+00
27	jorge_ramos_995906fcff.jpeg			50	50	\N	jorge_ramos_995906fcff_47e35d42b3	.jpeg	image/jpeg	1.00	/uploads/jorge_ramos_995906fcff_47e35d42b3.jpeg	\N	local	\N	1	1	2020-09-10 18:06:17.91+00	2020-09-10 18:06:17.995+00
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
1	14	1	authors	photo	1
78	2	3	components_page_headers	image	1
79	3	3	components_page_section_about_projects	image	1
80	4	21	components_page_tech_icons	image	1
81	5	22	components_page_tech_icons	image	1
82	6	23	components_page_tech_icons	image	1
83	7	24	components_page_tech_icons	image	1
84	8	25	components_page_tech_icons	image	1
85	9	26	components_page_tech_icons	image	1
86	10	27	components_page_tech_icons	image	1
87	11	28	components_page_tech_icons	image	1
88	12	29	components_page_tech_icons	image	1
89	13	30	components_page_tech_icons	image	1
90	19	9	components_page_reviews	photo	1
91	20	10	components_page_reviews	photo	1
92	21	11	components_page_reviews	photo	1
93	22	12	components_page_reviews	photo	1
94	24	13	components_page_reviews	photo	1
95	25	14	components_page_reviews	photo	1
96	23	15	components_page_reviews	photo	1
97	26	16	components_page_reviews	photo	1
98	27	17	components_page_reviews	photo	1
99	26	19	components_page_reviews	photo	1
100	15	1	components_page_reviews	photo	1
101	18	2	components_page_reviews	photo	1
102	1	3	landing_page	logo	1
40	16	2	authors	photo	1
41	17	3	authors	photo	1
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	application	authors	count	f		1	\N	\N
2	application	authors	count	f		2	\N	\N
3	application	authors	create	f		1	\N	\N
4	application	authors	create	f		2	\N	\N
5	application	authors	delete	f		1	\N	\N
6	application	authors	delete	f		2	\N	\N
7	application	authors	find	f		1	\N	\N
8	application	authors	find	f		2	\N	\N
9	application	authors	findone	f		1	\N	\N
10	application	authors	findone	f		2	\N	\N
11	application	authors	update	f		1	\N	\N
12	application	authors	update	f		2	\N	\N
13	application	landing-page	delete	f		1	\N	\N
14	application	landing-page	delete	f		2	\N	\N
15	application	landing-page	find	f		1	\N	\N
16	application	landing-page	find	f		2	\N	\N
17	application	landing-page	update	f		1	\N	\N
18	application	landing-page	update	f		2	\N	\N
19	content-manager	components	findcomponent	f		1	\N	\N
20	content-manager	components	findcomponent	f		2	\N	\N
21	content-manager	components	listcomponents	f		1	\N	\N
22	content-manager	components	listcomponents	f		2	\N	\N
23	content-manager	components	updatecomponent	f		1	\N	\N
24	content-manager	components	updatecomponent	f		2	\N	\N
25	content-manager	contentmanager	checkuidavailability	f		1	\N	\N
26	content-manager	contentmanager	checkuidavailability	f		2	\N	\N
27	content-manager	contentmanager	count	f		1	\N	\N
28	content-manager	contentmanager	count	f		2	\N	\N
29	content-manager	contentmanager	create	f		1	\N	\N
30	content-manager	contentmanager	create	f		2	\N	\N
31	content-manager	contentmanager	delete	f		1	\N	\N
32	content-manager	contentmanager	delete	f		2	\N	\N
33	content-manager	contentmanager	deletemany	f		1	\N	\N
34	content-manager	contentmanager	deletemany	f		2	\N	\N
35	content-manager	contentmanager	find	f		1	\N	\N
36	content-manager	contentmanager	find	f		2	\N	\N
37	content-manager	contentmanager	findone	f		1	\N	\N
38	content-manager	contentmanager	findone	f		2	\N	\N
39	content-manager	contentmanager	findrelationlist	f		1	\N	\N
40	content-manager	contentmanager	findrelationlist	f		2	\N	\N
41	content-manager	contentmanager	generateuid	f		1	\N	\N
42	content-manager	contentmanager	generateuid	f		2	\N	\N
43	content-manager	contentmanager	update	f		1	\N	\N
44	content-manager	contentmanager	update	f		2	\N	\N
45	content-manager	contenttypes	findcontenttype	f		1	\N	\N
46	content-manager	contenttypes	findcontenttype	f		2	\N	\N
47	content-manager	contenttypes	listcontenttypes	f		1	\N	\N
48	content-manager	contenttypes	listcontenttypes	f		2	\N	\N
49	content-manager	contenttypes	updatecontenttype	f		1	\N	\N
50	content-manager	contenttypes	updatecontenttype	f		2	\N	\N
51	content-type-builder	builder	getreservednames	f		1	\N	\N
52	content-type-builder	builder	getreservednames	f		2	\N	\N
53	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
54	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
55	content-type-builder	componentcategories	editcategory	f		1	\N	\N
56	content-type-builder	componentcategories	editcategory	f		2	\N	\N
57	content-type-builder	components	createcomponent	f		1	\N	\N
58	content-type-builder	components	createcomponent	f		2	\N	\N
59	content-type-builder	components	deletecomponent	f		1	\N	\N
60	content-type-builder	components	deletecomponent	f		2	\N	\N
61	content-type-builder	components	getcomponent	f		1	\N	\N
62	content-type-builder	components	getcomponent	f		2	\N	\N
63	content-type-builder	components	getcomponents	f		1	\N	\N
64	content-type-builder	components	getcomponents	f		2	\N	\N
65	content-type-builder	components	updatecomponent	f		1	\N	\N
66	content-type-builder	components	updatecomponent	f		2	\N	\N
67	content-type-builder	connections	getconnections	f		1	\N	\N
68	content-type-builder	connections	getconnections	f		2	\N	\N
69	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
70	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
71	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
72	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
73	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
74	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
75	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
76	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
80	email	email	send	f		2	\N	\N
85	upload	upload	destroy	f		1	\N	\N
94	upload	upload	search	f		2	\N	\N
105	users-permissions	auth	forgotpassword	f		1	\N	\N
115	users-permissions	user	create	f		1	\N	\N
125	users-permissions	user	me	t		1	\N	\N
134	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
144	users-permissions	userspermissions	getrole	f		2	\N	\N
155	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
77	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
84	upload	upload	count	f		2	\N	\N
97	upload	upload	upload	f		1	\N	\N
107	users-permissions	auth	register	f		1	\N	\N
118	users-permissions	user	destroy	f		2	\N	\N
127	users-permissions	user	update	f		1	\N	\N
137	users-permissions	userspermissions	getpermissions	f		1	\N	\N
148	users-permissions	userspermissions	getroutes	f		2	\N	\N
157	users-permissions	userspermissions	updateproviders	f		1	\N	\N
78	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
88	upload	upload	find	f		2	\N	\N
98	upload	upload	upload	f		2	\N	\N
109	users-permissions	auth	resetpassword	f		1	\N	\N
119	users-permissions	user	destroyall	f		1	\N	\N
128	users-permissions	user	update	f		2	\N	\N
138	users-permissions	userspermissions	getpermissions	f		2	\N	\N
149	users-permissions	userspermissions	index	f		1	\N	\N
158	users-permissions	userspermissions	updateproviders	f		2	\N	\N
79	email	email	send	f		1	\N	\N
89	upload	upload	findone	f		1	\N	\N
99	users-permissions	auth	callback	f		1	\N	\N
108	users-permissions	auth	register	t		2	\N	\N
117	users-permissions	user	destroy	f		1	\N	\N
129	users-permissions	userspermissions	createrole	f		1	\N	\N
139	users-permissions	userspermissions	getpolicies	f		1	\N	\N
147	users-permissions	userspermissions	getroutes	f		1	\N	\N
159	users-permissions	userspermissions	updaterole	f		1	\N	\N
86	upload	upload	destroy	f		2	\N	\N
96	upload	upload	updatesettings	f		2	\N	\N
106	users-permissions	auth	forgotpassword	t		2	\N	\N
116	users-permissions	user	create	f		2	\N	\N
126	users-permissions	user	me	t		2	\N	\N
136	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
146	users-permissions	userspermissions	getroles	f		2	\N	\N
156	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
87	upload	upload	find	f		1	\N	\N
95	upload	upload	updatesettings	f		1	\N	\N
104	users-permissions	auth	emailconfirmation	t		2	\N	\N
114	users-permissions	user	count	f		2	\N	\N
124	users-permissions	user	findone	f		2	\N	\N
135	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
145	users-permissions	userspermissions	getroles	f		1	\N	\N
154	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
90	upload	upload	findone	f		2	\N	\N
100	users-permissions	auth	callback	t		2	\N	\N
110	users-permissions	auth	resetpassword	t		2	\N	\N
120	users-permissions	user	destroyall	f		2	\N	\N
130	users-permissions	userspermissions	createrole	f		2	\N	\N
140	users-permissions	userspermissions	getpolicies	f		2	\N	\N
150	users-permissions	userspermissions	index	f		2	\N	\N
160	users-permissions	userspermissions	updaterole	f		2	\N	\N
81	upload	proxy	uploadproxy	f		1	\N	\N
91	upload	upload	getsettings	f		1	\N	\N
101	users-permissions	auth	connect	t		1	\N	\N
111	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
121	users-permissions	user	find	f		1	\N	\N
131	users-permissions	userspermissions	deleterole	f		1	\N	\N
141	users-permissions	userspermissions	getproviders	f		1	\N	\N
151	users-permissions	userspermissions	searchusers	f		1	\N	\N
161	wysiwyg	wysiwyg	index	f		1	\N	\N
82	upload	proxy	uploadproxy	f		2	\N	\N
92	upload	upload	getsettings	f		2	\N	\N
102	users-permissions	auth	connect	t		2	\N	\N
112	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
122	users-permissions	user	find	f		2	\N	\N
132	users-permissions	userspermissions	deleterole	f		2	\N	\N
142	users-permissions	userspermissions	getproviders	f		2	\N	\N
152	users-permissions	userspermissions	searchusers	f		2	\N	\N
162	wysiwyg	wysiwyg	index	f		2	\N	\N
83	upload	upload	count	f		1	\N	\N
93	upload	upload	search	f		1	\N	\N
103	users-permissions	auth	emailconfirmation	f		1	\N	\N
113	users-permissions	user	count	f		1	\N	\N
123	users-permissions	user	findone	f		1	\N	\N
133	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
143	users-permissions	userspermissions	getrole	f		1	\N	\N
153	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Name: authors_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.authors_components_id_seq', 7, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.authors_id_seq', 3, true);


--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 6, true);


--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_concepts_id_seq', 54, true);


--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_headers_components_id_seq', 3, true);


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_headers_id_seq', 3, true);


--
-- Name: components_page_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_modules_id_seq', 18, true);


--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_pricing_boxes_components_id_seq', 3, true);


--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_pricing_boxes_id_seq', 3, true);


--
-- Name: components_page_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_questions_id_seq', 7, true);


--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_reviews_id_seq', 22, true);


--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_about_projects_id_seq', 3, true);


--
-- Name: components_page_section_aboutuses__authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_aboutuses__authors_id_seq', 3, true);


--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_aboutuses_id_seq', 3, true);


--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_concepts_components_id_seq', 54, true);


--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_concepts_id_seq', 3, true);


--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_faqs_components_id_seq', 7, true);


--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_faqs_id_seq', 1, true);


--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_modules_components_id_seq', 18, true);


--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_modules_id_seq', 3, true);


--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_reviews_components_id_seq', 22, true);


--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_reviews_id_seq', 3, true);


--
-- Name: components_page_section_schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_schedules_id_seq', 3, true);


--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_teches_components_id_seq', 30, true);


--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_section_teches_id_seq', 3, true);


--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_social_links_id_seq', 7, true);


--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_page_tech_icons_id_seq', 30, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.core_store_id_seq', 61, true);


--
-- Name: landing_page_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.landing_page_components_id_seq', 26, true);


--
-- Name: landing_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.landing_page_id_seq', 3, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 76, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 27, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 102, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 162, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);


--
-- Name: authors_components authors_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_components_pkey PRIMARY KEY (id);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: components_page_buttons components_page_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_page_concepts components_page_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_concepts
    ADD CONSTRAINT components_page_concepts_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers_components components_page_headers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers components_page_headers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers
    ADD CONSTRAINT components_page_headers_pkey PRIMARY KEY (id);


--
-- Name: components_page_modules components_page_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_modules
    ADD CONSTRAINT components_page_modules_pkey PRIMARY KEY (id);


--
-- Name: components_page_pricing_boxes_components components_page_pricing_boxes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_pricing_boxes components_page_pricing_boxes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_pricing_boxes
    ADD CONSTRAINT components_page_pricing_boxes_pkey PRIMARY KEY (id);


--
-- Name: components_page_questions components_page_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_questions
    ADD CONSTRAINT components_page_questions_pkey PRIMARY KEY (id);


--
-- Name: components_page_reviews components_page_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_reviews
    ADD CONSTRAINT components_page_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_about_projects components_page_section_about_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_about_projects
    ADD CONSTRAINT components_page_section_about_projects_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_aboutuses__authors components_page_section_aboutuses__authors_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_aboutuses__authors
    ADD CONSTRAINT components_page_section_aboutuses__authors_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_aboutuses components_page_section_aboutuses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_aboutuses
    ADD CONSTRAINT components_page_section_aboutuses_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_concepts_components components_page_section_concepts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concepts_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_concepts components_page_section_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_concepts
    ADD CONSTRAINT components_page_section_concepts_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_faqs_components components_page_section_faqs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_faqs components_page_section_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_faqs
    ADD CONSTRAINT components_page_section_faqs_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_modules_components components_page_section_modules_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_modules_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_modules components_page_section_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_modules
    ADD CONSTRAINT components_page_section_modules_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_reviews_components components_page_section_reviews_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_reviews components_page_section_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_reviews
    ADD CONSTRAINT components_page_section_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_schedules components_page_section_schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_schedules
    ADD CONSTRAINT components_page_section_schedules_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_teches_components components_page_section_teches_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_teches components_page_section_teches_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_teches
    ADD CONSTRAINT components_page_section_teches_pkey PRIMARY KEY (id);


--
-- Name: components_page_social_links components_page_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_social_links
    ADD CONSTRAINT components_page_social_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_tech_icons components_page_tech_icons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_tech_icons
    ADD CONSTRAINT components_page_tech_icons_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: landing_page_components landing_page_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.landing_page_components
    ADD CONSTRAINT landing_page_components_pkey PRIMARY KEY (id);


--
-- Name: landing_page landing_page_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.landing_page
    ADD CONSTRAINT landing_page_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: authors_components author_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT author_id_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: components_page_headers_components components_page_header_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_header_id_fk FOREIGN KEY (components_page_header_id) REFERENCES public.components_page_headers(id) ON DELETE CASCADE;


--
-- Name: components_page_pricing_boxes_components components_page_pricing_box_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_box_id_fk FOREIGN KEY (components_page_pricing_box_id) REFERENCES public.components_page_pricing_boxes(id) ON DELETE CASCADE;


--
-- Name: components_page_section_concepts_components components_page_section_concept_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concept_id_fk FOREIGN KEY (components_page_section_concept_id) REFERENCES public.components_page_section_concepts(id) ON DELETE CASCADE;


--
-- Name: components_page_section_faqs_components components_page_section_faq_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faq_id_fk FOREIGN KEY (components_page_section_faq_id) REFERENCES public.components_page_section_faqs(id) ON DELETE CASCADE;


--
-- Name: components_page_section_modules_components components_page_section_module_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_module_id_fk FOREIGN KEY (components_page_section_module_id) REFERENCES public.components_page_section_modules(id) ON DELETE CASCADE;


--
-- Name: components_page_section_reviews_components components_page_section_review_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_review_id_fk FOREIGN KEY (components_page_section_review_id) REFERENCES public.components_page_section_reviews(id) ON DELETE CASCADE;


--
-- Name: components_page_section_teches_components components_page_section_tech_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_tech_id_fk FOREIGN KEY (components_page_section_tech_id) REFERENCES public.components_page_section_teches(id) ON DELETE CASCADE;


--
-- Name: landing_page_components landing_page_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.landing_page_components
    ADD CONSTRAINT landing_page_id_fk FOREIGN KEY (landing_page_id) REFERENCES public.landing_page(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

