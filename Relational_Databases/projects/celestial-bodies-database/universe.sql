--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    has_tail boolean,
    distance_from_sun numeric
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric,
    galaxy_types text NOT NULL,
    is_spherical boolean NOT NULL,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric,
    is_spherical boolean NOT NULL,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric,
    planet_types text NOT NULL,
    is_spherical boolean NOT NULL,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric,
    is_spherical boolean NOT NULL,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', true, 35.1);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', true, 186);
INSERT INTO public.comet VALUES (3, 'Encke', true, 4.1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 0, 1500000, 'Spiral', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 2537000, 1200000, 'Spiral', true, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulm', 12000, 3000000, 500000, 'Spiral', true, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 13000, 230000000, 800000, 'Spiral', true, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 13200, 29000000, 900000, 'Elliptical', true, false);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 11000, 163000, 300000, 'Irregular', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'Moon', 4500, 384400, 73500000000000000000, true, false, 1);
INSERT INTO public.moon VALUES (5, 'Phobos', 4500, 93760000, 10600000000000000, false, false, 2);
INSERT INTO public.moon VALUES (6, 'Deimos', 4500, 93760000, 1480000000000000000, false, false, 2);
INSERT INTO public.moon VALUES (24, 'Io', 4500, 778, 89300000000000000000, true, false, 3);
INSERT INTO public.moon VALUES (25, 'Europa', 4500, 778, 48000000000000000000, true, false, 3);
INSERT INTO public.moon VALUES (26, 'Ganymede', 4500, 778, 148000000000000000000, true, false, 3);
INSERT INTO public.moon VALUES (27, 'Callisto', 4500, 778, 108000000000000000000, true, false, 3);
INSERT INTO public.moon VALUES (28, 'Titan', 4500, 1429, 135000000000000000000, true, false, 9);
INSERT INTO public.moon VALUES (29, 'Rhea', 4500, 1429, 2300000000000000000000, true, false, 9);
INSERT INTO public.moon VALUES (30, 'Iapetus', 4500, 1429, 1800000000000000000000, true, false, 9);
INSERT INTO public.moon VALUES (31, 'Dione', 4500, 1429, 1100000000000000000000, true, false, 9);
INSERT INTO public.moon VALUES (32, 'Tethys', 4500, 1429, 620000000000000000000, true, false, 9);
INSERT INTO public.moon VALUES (33, 'Enceladus', 4500, 1429, 108000000000000000000, true, false, 9);
INSERT INTO public.moon VALUES (34, 'Miranda', 4500, 2871, 66000000000000000000, true, false, 10);
INSERT INTO public.moon VALUES (35, 'Ariel', 4500, 2871, 1350000000000000000000, true, false, 10);
INSERT INTO public.moon VALUES (36, 'Umbriel', 4500, 2871, 1170000000000000000000, true, false, 10);
INSERT INTO public.moon VALUES (37, 'Titania', 4500, 2871, 3520000000000000000000, true, false, 10);
INSERT INTO public.moon VALUES (38, 'Oberon', 4500, 2871, 3010000000000000000000, true, false, 10);
INSERT INTO public.moon VALUES (39, 'Triton', 4500, 4495, 21400000000000000000000, true, false, 11);
INSERT INTO public.moon VALUES (40, 'Nereid', 4500, 4495, 31000000000000000000, false, false, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, 0, 5972, 'Terrestrial', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4500, 225, 639, 'Terrestrial', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4500, 778, 1898000, 'Gas Giant', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Mercury', 4500, 77, 330, 'Terrestrial', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Venus', 4500, 41, 4870, 'Terrestrial', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Saturn', 4500, 1429, 568000, 'Gas Giant', true, false, 2);
INSERT INTO public.planet VALUES (10, 'Uranus', 4500, 2871, 86810, 'Ice Giant', true, false, 3);
INSERT INTO public.planet VALUES (11, 'Neptune', 4500, 4495, 102400, 'Ice Giant', true, false, 3);
INSERT INTO public.planet VALUES (12, 'Kepler-22b', 4000, 600000, 10000, 'Exoplanet', true, false, 4);
INSERT INTO public.planet VALUES (13, 'Proxima b', 4800, 40000, 1300, 'Exoplanet', true, false, 5);
INSERT INTO public.planet VALUES (14, 'Gliese 581g', 7000, 200000, 3000, 'Exoplanet', true, false, 6);
INSERT INTO public.planet VALUES (15, 'HD 209458 b', 5000, 150000, 220000, 'Gas Giant', true, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0, 1989000, true, false, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 242, 8600, 4020000, true, false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 10, 642500, 20000000, true, false, 2);
INSERT INTO public.star VALUES (4, 'Rigel', 8, 860, 21000000, true, false, 3);
INSERT INTO public.star VALUES (5, 'Polaris', 70, 433, 5400000, true, false, 4);
INSERT INTO public.star VALUES (6, 'Vega', 455, 25, 4100000, true, false, 5);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

