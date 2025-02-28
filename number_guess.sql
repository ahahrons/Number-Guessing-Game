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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 288);
INSERT INTO public.games VALUES (2, 1, 978);
INSERT INTO public.games VALUES (3, 2, 753);
INSERT INTO public.games VALUES (4, 2, 879);
INSERT INTO public.games VALUES (5, 1, 269);
INSERT INTO public.games VALUES (6, 1, 312);
INSERT INTO public.games VALUES (7, 1, 539);
INSERT INTO public.games VALUES (8, 3, 518);
INSERT INTO public.games VALUES (9, 3, 765);
INSERT INTO public.games VALUES (10, 4, 897);
INSERT INTO public.games VALUES (11, 4, 188);
INSERT INTO public.games VALUES (12, 3, 567);
INSERT INTO public.games VALUES (13, 3, 167);
INSERT INTO public.games VALUES (14, 3, 614);
INSERT INTO public.games VALUES (15, 5, 436);
INSERT INTO public.games VALUES (16, 5, 343);
INSERT INTO public.games VALUES (17, 6, 798);
INSERT INTO public.games VALUES (18, 6, 85);
INSERT INTO public.games VALUES (19, 5, 344);
INSERT INTO public.games VALUES (20, 5, 715);
INSERT INTO public.games VALUES (21, 5, 424);
INSERT INTO public.games VALUES (22, 7, 915);
INSERT INTO public.games VALUES (23, 7, 911);
INSERT INTO public.games VALUES (24, 8, 651);
INSERT INTO public.games VALUES (25, 8, 340);
INSERT INTO public.games VALUES (26, 7, 797);
INSERT INTO public.games VALUES (27, 7, 75);
INSERT INTO public.games VALUES (28, 7, 802);
INSERT INTO public.games VALUES (29, 9, 283);
INSERT INTO public.games VALUES (30, 9, 270);
INSERT INTO public.games VALUES (31, 10, 94);
INSERT INTO public.games VALUES (32, 10, 922);
INSERT INTO public.games VALUES (33, 9, 220);
INSERT INTO public.games VALUES (34, 9, 1002);
INSERT INTO public.games VALUES (35, 9, 255);
INSERT INTO public.games VALUES (36, 11, 772);
INSERT INTO public.games VALUES (37, 11, 373);
INSERT INTO public.games VALUES (38, 12, 641);
INSERT INTO public.games VALUES (39, 12, 567);
INSERT INTO public.games VALUES (40, 11, 740);
INSERT INTO public.games VALUES (41, 11, 206);
INSERT INTO public.games VALUES (42, 11, 179);
INSERT INTO public.games VALUES (43, 13, 828);
INSERT INTO public.games VALUES (44, 13, 822);
INSERT INTO public.games VALUES (45, 14, 548);
INSERT INTO public.games VALUES (46, 14, 382);
INSERT INTO public.games VALUES (47, 13, 378);
INSERT INTO public.games VALUES (48, 13, 959);
INSERT INTO public.games VALUES (49, 13, 363);
INSERT INTO public.games VALUES (50, 15, 568);
INSERT INTO public.games VALUES (51, 15, 529);
INSERT INTO public.games VALUES (52, 16, 688);
INSERT INTO public.games VALUES (53, 16, 525);
INSERT INTO public.games VALUES (54, 15, 571);
INSERT INTO public.games VALUES (55, 15, 202);
INSERT INTO public.games VALUES (56, 15, 20);
INSERT INTO public.games VALUES (57, 17, 981);
INSERT INTO public.games VALUES (58, 17, 41);
INSERT INTO public.games VALUES (59, 18, 249);
INSERT INTO public.games VALUES (60, 18, 429);
INSERT INTO public.games VALUES (61, 17, 790);
INSERT INTO public.games VALUES (62, 17, 96);
INSERT INTO public.games VALUES (63, 17, 958);
INSERT INTO public.games VALUES (64, 19, 849);
INSERT INTO public.games VALUES (65, 19, 730);
INSERT INTO public.games VALUES (66, 20, 885);
INSERT INTO public.games VALUES (67, 20, 962);
INSERT INTO public.games VALUES (68, 19, 395);
INSERT INTO public.games VALUES (69, 19, 216);
INSERT INTO public.games VALUES (70, 19, 694);
INSERT INTO public.games VALUES (71, 21, 874);
INSERT INTO public.games VALUES (72, 21, 74);
INSERT INTO public.games VALUES (73, 22, 727);
INSERT INTO public.games VALUES (74, 22, 67);
INSERT INTO public.games VALUES (75, 21, 596);
INSERT INTO public.games VALUES (76, 21, 961);
INSERT INTO public.games VALUES (77, 21, 395);
INSERT INTO public.games VALUES (78, 23, 426);
INSERT INTO public.games VALUES (79, 23, 401);
INSERT INTO public.games VALUES (80, 24, 478);
INSERT INTO public.games VALUES (81, 24, 228);
INSERT INTO public.games VALUES (82, 23, 963);
INSERT INTO public.games VALUES (83, 23, 141);
INSERT INTO public.games VALUES (84, 23, 300);
INSERT INTO public.games VALUES (85, 25, 56);
INSERT INTO public.games VALUES (86, 25, 915);
INSERT INTO public.games VALUES (87, 26, 447);
INSERT INTO public.games VALUES (88, 26, 439);
INSERT INTO public.games VALUES (89, 25, 357);
INSERT INTO public.games VALUES (90, 25, 707);
INSERT INTO public.games VALUES (91, 25, 585);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1740740028741');
INSERT INTO public.users VALUES (2, 'user_1740740028740');
INSERT INTO public.users VALUES (3, 'user_1740740088557');
INSERT INTO public.users VALUES (4, 'user_1740740088556');
INSERT INTO public.users VALUES (5, 'user_1740740154909');
INSERT INTO public.users VALUES (6, 'user_1740740154908');
INSERT INTO public.users VALUES (7, 'user_1740740220750');
INSERT INTO public.users VALUES (8, 'user_1740740220749');
INSERT INTO public.users VALUES (9, 'user_1740740244833');
INSERT INTO public.users VALUES (10, 'user_1740740244832');
INSERT INTO public.users VALUES (11, 'user_1740740263808');
INSERT INTO public.users VALUES (12, 'user_1740740263807');
INSERT INTO public.users VALUES (13, 'user_1740740296208');
INSERT INTO public.users VALUES (14, 'user_1740740296207');
INSERT INTO public.users VALUES (15, 'user_1740740315144');
INSERT INTO public.users VALUES (16, 'user_1740740315143');
INSERT INTO public.users VALUES (17, 'user_1740740477197');
INSERT INTO public.users VALUES (18, 'user_1740740477196');
INSERT INTO public.users VALUES (19, 'user_1740740693469');
INSERT INTO public.users VALUES (20, 'user_1740740693468');
INSERT INTO public.users VALUES (21, 'user_1740740718675');
INSERT INTO public.users VALUES (22, 'user_1740740718674');
INSERT INTO public.users VALUES (23, 'user_1740740803644');
INSERT INTO public.users VALUES (24, 'user_1740740803643');
INSERT INTO public.users VALUES (25, 'user_1740740883306');
INSERT INTO public.users VALUES (26, 'user_1740740883305');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 91, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 26, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

