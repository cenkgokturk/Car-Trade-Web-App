PGDMP                         x            d6uhfb7evc3bsm     12.5 (Ubuntu 12.5-1.pgdg16.04+1)    13.1 ;    I           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            J           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            K           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            L           1262    8288642    d6uhfb7evc3bsm    DATABASE     c   CREATE DATABASE d6uhfb7evc3bsm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE d6uhfb7evc3bsm;
                heqvalntzxdxvf    false            M           0    0    DATABASE d6uhfb7evc3bsm    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d6uhfb7evc3bsm FROM PUBLIC;
                   heqvalntzxdxvf    false    3916            N           0    0 
   SCHEMA public    ACL     ¿   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO heqvalntzxdxvf;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   heqvalntzxdxvf    false    3                        2615    8299213    schema    SCHEMA        CREATE SCHEMA schema;
    DROP SCHEMA schema;
                heqvalntzxdxvf    false            O           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO heqvalntzxdxvf;
                   postgres    false    667            Ä           1247    9234732    drivetrain_enum    TYPE     _   CREATE TYPE public.drivetrain_enum AS ENUM (
    '4x4',
    'front wheel',
    'rear wheel'
);
 "   DROP TYPE public.drivetrain_enum;
       public          heqvalntzxdxvf    false            æ           1247    9234969 	   type_enum    TYPE     Z   CREATE TYPE public.type_enum AS ENUM (
    'automobile',
    'motorcycle',
    'truck'
);
    DROP TYPE public.type_enum;
       public          heqvalntzxdxvf    false            Í            1259    9271646 
   advertisement    TABLE     û  CREATE TABLE public.advertisement (
    ad_no integer NOT NULL,
    seller_id integer NOT NULL,
    ad_date date,
    seller_price integer NOT NULL,
    vehicle_no integer NOT NULL,
    km integer NOT NULL,
    color character varying(50) NOT NULL,
    damage integer,
    second_hand character varying(5) NOT NULL,
    warranty character varying(5) NOT NULL,
    exchange character varying(5) NOT NULL
);
 !   DROP TABLE public.advertisement;
       public         heap    heqvalntzxdxvf    false                        1259    9271644    advertisement_ad_no_seq    SEQUENCE     Å   CREATE SEQUENCE public.advertisement_ad_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.advertisement_ad_no_seq;
       public          heqvalntzxdxvf    false    214            P           0    0    advertisement_ad_no_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.advertisement_ad_no_seq OWNED BY public.advertisement.ad_no;
          public          heqvalntzxdxvf    false    213            ═            1259    9248976    city    TABLE     Æ   CREATE TABLE public.city (
    city_id integer NOT NULL,
    city_name character varying(100) NOT NULL,
    country_code character(3) NOT NULL
);
    DROP TABLE public.city;
       public         heap    heqvalntzxdxvf    false            ╠            1259    9248974    city_city_id_seq    SEQUENCE     ê   CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public          heqvalntzxdxvf    false    205            Q           0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
          public          heqvalntzxdxvf    false    204            ╦            1259    9248967    country    TABLE     y   CREATE TABLE public.country (
    country_code character(3) NOT NULL,
    country_name character varying(50) NOT NULL
);
    DROP TABLE public.country;
       public         heap    heqvalntzxdxvf    false            Ê            1259    9271618    model    TABLE     ø   CREATE TABLE public.model (
    model_name character varying(50),
    brand_name character varying(50),
    brand_model character varying(100) NOT NULL
);
    DROP TABLE public.model;
       public         heap    heqvalntzxdxvf    false            ¤            1259    9271588    users    TABLE     â   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(25) NOT NULL,
    hashed_pswd text NOT NULL
);
    DROP TABLE public.users;
       public         heap    heqvalntzxdxvf    false            ╬            1259    9271586    users_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          heqvalntzxdxvf    false    207            R           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          heqvalntzxdxvf    false    206            ª            1259    9271601 
   users_info    TABLE     '  CREATE TABLE public.users_info (
    users_id integer NOT NULL,
    name character varying(100),
    surname character varying(100),
    city character varying(150),
    district character varying(100),
    phone character varying(20),
    mail character varying(150),
    user_score integer
);
    DROP TABLE public.users_info;
       public         heap    heqvalntzxdxvf    false            º            1259    9271599    users_info_users_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.users_info_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.users_info_users_id_seq;
       public          heqvalntzxdxvf    false    209            S           0    0    users_info_users_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.users_info_users_id_seq OWNED BY public.users_info.users_id;
          public          heqvalntzxdxvf    false    208            È            1259    9271633    vehicle    TABLE     ¿  CREATE TABLE public.vehicle (
    vehicle_no integer NOT NULL,
    brand_model character varying(100),
    transmission character varying(50),
    engine_size double precision,
    package character varying(50),
    drive_train public.drivetrain_enum NOT NULL,
    num_cylinder integer NOT NULL,
    power integer NOT NULL,
    dealer_price integer NOT NULL,
    type public.type_enum NOT NULL,
    year integer NOT NULL
);
    DROP TABLE public.vehicle;
       public         heap    heqvalntzxdxvf    false    654    657            Ë            1259    9271631    vehicle_vehicle_no_seq    SEQUENCE     Ä   CREATE SEQUENCE public.vehicle_vehicle_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.vehicle_vehicle_no_seq;
       public          heqvalntzxdxvf    false    212            T           0    0    vehicle_vehicle_no_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.vehicle_vehicle_no_seq OWNED BY public.vehicle.vehicle_no;
          public          heqvalntzxdxvf    false    211            ñ           2604    9271649    advertisement ad_no    DEFAULT     z   ALTER TABLE ONLY public.advertisement ALTER COLUMN ad_no SET DEFAULT nextval('public.advertisement_ad_no_seq'::regclass);
 B   ALTER TABLE public.advertisement ALTER COLUMN ad_no DROP DEFAULT;
       public          heqvalntzxdxvf    false    213    214    214            á           2604    9248979    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public          heqvalntzxdxvf    false    205    204    205            í           2604    9271591    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          heqvalntzxdxvf    false    207    206    207            ó           2604    9271604    users_info users_id    DEFAULT     z   ALTER TABLE ONLY public.users_info ALTER COLUMN users_id SET DEFAULT nextval('public.users_info_users_id_seq'::regclass);
 B   ALTER TABLE public.users_info ALTER COLUMN users_id DROP DEFAULT;
       public          heqvalntzxdxvf    false    209    208    209            ú           2604    9271636    vehicle vehicle_no    DEFAULT     x   ALTER TABLE ONLY public.vehicle ALTER COLUMN vehicle_no SET DEFAULT nextval('public.vehicle_vehicle_no_seq'::regclass);
 A   ALTER TABLE public.vehicle ALTER COLUMN vehicle_no DROP DEFAULT;
       public          heqvalntzxdxvf    false    211    212    212            F          0    9271646 
   advertisement 
   TABLE DATA           É   COPY public.advertisement (ad_no, seller_id, ad_date, seller_price, vehicle_no, km, color, damage, second_hand, warranty, exchange) FROM stdin;
    public          heqvalntzxdxvf    false    214            =          0    9248976    city 
   TABLE DATA           @   COPY public.city (city_id, city_name, country_code) FROM stdin;
    public          heqvalntzxdxvf    false    205            ;          0    9248967    country 
   TABLE DATA           =   COPY public.country (country_code, country_name) FROM stdin;
    public          heqvalntzxdxvf    false    203            B          0    9271618    model 
   TABLE DATA           D   COPY public.model (model_name, brand_name, brand_model) FROM stdin;
    public          heqvalntzxdxvf    false    210            ?          0    9271588    users 
   TABLE DATA           :   COPY public.users (id, username, hashed_pswd) FROM stdin;
    public          heqvalntzxdxvf    false    207            A          0    9271601 
   users_info 
   TABLE DATA           f   COPY public.users_info (users_id, name, surname, city, district, phone, mail, user_score) FROM stdin;
    public          heqvalntzxdxvf    false    209            D          0    9271633    vehicle 
   TABLE DATA           Ü   COPY public.vehicle (vehicle_no, brand_model, transmission, engine_size, package, drive_train, num_cylinder, power, dealer_price, type, year) FROM stdin;
    public          heqvalntzxdxvf    false    212            U           0    0    advertisement_ad_no_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.advertisement_ad_no_seq', 23, true);
          public          heqvalntzxdxvf    false    213            V           0    0    city_city_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.city_city_id_seq', 1, false);
          public          heqvalntzxdxvf    false    204            W           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 17, true);
          public          heqvalntzxdxvf    false    206            X           0    0    users_info_users_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_info_users_id_seq', 1, false);
          public          heqvalntzxdxvf    false    208            Y           0    0    vehicle_vehicle_no_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.vehicle_vehicle_no_seq', 13, true);
          public          heqvalntzxdxvf    false    211            Â           2606    9271651     advertisement advertisement_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_pkey PRIMARY KEY (ad_no);
 J   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_pkey;
       public            heqvalntzxdxvf    false    214            ¬           2606    9248983    city city_city_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_city_name_key UNIQUE (city_name);
 A   ALTER TABLE ONLY public.city DROP CONSTRAINT city_city_name_key;
       public            heqvalntzxdxvf    false    205            ¼           2606    9248981    city city_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id, city_name);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            heqvalntzxdxvf    false    205    205            Ğ           2606    9248973     country country_country_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_country_name_key UNIQUE (country_name);
 J   ALTER TABLE ONLY public.country DROP CONSTRAINT country_country_name_key;
       public            heqvalntzxdxvf    false    203            ¿           2606    9248971    country country_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_code);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            heqvalntzxdxvf    false    203            ▓           2606    9271622    model model_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (brand_model);
 :   ALTER TABLE ONLY public.model DROP CONSTRAINT model_pkey;
       public            heqvalntzxdxvf    false    210            «           2606    9271596    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            heqvalntzxdxvf    false    207            ░           2606    9271598    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            heqvalntzxdxvf    false    207            ┤           2606    9271638    vehicle vehicle_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (vehicle_no);
 >   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_pkey;
       public            heqvalntzxdxvf    false    212            ╝           2606    9271652 *   advertisement advertisement_seller_id_fkey 
   FK CONSTRAINT     ï   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.users(id);
 T   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_seller_id_fkey;
       public          heqvalntzxdxvf    false    3758    214    207            ╗           2606    9287657 /   advertisement const_advertisement_vehicle_no_fk 
   FK CONSTRAINT     ┐   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT const_advertisement_vehicle_no_fk FOREIGN KEY (vehicle_no) REFERENCES public.vehicle(vehicle_no) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT const_advertisement_vehicle_no_fk;
       public          heqvalntzxdxvf    false    214    3764    212            À           2606    9287700    city const_country_code_fk 
   FK CONSTRAINT     «   ALTER TABLE ONLY public.city
    ADD CONSTRAINT const_country_code_fk FOREIGN KEY (country_code) REFERENCES public.country(country_code) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.city DROP CONSTRAINT const_country_code_fk;
       public          heqvalntzxdxvf    false    3752    203    205            ║           2606    9287580    vehicle const_vehicle_fk 
   FK CONSTRAINT     ¿   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT const_vehicle_fk FOREIGN KEY (brand_model) REFERENCES public.model(brand_model) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT const_vehicle_fk;
       public          heqvalntzxdxvf    false    210    3762    212            ╣           2606    9271613    users_info users_info_city_fkey 
   FK CONSTRAINT     ü   ALTER TABLE ONLY public.users_info
    ADD CONSTRAINT users_info_city_fkey FOREIGN KEY (city) REFERENCES public.city(city_name);
 I   ALTER TABLE ONLY public.users_info DROP CONSTRAINT users_info_city_fkey;
       public          heqvalntzxdxvf    false    3754    209    205            ©           2606    9271608 #   users_info users_info_users_id_fkey 
   FK CONSTRAINT     â   ALTER TABLE ONLY public.users_info
    ADD CONSTRAINT users_info_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.users_info DROP CONSTRAINT users_info_users_id_fkey;
       public          heqvalntzxdxvf    false    3758    209    207            F     x£mÆ┴j├0å¤SìZ,┘ÄìkìÂÙìRJ`úaàÂc»?┘^╦Ï$X8·¶K╠ÓÇ,┘Ê╬2░òJ­>/╦ÕrpâÎï<&m@ä4ò─ >╩vX~µ ìJ─V ┌Æ´K0╩'ÓA})â1¸¤ÃÙ¨i└9═9«Bİ╗ÁUÙx:wÉÎÉw%S╬ºıy
åZsà(┼£øõ©ªßÈxå▄1ô5ÔöâùÙ<+øQ¼Rã╣R>╦T÷ÿ¾ÙÌ{É?*&FÛ©Ğ5_ ì6┘ÄCµÔØË3)1┬^¼┌~$£öP╩+m2 #¦Ú╗Î╗Í·d█i·Ïc■ ╗ùù2      =   %   x£3õt╠╦N,Jõ4TPÓ2Ô¶,.I╠K*═sc¶©©© Å/Â      ;      x£3TPÓ)-╩N¡õèªÒÔÔ !Í▒      B   ø   x£mÄ┴
é@å¤3O▒/0▒©t-®ô7íé.ôn%¼MdèÅş╗ftİo■ cô╩ò´¬q=õrßf$ÑôEKQó!│¤┬ûÂ¨▓âã8Ê░╬÷~h╚øY7S9;üm┼» 
9Qà┤▄ûU M
┘╠¡n«­░Yi×─u2Æ╝└ØZÜ??zı9▄├æk¥±gQpxZ ÔÅVL3      ?   ╠   x£5ı¦è┬@à»ôçYÜ■h{┘à^HAA¦ààà%½QçN#╠L▀~Ø®{¾ØôäsB└Ãª×L╠ß :$`A|H└Äó2╩Kp	b═I'Ã'´Æğ╝(▒ò{J¢øö¤g"e╔╠═¥░NjaRÂH9³è╝XQ~T5xsc_H|Ö│	ÅÙôYåT┬╩╔Ïk¶ fH┌4H┤¹÷¢█÷²f²ª´║¤n?┼Ûx^³?├UğÀøh\┼█┌╦(8┐▀±¼Ö[W      A   Ö  x£òô¦nú0à»çğÏ 2~z═▓Uö╩òÜtÑJ¢Ö$ËÈ▓▒%0╗╩█/&└V)╗U/µ°µ|Ã3c9ÇÔX	=¬ûX#¼░;¤╠Å¾┘Ñá¾õ¢.ĞéÏaEZ┬Øæşáç╬û;└vÈÏï³ô┬h	6À│ä´ñ®ó±° ıÃ³Ï█z°à{)öJ╝~Òm
┼Åm±8Ô:Sôv|¹IÆ©JÇ­Á┴:'█.×Ï.l
¾2Ó¶{wæucQ´[\4¿-6Ô║à«§▒¸øŞ	²░~Mªá╗C┘êÛ×Ly»ÒõA à┼7È­ñQ═¼-
¹Û¨Â│õğ
àÜ­n®û░-´K^<¤­¦┌åèa▀É"ı½îŞ┼IXxÓÕÒ\BÔgÚı¤û└┘h¬»­%¼k¬`│¥_¾╚▀ÁV¸¥!à·­■Õ\Dìû░wâl°Ëf[■,¨³,iÜvòeÇÊ×V6¶ïtnZ½îæSG╔▀©╔4ùeÖ½.╬ÔX)o┘Ağù¢Ñ│9®÷├¸s«!ß­▓­<´(█¢      D   Ç  x£}ô╦n┬0EÎô»­¨çx╔CT,×ĞTmÑnå` "─╚q(²¹Ü %É┤+╦Å{|Ä═`nVXåc│ãéö¨fXTİğö┬k¯,Æ╝┌û░▓Ğpõkú§iXBAÊË¼£┘ÖEûk┐╬T `Ğm¬ù║5ùù}tY
~FAÖË`5┌,ÌğáÆ6îË éßì-î³àâfM}éIHxğ^Ş§ó®-¢Ã½n}ôØOgæøk2î½FhÎµ.öö&"Õ1╬VÚ÷L×{µ2QÆÈT{¦­┴·Ş├z	ÖO^Ğ(µ#Úse)y ^]¨  Ñª╬à&Üãdm,&¾qï─|█Ù^ÁHî■ó«ûÔ┌Êş£║gmââ╔&|®f█İè­%CIĞEÖ┌l´2S@tî|╣­ß╦¯┐=╔'7K*ß08`▒\ú]ÛL&³©╗`>pçßÅMâğÒ¤Ğº¸Õ┤^ &?ìî36²N»░¤^?▒▄·Ø      ;    I           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            J           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            K           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            L           1262    8288642    d6uhfb7evc3bsm    DATABASE     c   CREATE DATABASE d6uhfb7evc3bsm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE d6uhfb7evc3bsm;
                heqvalntzxdxvf    false            M           0    0    DATABASE d6uhfb7evc3bsm    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d6uhfb7evc3bsm FROM PUBLIC;
                   heqvalntzxdxvf    false    3916            N           0    0 
   SCHEMA public    ACL     ¿   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO heqvalntzxdxvf;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   heqvalntzxdxvf    false    3                        2615    8299213    schema    SCHEMA        CREATE SCHEMA schema;
    DROP SCHEMA schema;
                heqvalntzxdxvf    false            O           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO heqvalntzxdxvf;
                   postgres    false    667            Ä           1247    9234732    drivetrain_enum    TYPE     _   CREATE TYPE public.drivetrain_enum AS ENUM (
    '4x4',
    'front wheel',
    'rear wheel'
);
 "   DROP TYPE public.drivetrain_enum;
       public          heqvalntzxdxvf    false            æ           1247    9234969 	   type_enum    TYPE     Z   CREATE TYPE public.type_enum AS ENUM (
    'automobile',
    'motorcycle',
    'truck'
);
    DROP TYPE public.type_enum;
       public          heqvalntzxdxvf    false            Í            1259    9271646 
   advertisement    TABLE     û  CREATE TABLE public.advertisement (
    ad_no integer NOT NULL,
    seller_id integer NOT NULL,
    ad_date date,
    seller_price integer NOT NULL,
    vehicle_no integer NOT NULL,
    km integer NOT NULL,
    color character varying(50) NOT NULL,
    damage integer,
    second_hand character varying(5) NOT NULL,
    warranty character varying(5) NOT NULL,
    exchange character varying(5) NOT NULL
);
 !   DROP TABLE public.advertisement;
       public         heap    heqvalntzxdxvf    false                        1259    9271644    advertisement_ad_no_seq    SEQUENCE     Å   CREATE SEQUENCE public.advertisement_ad_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.advertisement_ad_no_seq;
       public          heqvalntzxdxvf    false    214            P           0    0    advertisement_ad_no_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.advertisement_ad_no_seq OWNED BY public.advertisement.ad_no;
          public          heqvalntzxdxvf    false    213            ═            1259    9248976    city    TABLE     Æ   CREATE TABLE public.city (
    city_id integer NOT NULL,
    city_name character varying(100) NOT NULL,
    country_code character(3) NOT NULL
);
    DROP TABLE public.city;
       public         heap    heqvalntzxdxvf    false            ╠            1259    9248974    city_city_id_seq    SEQUENCE     ê   CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public          heqvalntzxdxvf    false    205            Q           0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
          public          heqvalntzxdxvf    false    204            ╦            1259    9248967    country    TABLE     y   CREATE TABLE public.country (
    country_code character(3) NOT NULL,
    country_name character varying(50) NOT NULL
);
    DROP TABLE public.country;
       public         heap    heqvalntzxdxvf    false            Ê            1259    9271618    model    TABLE     ø   CREATE TABLE public.model (
    model_name character varying(50),
    brand_name character varying(50),
    brand_model character varying(100) NOT NULL
);
    DROP TABLE public.model;
       public         heap    heqvalntzxdxvf    false            ¤            1259    9271588    users    TABLE     â   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(25) NOT NULL,
    hashed_pswd text NOT NULL
);
    DROP TABLE public.users;
       public         heap    heqvalntzxdxvf    false            ╬            1259    9271586    users_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          heqvalntzxdxvf    false    207            R           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          heqvalntzxdxvf    false    206            ª            1259    9271601 
   users_info    TABLE     '  CREATE TABLE public.users_info (
    users_id integer NOT NULL,
    name character varying(100),
    surname character varying(100),
    city character varying(150),
    district character varying(100),
    phone character varying(20),
    mail character varying(150),
    user_score integer
);
    DROP TABLE public.users_info;
       public         heap    heqvalntzxdxvf    false            º            1259    9271599    users_info_users_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.users_info_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.users_info_users_id_seq;
       public          heqvalntzxdxvf    false    209            S           0    0    users_info_users_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.users_info_users_id_seq OWNED BY public.users_info.users_id;
          public          heqvalntzxdxvf    false    208            È            1259    9271633    vehicle    TABLE     ¿  CREATE TABLE public.vehicle (
    vehicle_no integer NOT NULL,
    brand_model character varying(100),
    transmission character varying(50),
    engine_size double precision,
    package character varying(50),
    drive_train public.drivetrain_enum NOT NULL,
    num_cylinder integer NOT NULL,
    power integer NOT NULL,
    dealer_price integer NOT NULL,
    type public.type_enum NOT NULL,
    year integer NOT NULL
);
    DROP TABLE public.vehicle;
       public         heap    heqvalntzxdxvf    false    654    657            Ë            1259    9271631    vehicle_vehicle_no_seq    SEQUENCE     Ä   CREATE SEQUENCE public.vehicle_vehicle_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.vehicle_vehicle_no_seq;
       public          heqvalntzxdxvf    false    212            T           0    0    vehicle_vehicle_no_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.vehicle_vehicle_no_seq OWNED BY public.vehicle.vehicle_no;
          public          heqvalntzxdxvf    false    211            ñ           2604    9271649    advertisement ad_no    DEFAULT     z   ALTER TABLE ONLY public.advertisement ALTER COLUMN ad_no SET DEFAULT nextval('public.advertisement_ad_no_seq'::regclass);
 B   ALTER TABLE public.advertisement ALTER COLUMN ad_no DROP DEFAULT;
       public          heqvalntzxdxvf    false    213    214    214            á           2604    9248979    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public          heqvalntzxdxvf    false    205    204    205            í           2604    9271591    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          heqvalntzxdxvf    false    207    206    207            ó           2604    9271604    users_info users_id    DEFAULT     z   ALTER TABLE ONLY public.users_info ALTER COLUMN users_id SET DEFAULT nextval('public.users_info_users_id_seq'::regclass);
 B   ALTER TABLE public.users_info ALTER COLUMN users_id DROP DEFAULT;
       public          heqvalntzxdxvf    false    209    208    209            ú           2604    9271636    vehicle vehicle_no    DEFAULT     x   ALTER TABLE ONLY public.vehicle ALTER COLUMN vehicle_no SET DEFAULT nextval('public.vehicle_vehicle_no_seq'::regclass);
 A   ALTER TABLE public.vehicle ALTER COLUMN vehicle_no DROP DEFAULT;
       public          heqvalntzxdxvf    false    211    212    212            F          0    9271646 
   advertisement 
   TABLE DATA           É   COPY public.advertisement (ad_no, seller_id, ad_date, seller_price, vehicle_no, km, color, damage, second_hand, warranty, exchange) FROM stdin;
    public          heqvalntzxdxvf    false    214   E       =          0    9248976    city 
   TABLE DATA           @   COPY public.city (city_id, city_name, country_code) FROM stdin;
    public          heqvalntzxdxvf    false    205   Y       ;          0    9248967    country 
   TABLE DATA           =   COPY public.country (country_code, country_name) FROM stdin;
    public          heqvalntzxdxvf    false    203   Ä       B          0    9271618    model 
   TABLE DATA           D   COPY public.model (model_name, brand_name, brand_model) FROM stdin;
    public          heqvalntzxdxvf    false    210   Â       ?          0    9271588    users 
   TABLE DATA           :   COPY public.users (id, username, hashed_pswd) FROM stdin;
    public          heqvalntzxdxvf    false    207   a       A          0    9271601 
   users_info 
   TABLE DATA           f   COPY public.users_info (users_id, name, surname, city, district, phone, mail, user_score) FROM stdin;
    public          heqvalntzxdxvf    false    209   =	       D          0    9271633    vehicle 
   TABLE DATA           Ü   COPY public.vehicle (vehicle_no, brand_model, transmission, engine_size, package, drive_train, num_cylinder, power, dealer_price, type, year) FROM stdin;
    public          heqvalntzxdxvf    false    212   µ
       U           0    0    advertisement_ad_no_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.advertisement_ad_no_seq', 23, true);
          public          heqvalntzxdxvf    false    213            V           0    0    city_city_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.city_city_id_seq', 1, false);
          public          heqvalntzxdxvf    false    204            W           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 17, true);
          public          heqvalntzxdxvf    false    206            X           0    0    users_info_users_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_info_users_id_seq', 1, false);
          public          heqvalntzxdxvf    false    208            Y           0    0    vehicle_vehicle_no_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.vehicle_vehicle_no_seq', 13, true);
          public          heqvalntzxdxvf    false    211            Â           2606    9271651     advertisement advertisement_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_pkey PRIMARY KEY (ad_no);
 J   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_pkey;
       public            heqvalntzxdxvf    false    214            ¬           2606    9248983    city city_city_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_city_name_key UNIQUE (city_name);
 A   ALTER TABLE ONLY public.city DROP CONSTRAINT city_city_name_key;
       public            heqvalntzxdxvf    false    205            ¼           2606    9248981    city city_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id, city_name);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            heqvalntzxdxvf    false    205    205            Ğ           2606    9248973     country country_country_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_country_name_key UNIQUE (country_name);
 J   ALTER TABLE ONLY public.country DROP CONSTRAINT country_country_name_key;
       public            heqvalntzxdxvf    false    203            ¿           2606    9248971    country country_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_code);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            heqvalntzxdxvf    false    203            ▓           2606    9271622    model model_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (brand_model);
 :   ALTER TABLE ONLY public.model DROP CONSTRAINT model_pkey;
       public            heqvalntzxdxvf    false    210            «           2606    9271596    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            heqvalntzxdxvf    false    207            ░           2606    9271598    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            heqvalntzxdxvf    false    207            ┤           2606    9271638    vehicle vehicle_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (vehicle_no);
 >   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_pkey;
       public            heqvalntzxdxvf    false    212            ╝           2606    9271652 *   advertisement advertisement_seller_id_fkey 
   FK CONSTRAINT     ï   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.users(id);
 T   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_seller_id_fkey;
       public          heqvalntzxdxvf    false    3758    214    207            ╗           2606    9287657 /   advertisement const_advertisement_vehicle_no_fk 
   FK CONSTRAINT     ┐   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT const_advertisement_vehicle_no_fk FOREIGN KEY (vehicle_no) REFERENCES public.vehicle(vehicle_no) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT const_advertisement_vehicle_no_fk;
       public          heqvalntzxdxvf    false    214    3764    212            À           2606    9287700    city const_country_code_fk 
   FK CONSTRAINT     «   ALTER TABLE ONLY public.city
    ADD CONSTRAINT const_country_code_fk FOREIGN KEY (country_code) REFERENCES public.country(country_code) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.city DROP CONSTRAINT const_country_code_fk;
       public          heqvalntzxdxvf    false    3752    203    205            ║           2606    9287580    vehicle const_vehicle_fk 
   FK CONSTRAINT     ¿   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT const_vehicle_fk FOREIGN KEY (brand_model) REFERENCES public.model(brand_model) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT const_vehicle_fk;
       public          heqvalntzxdxvf    false    210    3762    212            ╣           2606    9271613    users_info users_info_city_fkey 
   FK CONSTRAINT     ü   ALTER TABLE ONLY public.users_info
    ADD CONSTRAINT users_info_city_fkey FOREIGN KEY (city) REFERENCES public.city(city_name);
 I   ALTER TABLE ONLY public.users_info DROP CONSTRAINT users_info_city_fkey;
       public          heqvalntzxdxvf    false    3754    209    205            ©           2606    9271608 #   users_info users_info_users_id_fkey 
   FK CONSTRAINT     â   ALTER TABLE ONLY public.users_info
    ADD CONSTRAINT users_info_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.users_info DROP CONSTRAINT users_info_users_id_fkey;
       public          heqvalntzxdxvf    false    3758    209    207           
