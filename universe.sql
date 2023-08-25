--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(40) NOT NULL,
    meaning_mythology text,
    star_id integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_type character varying(40),
    diameter_in_light_years integer NOT NULL,
    details text NOT NULL,
    is_visible_by_naked_eye boolean NOT NULL
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
    name character varying(40) NOT NULL,
    year_discovered integer NOT NULL,
    period_in_days numeric,
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
    name character varying(40) NOT NULL,
    meaning text NOT NULL,
    has_moon boolean NOT NULL,
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
    name character varying(40) NOT NULL,
    distance_in_light_years integer NOT NULL,
    visible_magnitude numeric(4,2) NOT NULL,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Aries', 'Ram whose golden fleece was recovered by Jason', 1);
INSERT INTO public.constellation VALUES (2, 'Taurus', 'Bull, Zeus in disguise', 2);
INSERT INTO public.constellation VALUES (3, 'Gemini', 'Mythical twins Castor and Pollux', 3);
INSERT INTO public.constellation VALUES (4, 'Leo', 'Lion of Nemea, slain by Hercules', 4);
INSERT INTO public.constellation VALUES (5, 'Virgo', 'Virgin, goddess of justice', 5);
INSERT INTO public.constellation VALUES (6, 'Libra', 'Balance', 6);
INSERT INTO public.constellation VALUES (7, 'Scorpius', 'Scorpion, killer of Orion', 7);
INSERT INTO public.constellation VALUES (8, 'Sagittarius', 'Centaur archer', 8);
INSERT INTO public.constellation VALUES (9, 'Capricorn', 'Sea goat associated with god of the countryside', 9);
INSERT INTO public.constellation VALUES (10, 'Aquarius', 'Water-bearer and wine-waiter to the gods', 10);
INSERT INTO public.constellation VALUES (11, 'Pisces', 'Two fishes swimming opposite to each other', 11);
INSERT INTO public.constellation VALUES (12, 'Cancer', 'Crab that bit Hercules foot', 12);
INSERT INTO public.constellation VALUES (13, 'Bootes', 'Herdsman, son of Zeus', 20);
INSERT INTO public.constellation VALUES (14, 'Coma Berenices', 'Hair of Queen Berenice of Egypt', 21);
INSERT INTO public.constellation VALUES (15, 'Cetus', 'Sea monster that attacked Cepheus territory', 22);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Spiral', 220000, 'In mythology, Andromeda is the daughter of the king of Ethiopia', true);
INSERT INTO public.galaxy VALUES (2, 'Triangulum', 'Spiral', 60000, 'It is located in the Traingulum Constellation', true);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 'Spiral', 105700, 'Our own galaxy. It is said to look like a band of light', true);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular', 14000, 'Named after Ferdiand Magellan', true);
INSERT INTO public.galaxy VALUES (9, 'Tadpole', 'Disrupted barred spiral', 390000, 'It has a long tail, like a tadpole', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 60000, 'Named because it looks like a whirlpool', false);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 'Lenticular ring', 130000, 'It looks a bit like a cartwheel', false);
INSERT INTO public.galaxy VALUES (7, 'Sombrero', 'Spiral', 50000, 'Looks like a sombrero', false);
INSERT INTO public.galaxy VALUES (8, 'Cigar', 'Starburst', 37000, 'It is shaped like a cigar', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0, 27.32, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, 0.32, 4);
INSERT INTO public.moon VALUES (3, 'Delmos', 1877, 1.26, 4);
INSERT INTO public.moon VALUES (4, 'Amalthea', 1892, 0.5, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 1610, 3.55, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1610, 7.16, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1610, 16.69, 5);
INSERT INTO public.moon VALUES (8, 'Himalia', 1904, 251, 5);
INSERT INTO public.moon VALUES (9, 'Pan', 1985, 0.58, 6);
INSERT INTO public.moon VALUES (10, 'Atlas', 1980, 0.60, 6);
INSERT INTO public.moon VALUES (11, 'Prometheus', 1980, 0.61, 6);
INSERT INTO public.moon VALUES (12, 'Pandora', 1980, 0.63, 6);
INSERT INTO public.moon VALUES (13, 'Janus', 1966, 0.69, 6);
INSERT INTO public.moon VALUES (14, 'Puck', 1985, 0.76, 7);
INSERT INTO public.moon VALUES (15, 'Miranda', 1948, 1.41, 7);
INSERT INTO public.moon VALUES (16, 'Titiana', 1787, 8.71, 7);
INSERT INTO public.moon VALUES (17, 'Larissa', 1989, 1.12, 8);
INSERT INTO public.moon VALUES (18, 'Triton', 1846, 5.88, 8);
INSERT INTO public.moon VALUES (19, 'Nereld', 1949, 360, 8);
INSERT INTO public.moon VALUES (20, 'Charon', 1978, 6.39, 10);
INSERT INTO public.moon VALUES (21, 'Styx', 2012, 20, 10);
INSERT INTO public.moon VALUES (22, 'Hydra', 2005, 38, 10);
INSERT INTO public.moon VALUES (23, 'Dysnomea', 2005, 16, 13);
INSERT INTO public.moon VALUES (24, 'Nakama', 2005, 35, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Roman equivalent of the Greek god Hermes', false, 19);
INSERT INTO public.planet VALUES (2, 'Venus', 'Slavic deity of earth, water and the underworld', false, 19);
INSERT INTO public.planet VALUES (3, 'Earth', 'The ground', true, 19);
INSERT INTO public.planet VALUES (4, 'Mars', 'Roman equivalent of the Greek god Ares', true, 19);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Roman equivalent to the Greek god Zeus', true, 19);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Roman equivalent of the god Cronus', true, 19);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Personification of the sky in Greek mythology', true, 19);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Roman equivalent to the god Poseidon', true, 19);
INSERT INTO public.planet VALUES (9, 'Ceres', 'In Roman mythology, Ceres was the goddess of agriculture', false, 5);
INSERT INTO public.planet VALUES (10, 'Pluto', 'The Greek god of the underworld', true, 8);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Goddess of fertility and childbirth in Hawaiian mythology', true, 20);
INSERT INTO public.planet VALUES (12, 'Makemake', 'The creator deity in the mythology of Easter Island', true, 21);
INSERT INTO public.planet VALUES (13, 'Eris', 'The Greek god of discord', true, 22);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Hamal', 66, 2.01, 3);
INSERT INTO public.star VALUES (2, 'Aldebaran', 65, 0.87, 3);
INSERT INTO public.star VALUES (3, 'Pollux', 52, 1.90, 3);
INSERT INTO public.star VALUES (4, 'Regulus', 77, 1.36, 3);
INSERT INTO public.star VALUES (5, 'Spica', 262, 0.98, 3);
INSERT INTO public.star VALUES (6, 'Zubeneschamali', 160, 2.61, 3);
INSERT INTO public.star VALUES (7, 'Antares', 553, 0.91, 3);
INSERT INTO public.star VALUES (8, 'Kaus Australis', 145, 1.79, 3);
INSERT INTO public.star VALUES (9, 'Deneb Algedi', 39, 2.85, 3);
INSERT INTO public.star VALUES (10, 'Sadalsuud', 612, 2.90, 3);
INSERT INTO public.star VALUES (11, 'Alpherg', 294, 3.62, 3);
INSERT INTO public.star VALUES (12, 'Tarf', 290, 3.53, 3);
INSERT INTO public.star VALUES (19, 'Sun', 0, 26.83, 3);
INSERT INTO public.star VALUES (20, 'Arcturus', 37, -0.05, 3);
INSERT INTO public.star VALUES (21, 'Diadem', 30, 4.26, 3);
INSERT INTO public.star VALUES (22, 'Deneb Kaitos', 96, 2.04, 3);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 15, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 22, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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