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
    guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 602);
INSERT INTO public.games VALUES (2, 1, 90);
INSERT INTO public.games VALUES (3, 2, 306);
INSERT INTO public.games VALUES (4, 2, 495);
INSERT INTO public.games VALUES (5, 1, 909);
INSERT INTO public.games VALUES (6, 1, 256);
INSERT INTO public.games VALUES (7, 1, 7);
INSERT INTO public.games VALUES (8, 3, 878);
INSERT INTO public.games VALUES (9, 3, 368);
INSERT INTO public.games VALUES (10, 4, 691);
INSERT INTO public.games VALUES (11, 4, 829);
INSERT INTO public.games VALUES (12, 3, 777);
INSERT INTO public.games VALUES (13, 3, 608);
INSERT INTO public.games VALUES (14, 3, 715);
INSERT INTO public.games VALUES (15, 5, 264);
INSERT INTO public.games VALUES (16, 5, 97);
INSERT INTO public.games VALUES (17, 6, 228);
INSERT INTO public.games VALUES (18, 6, 682);
INSERT INTO public.games VALUES (19, 5, 826);
INSERT INTO public.games VALUES (20, 5, 304);
INSERT INTO public.games VALUES (21, 5, 738);
INSERT INTO public.games VALUES (22, 7, 544);
INSERT INTO public.games VALUES (23, 7, 860);
INSERT INTO public.games VALUES (24, 8, 485);
INSERT INTO public.games VALUES (25, 8, 55);
INSERT INTO public.games VALUES (26, 7, 691);
INSERT INTO public.games VALUES (27, 7, 536);
INSERT INTO public.games VALUES (28, 7, 879);
INSERT INTO public.games VALUES (29, 9, 273);
INSERT INTO public.games VALUES (30, 9, 121);
INSERT INTO public.games VALUES (31, 10, 577);
INSERT INTO public.games VALUES (32, 10, 433);
INSERT INTO public.games VALUES (33, 9, 101);
INSERT INTO public.games VALUES (34, 9, 772);
INSERT INTO public.games VALUES (35, 9, 650);
INSERT INTO public.games VALUES (36, 11, 708);
INSERT INTO public.games VALUES (37, 11, 155);
INSERT INTO public.games VALUES (38, 12, 296);
INSERT INTO public.games VALUES (39, 12, 488);
INSERT INTO public.games VALUES (40, 11, 285);
INSERT INTO public.games VALUES (41, 11, 970);
INSERT INTO public.games VALUES (42, 11, 277);
INSERT INTO public.games VALUES (43, 13, 836);
INSERT INTO public.games VALUES (44, 13, 906);
INSERT INTO public.games VALUES (45, 14, 255);
INSERT INTO public.games VALUES (46, 14, 986);
INSERT INTO public.games VALUES (47, 13, 998);
INSERT INTO public.games VALUES (48, 13, 809);
INSERT INTO public.games VALUES (49, 13, 452);
INSERT INTO public.games VALUES (50, 15, 451);
INSERT INTO public.games VALUES (51, 15, 774);
INSERT INTO public.games VALUES (52, 16, 789);
INSERT INTO public.games VALUES (53, 16, 191);
INSERT INTO public.games VALUES (54, 15, 663);
INSERT INTO public.games VALUES (55, 15, 155);
INSERT INTO public.games VALUES (56, 15, 754);
INSERT INTO public.games VALUES (57, 17, 999);
INSERT INTO public.games VALUES (58, 17, 82);
INSERT INTO public.games VALUES (59, 18, 601);
INSERT INTO public.games VALUES (60, 18, 359);
INSERT INTO public.games VALUES (61, 17, 83);
INSERT INTO public.games VALUES (62, 17, 70);
INSERT INTO public.games VALUES (63, 17, 781);
INSERT INTO public.games VALUES (64, 19, 486);
INSERT INTO public.games VALUES (65, 19, 15);
INSERT INTO public.games VALUES (66, 20, 193);
INSERT INTO public.games VALUES (67, 20, 832);
INSERT INTO public.games VALUES (68, 19, 40);
INSERT INTO public.games VALUES (69, 19, 405);
INSERT INTO public.games VALUES (70, 19, 31);
INSERT INTO public.games VALUES (71, 21, 355);
INSERT INTO public.games VALUES (72, 21, 532);
INSERT INTO public.games VALUES (73, 22, 537);
INSERT INTO public.games VALUES (74, 22, 407);
INSERT INTO public.games VALUES (75, 21, 436);
INSERT INTO public.games VALUES (76, 21, 178);
INSERT INTO public.games VALUES (77, 21, 79);
INSERT INTO public.games VALUES (78, 23, 371);
INSERT INTO public.games VALUES (79, 23, 919);
INSERT INTO public.games VALUES (80, 24, 792);
INSERT INTO public.games VALUES (81, 24, 505);
INSERT INTO public.games VALUES (82, 23, 715);
INSERT INTO public.games VALUES (83, 23, 715);
INSERT INTO public.games VALUES (84, 23, 401);
INSERT INTO public.games VALUES (85, 25, 45);
INSERT INTO public.games VALUES (86, 25, 485);
INSERT INTO public.games VALUES (87, 26, 338);
INSERT INTO public.games VALUES (88, 26, 926);
INSERT INTO public.games VALUES (89, 25, 21);
INSERT INTO public.games VALUES (90, 25, 681);
INSERT INTO public.games VALUES (91, 25, 252);
INSERT INTO public.games VALUES (92, 27, 271);
INSERT INTO public.games VALUES (93, 27, 237);
INSERT INTO public.games VALUES (94, 28, 571);
INSERT INTO public.games VALUES (95, 28, 235);
INSERT INTO public.games VALUES (96, 27, 776);
INSERT INTO public.games VALUES (97, 27, 386);
INSERT INTO public.games VALUES (98, 27, 455);
INSERT INTO public.games VALUES (99, 29, 979);
INSERT INTO public.games VALUES (100, 29, 210);
INSERT INTO public.games VALUES (101, 30, 927);
INSERT INTO public.games VALUES (102, 30, 160);
INSERT INTO public.games VALUES (103, 29, 702);
INSERT INTO public.games VALUES (104, 29, 190);
INSERT INTO public.games VALUES (105, 29, 53);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1773080995982');
INSERT INTO public.users VALUES (2, 'user_1773080995981');
INSERT INTO public.users VALUES (3, 'user_1773081050262');
INSERT INTO public.users VALUES (4, 'user_1773081050261');
INSERT INTO public.users VALUES (5, 'user_1773081055458');
INSERT INTO public.users VALUES (6, 'user_1773081055457');
INSERT INTO public.users VALUES (7, 'user_1773081070565');
INSERT INTO public.users VALUES (8, 'user_1773081070564');
INSERT INTO public.users VALUES (9, 'user_1773081119367');
INSERT INTO public.users VALUES (10, 'user_1773081119366');
INSERT INTO public.users VALUES (11, 'user_1773081248303');
INSERT INTO public.users VALUES (12, 'user_1773081248302');
INSERT INTO public.users VALUES (13, 'user_1773081270556');
INSERT INTO public.users VALUES (14, 'user_1773081270555');
INSERT INTO public.users VALUES (15, 'user_1773081280420');
INSERT INTO public.users VALUES (16, 'user_1773081280419');
INSERT INTO public.users VALUES (17, 'user_1773081414979');
INSERT INTO public.users VALUES (18, 'user_1773081414978');
INSERT INTO public.users VALUES (19, 'user_1773081489912');
INSERT INTO public.users VALUES (20, 'user_1773081489911');
INSERT INTO public.users VALUES (21, 'user_1773081569376');
INSERT INTO public.users VALUES (22, 'user_1773081569375');
INSERT INTO public.users VALUES (23, 'user_1773081672302');
INSERT INTO public.users VALUES (24, 'user_1773081672301');
INSERT INTO public.users VALUES (25, 'user_1773081796301');
INSERT INTO public.users VALUES (26, 'user_1773081796300');
INSERT INTO public.users VALUES (27, 'user_1773081828993');
INSERT INTO public.users VALUES (28, 'user_1773081828992');
INSERT INTO public.users VALUES (29, 'user_1773081834652');
INSERT INTO public.users VALUES (30, 'user_1773081834651');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 105, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

