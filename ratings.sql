--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    title character varying(64),
    released_at timestamp without time zone,
    imdb_url character varying(200)
);


ALTER TABLE public.movies OWNER TO vagrant;

--
-- Name: ratings; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.ratings (
    rating_id integer NOT NULL,
    movie_id integer,
    user_id integer,
    score integer
);


ALTER TABLE public.ratings OWNER TO vagrant;

--
-- Name: users; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    email character varying(64),
    password character varying(64),
    age integer,
    zipcode character varying(15)
);


ALTER TABLE public.users OWNER TO vagrant;

--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.movies (movie_id, title, released_at, imdb_url) FROM stdin;
1	Toy Story	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Toy%20Story%20(1995)
2	GoldenEye	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?GoldenEye%20(1995)
3	Four Rooms	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Four%20Rooms%20(1995)
4	Get Shorty	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Get%20Shorty%20(1995)
5	Copycat	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Copycat%20(1995)
6	Shanghai Triad (Yao a yao yao dao waipo qiao)	1995-01-01 00:00:00	http://us.imdb.com/Title?Yao+a+yao+yao+dao+waipo+qiao+(1995)
7	Twelve Monkeys	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Twelve%20Monkeys%20(1995)
8	Babe	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Babe%20(1995)
9	Dead Man Walking	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Dead%20Man%20Walking%20(1995)
10	Richard III	1996-01-22 00:00:00	http://us.imdb.com/M/title-exact?Richard%20III%20(1995)
11	Seven (Se7en)	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Se7en%20(1995)
12	Usual Suspects, The	1995-08-14 00:00:00	http://us.imdb.com/M/title-exact?Usual%20Suspects,%20The%20(1995)
13	Mighty Aphrodite	1995-10-30 00:00:00	http://us.imdb.com/M/title-exact?Mighty%20Aphrodite%20(1995)
14	Postino, Il	1994-01-01 00:00:00	http://us.imdb.com/M/title-exact?Postino,%20Il%20(1994)
15	Mr. Holland's Opus	1996-01-29 00:00:00	http://us.imdb.com/M/title-exact?Mr.%20Holland's%20Opus%20(1995)
16	French Twist (Gazon maudit)	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Gazon%20maudit%20(1995)
17	From Dusk Till Dawn	1996-02-05 00:00:00	http://us.imdb.com/M/title-exact?From%20Dusk%20Till%20Dawn%20(1996)
18	White Balloon, The	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Badkonake%20Sefid%20(1995)
19	Antonia's Line	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Antonia%20(1995)
20	Angels and Insects	1995-01-01 00:00:00	http://us.imdb.com/M/title-exact?Angels%20and%20Insects%20(1995)
21	Muppet Treasure Island	1996-02-16 00:00:00	http://us.imdb.com/M/title-exact?Muppet%20Treasure%20Island%20(1996)
22	Cape Fear	1991-01-01 00:00:00	http://us.imdb.com/M/title-exact?Cape%20Fear%20(1991)
23	Cape Fear	1962-01-01 00:00:00	http://us.imdb.com/M/title-exact?Cape%20Fear%20(1962)
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.ratings (rating_id, movie_id, user_id, score) FROM stdin;
1	20	1	3
2	19	2	3
3	18	4	1
4	17	3	2
5	16	5	1
6	15	6	4
7	14	7	2
8	13	8	5
9	12	9	3
10	21	6	3
11	11	10	2
12	10	11	5
13	9	20	5
14	8	21	3
15	7	6	3
16	6	13	3
17	5	12	5
18	4	19	2
19	3	14	4
20	2	15	2
21	1	11	4
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.users (user_id, email, password, age, zipcode) FROM stdin;
1	\N	\N	24	85711
2	\N	\N	53	94043
3	\N	\N	23	32067
4	\N	\N	24	43537
5	\N	\N	33	15213
6	\N	\N	42	98101
7	cats@gmail.com	\N	57	91344
8	\N	\N	36	05201
9	\N	\N	29	01002
10	\N	\N	53	90703
11	\N	\N	39	30329
12	\N	\N	28	06405
13	\N	\N	47	29206
14	\N	\N	45	55106
15	\N	\N	49	97301
16	\N	\N	21	10309
17	\N	\N	30	06355
18	\N	\N	35	37212
19	\N	\N	40	02138
20	\N	\N	42	95660
21	\N	\N	26	30068
\.


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movie_id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (rating_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: ratings ratings_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- Name: ratings ratings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

