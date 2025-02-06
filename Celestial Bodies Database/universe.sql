--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galactic_event; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galactic_event (
    galactic_event_id integer NOT NULL,
    name character varying(100) NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.galactic_event OWNER TO freecodecamp;

--
-- Name: galactic_event_galactic_event_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galactic_event_galactic_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galactic_event_galactic_event_id_seq OWNER TO freecodecamp;

--
-- Name: galactic_event_galactic_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galactic_event_galactic_event_id_seq OWNED BY public.galactic_event.galactic_event_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_type character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    age_in_million_of_year integer,
    description text,
    name character varying(50) NOT NULL
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
    name character varying(50),
    moon_id integer NOT NULL,
    planet_id integer,
    is_spherical boolean NOT NULL,
    distance_from_planet numeric NOT NULL
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
    name character varying(50),
    star_id integer,
    planet_id integer NOT NULL,
    age integer NOT NULL,
    is_habitable boolean NOT NULL
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
    name character varying(50),
    galaxy_id integer,
    star_id integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: galactic_event galactic_event_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_event ALTER COLUMN galactic_event_id SET DEFAULT nextval('public.galactic_event_galactic_event_id_seq'::regclass);


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
-- Data for Name: galactic_event; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galactic_event VALUES (1, 'Supernova 1', 2024);
INSERT INTO public.galactic_event VALUES (2, 'Supernova 2', 2024);
INSERT INTO public.galactic_event VALUES (3, 'Supernova 3', 2024);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral', false, 13000, 'A majestic galaxy with long, winding arms', 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 'Elliptical', false, 15000, 'A smooth, oval-shaped galaxy with little dust or gas', 'Messier 87');
INSERT INTO public.galaxy VALUES (3, 'Irregular', true, 8000, 'A chaotic galaxy with no distinct shape', 'Magellanic Clouds');
INSERT INTO public.galaxy VALUES (4, 'Spiral', true, 10000, 'A barred spiral galaxy with a prominent central bar', 'Andromeda Galaxy');
INSERT INTO public.galaxy VALUES (5, 'Elliptical', false, 12000, 'A giant elliptical galaxy with a supermassive black hole at its center', 'M84');
INSERT INTO public.galaxy VALUES (6, 'Irregular', true, 6000, 'A famous galaxy with a dark dust lane obscuring its center', 'Black Eye Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon 1', 1, 1, true, 384400);
INSERT INTO public.moon VALUES ('Moon 2', 2, 1, true, 384400);
INSERT INTO public.moon VALUES ('Moon 3', 3, 2, false, 363300);
INSERT INTO public.moon VALUES ('Moon 4', 4, 2, false, 363300);
INSERT INTO public.moon VALUES ('Moon 5', 5, 3, true, 405400);
INSERT INTO public.moon VALUES ('Moon 6', 6, 3, true, 405400);
INSERT INTO public.moon VALUES ('Moon 7', 7, 4, false, 347600);
INSERT INTO public.moon VALUES ('Moon 8', 8, 4, false, 347600);
INSERT INTO public.moon VALUES ('Moon 9', 9, 5, true, 301600);
INSERT INTO public.moon VALUES ('Moon 10', 10, 5, true, 301600);
INSERT INTO public.moon VALUES ('Moon 11', 11, 6, false, 421700);
INSERT INTO public.moon VALUES ('Moon 12', 12, 6, false, 421700);
INSERT INTO public.moon VALUES ('Moon 13', 13, 7, true, 413300);
INSERT INTO public.moon VALUES ('Moon 14', 14, 7, true, 413300);
INSERT INTO public.moon VALUES ('Moon 15', 15, 8, false, 382900);
INSERT INTO public.moon VALUES ('Moon 16', 16, 8, false, 382900);
INSERT INTO public.moon VALUES ('Moon 17', 17, 9, true, 364500);
INSERT INTO public.moon VALUES ('Moon 18', 18, 9, true, 364500);
INSERT INTO public.moon VALUES ('Moon 19', 19, 10, false, 402300);
INSERT INTO public.moon VALUES ('Moon 20', 20, 10, false, 402300);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Planet 1', 1, 1, 50000000, true);
INSERT INTO public.planet VALUES ('Planet 2', 2, 2, 40000000, false);
INSERT INTO public.planet VALUES ('Planet 3', 3, 3, 30000000, true);
INSERT INTO public.planet VALUES ('Planet 4', 4, 4, 20000000, false);
INSERT INTO public.planet VALUES ('Planet 5', 5, 5, 10000000, true);
INSERT INTO public.planet VALUES ('Planet 6', 6, 6, 5000000, false);
INSERT INTO public.planet VALUES ('Planet 7', 7, 7, 4000000, true);
INSERT INTO public.planet VALUES ('Planet 8', 8, 8, 3000000, false);
INSERT INTO public.planet VALUES ('Planet 9', 9, 9, 2000000, true);
INSERT INTO public.planet VALUES ('Planet 10', 10, 10, 1000000, false);
INSERT INTO public.planet VALUES ('Planet 11', 11, 11, 500000, true);
INSERT INTO public.planet VALUES ('Planet 12', 12, 12, 400000, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Black Eye Star 1', 6, 1, 2000, true);
INSERT INTO public.star VALUES ('Black Eye Star 2', 6, 2, 1500, false);
INSERT INTO public.star VALUES ('Black Eye Star 3', 6, 3, 1800, true);
INSERT INTO public.star VALUES ('Magellanic Star 1', 3, 4, 2200, false);
INSERT INTO public.star VALUES ('Magellanic Star 2', 3, 5, 2500, true);
INSERT INTO public.star VALUES ('Magellanic Star 3', 3, 6, 2800, false);
INSERT INTO public.star VALUES ('Milky Way Star 1', 1, 7, 1800, true);
INSERT INTO public.star VALUES ('Milky Way Star 2', 1, 8, 2000, false);
INSERT INTO public.star VALUES ('Milky Way Star 3', 1, 9, 2300, true);
INSERT INTO public.star VALUES ('M84 Star 1', 5, 10, 2500, false);
INSERT INTO public.star VALUES ('M84 Star 2', 5, 11, 2800, true);
INSERT INTO public.star VALUES ('M84 Star 3', 5, 12, 3000, false);
INSERT INTO public.star VALUES ('Andromeda Star 1', 4, 13, 2800, true);
INSERT INTO public.star VALUES ('Andromeda Star 2', 4, 14, 3000, false);
INSERT INTO public.star VALUES ('Andromeda Star 3', 4, 15, 3200, true);
INSERT INTO public.star VALUES ('Messier 87 Star 1', 2, 16, 2000, false);
INSERT INTO public.star VALUES ('Messier 87 Star 2', 2, 17, 2200, true);
INSERT INTO public.star VALUES ('Messier 87 Star 3', 2, 18, 2400, false);


--
-- Name: galactic_event_galactic_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galactic_event_galactic_event_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 18, true);


--
-- Name: galactic_event galactic_event_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_event
    ADD CONSTRAINT galactic_event_pkey PRIMARY KEY (galactic_event_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galactic_event unique_name_galactic_event; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_event
    ADD CONSTRAINT unique_name_galactic_event UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

