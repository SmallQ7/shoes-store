PGDMP      %                |            online_store    16.1    16.1 V               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16398    online_store    DATABASE     �   CREATE DATABASE online_store WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE online_store;
                postgres    false            �            1259    16565    basket_devices    TABLE     �   CREATE TABLE public.basket_devices (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "deviceId" integer
);
 "   DROP TABLE public.basket_devices;
       public         heap    postgres    false            �            1259    16564    basket_devices_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.basket_devices_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.basket_devices_id_seq1;
       public          postgres    false    228            !           0    0    basket_devices_id_seq1    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.basket_devices_id_seq1 OWNED BY public.basket_devices.id;
          public          postgres    false    227            �            1259    16531    baskets    TABLE     �   CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.baskets;
       public         heap    postgres    false            �            1259    16530    baskets_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.baskets_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.baskets_id_seq1;
       public          postgres    false    226            "           0    0    baskets_id_seq1    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.baskets_id_seq1 OWNED BY public.baskets.id;
          public          postgres    false    225            �            1259    16433    brands    TABLE     �   CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.brands;
       public         heap    postgres    false            �            1259    16432    brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.brands_id_seq;
       public          postgres    false    220            #           0    0    brands_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;
          public          postgres    false    219            �            1259    16619    comments    TABLE     �   CREATE TABLE public.comments (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    16618    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    234            $           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    233            �            1259    16582    device_infos    TABLE       CREATE TABLE public.device_infos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deviceId" integer
);
     DROP TABLE public.device_infos;
       public         heap    postgres    false            �            1259    16581    device_infos_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.device_infos_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.device_infos_id_seq1;
       public          postgres    false    230            %           0    0    device_infos_id_seq1    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.device_infos_id_seq1 OWNED BY public.device_infos.id;
          public          postgres    false    229            �            1259    16596    devices    TABLE     Y  CREATE TABLE public.devices (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    rating integer DEFAULT 2,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);
    DROP TABLE public.devices;
       public         heap    postgres    false            �            1259    16595    devices_id_seq2    SEQUENCE     �   CREATE SEQUENCE public.devices_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.devices_id_seq2;
       public          postgres    false    232            &           0    0    devices_id_seq2    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.devices_id_seq2 OWNED BY public.devices.id;
          public          postgres    false    231            �            1259    16481    ratings    TABLE     �   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "deviceId" integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    16480    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    222            '           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    221            �            1259    16512    type_brands    TABLE     �   CREATE TABLE public.type_brands (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);
    DROP TABLE public.type_brands;
       public         heap    postgres    false            �            1259    16511    type_brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.type_brands_id_seq;
       public          postgres    false    224            (           0    0    type_brands_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.type_brands_id_seq OWNED BY public.type_brands.id;
          public          postgres    false    223            �            1259    16424    types    TABLE     �   CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.types;
       public         heap    postgres    false            �            1259    16423    types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public          postgres    false    218            )           0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
          public          postgres    false    217            �            1259    16400    users    TABLE     '  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16399    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216            *           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            N           2604    16568    basket_devices id    DEFAULT     w   ALTER TABLE ONLY public.basket_devices ALTER COLUMN id SET DEFAULT nextval('public.basket_devices_id_seq1'::regclass);
 @   ALTER TABLE public.basket_devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            M           2604    16534 
   baskets id    DEFAULT     i   ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq1'::regclass);
 9   ALTER TABLE public.baskets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            J           2604    16436 	   brands id    DEFAULT     f   ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);
 8   ALTER TABLE public.brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            R           2604    16622    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            O           2604    16585    device_infos id    DEFAULT     s   ALTER TABLE ONLY public.device_infos ALTER COLUMN id SET DEFAULT nextval('public.device_infos_id_seq1'::regclass);
 >   ALTER TABLE public.device_infos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            P           2604    16599 
   devices id    DEFAULT     i   ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq2'::regclass);
 9   ALTER TABLE public.devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            K           2604    16484 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            L           2604    16515    type_brands id    DEFAULT     p   ALTER TABLE ONLY public.type_brands ALTER COLUMN id SET DEFAULT nextval('public.type_brands_id_seq'::regclass);
 =   ALTER TABLE public.type_brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            I           2604    16427    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            G           2604    16403    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                      0    16565    basket_devices 
   TABLE DATA           ^   COPY public.basket_devices (id, "createdAt", "updatedAt", "basketId", "deviceId") FROM stdin;
    public          postgres    false    228   oc                 0    16531    baskets 
   TABLE DATA           I   COPY public.baskets (id, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    226   �c                 0    16433    brands 
   TABLE DATA           D   COPY public.brands (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    220   d                 0    16619    comments 
   TABLE DATA           @   COPY public.comments (id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    234   �d                 0    16582    device_infos 
   TABLE DATA           d   COPY public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") FROM stdin;
    public          postgres    false    230   �d                 0    16596    devices 
   TABLE DATA           n   COPY public.devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;
    public          postgres    false    232   6l                 0    16481    ratings 
   TABLE DATA           [   COPY public.ratings (id, rate, "createdAt", "updatedAt", "userId", "deviceId") FROM stdin;
    public          postgres    false    222   Vs                 0    16512    type_brands 
   TABLE DATA           X   COPY public.type_brands (id, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;
    public          postgres    false    224   ss       
          0    16424    types 
   TABLE DATA           C   COPY public.types (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   �s                 0    16400    users 
   TABLE DATA           T   COPY public.users (id, email, password, role, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    216   t       +           0    0    basket_devices_id_seq1    SEQUENCE SET     E   SELECT pg_catalog.setval('public.basket_devices_id_seq1', 1, false);
          public          postgres    false    227            ,           0    0    baskets_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.baskets_id_seq1', 5, true);
          public          postgres    false    225            -           0    0    brands_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.brands_id_seq', 6, true);
          public          postgres    false    219            .           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 1, false);
          public          postgres    false    233            /           0    0    device_infos_id_seq1    SEQUENCE SET     D   SELECT pg_catalog.setval('public.device_infos_id_seq1', 156, true);
          public          postgres    false    229            0           0    0    devices_id_seq2    SEQUENCE SET     >   SELECT pg_catalog.setval('public.devices_id_seq2', 81, true);
          public          postgres    false    231            1           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    221            2           0    0    type_brands_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.type_brands_id_seq', 1, false);
          public          postgres    false    223            3           0    0    types_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.types_id_seq', 10, true);
          public          postgres    false    217            4           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 15, true);
          public          postgres    false    215            h           2606    16570 #   basket_devices basket_devices_pkey1 
   CONSTRAINT     a   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT basket_devices_pkey1 PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT basket_devices_pkey1;
       public            postgres    false    228            f           2606    16536    baskets baskets_pkey1 
   CONSTRAINT     S   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey1 PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.baskets DROP CONSTRAINT baskets_pkey1;
       public            postgres    false    226            \           2606    16440    brands brands_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_name_key;
       public            postgres    false    220            ^           2606    16438    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    220            p           2606    16624    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    234            j           2606    16589    device_infos device_infos_pkey1 
   CONSTRAINT     ]   ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT device_infos_pkey1 PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.device_infos DROP CONSTRAINT device_infos_pkey1;
       public            postgres    false    230            l           2606    16606    devices devices_name_key2 
   CONSTRAINT     T   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_name_key2 UNIQUE (name);
 C   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_name_key2;
       public            postgres    false    232            n           2606    16604    devices devices_pkey2 
   CONSTRAINT     S   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey2 PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_pkey2;
       public            postgres    false    232            `           2606    16486    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    222            b           2606    16517    type_brands type_brands_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT type_brands_pkey;
       public            postgres    false    224            d           2606    16519 *   type_brands type_brands_typeId_brandId_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");
 V   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_typeId_brandId_key";
       public            postgres    false    224    224            X           2606    16431    types types_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.types DROP CONSTRAINT types_name_key;
       public            postgres    false    218            Z           2606    16429    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            postgres    false    218            T           2606    16410    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    216            V           2606    16408    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            u           2606    16571 ,   basket_devices basket_devices_basketId_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_basketId_fkey1" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT "basket_devices_basketId_fkey1";
       public          postgres    false    226    4710    228            t           2606    16537    baskets baskets_userId_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT "baskets_userId_fkey1" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.baskets DROP CONSTRAINT "baskets_userId_fkey1";
       public          postgres    false    216    4694    226            v           2606    16612    devices devices_brandId_fkey2    FK CONSTRAINT     �   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_brandId_fkey2" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.devices DROP CONSTRAINT "devices_brandId_fkey2";
       public          postgres    false    232    4702    220            w           2606    16607    devices devices_typeId_fkey2    FK CONSTRAINT     �   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_typeId_fkey2" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.devices DROP CONSTRAINT "devices_typeId_fkey2";
       public          postgres    false    218    4698    232            q           2606    16487    ratings ratings_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.ratings DROP CONSTRAINT "ratings_userId_fkey";
       public          postgres    false    222    216    4694            r           2606    16525 $   type_brands type_brands_brandId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_brandId_fkey";
       public          postgres    false    4702    220    224            s           2606    16520 #   type_brands type_brands_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_typeId_fkey";
       public          postgres    false    218    224    4698                  x������ � �         o   x�}�A
1��u=E�%�{��,s�s4]��-���ăF�`�5�(��i��\�qZ�����8�pR�nKw�K|�V�2��X�;!$�ݲ#P�s��WR.���6>         }   x�}�;
�0k�)ԇ��x�h��}��	[��!9�]��f�Ga�w�ίy�{`d9o�$&մ��RN(8���O��a�H�Ո����=	7���IK*y�o�@�����L	 V��4            x������ � �         q  x���[s�F��ѯ�s;��_�f��L�nӐ&�N_T,��Ȣ��� �m�=h��I<}��~�6x�\OO����OU�5o�l���Y����H\l�z�5E����M�s���4!��)&S�b�R�R��������,�<�?����dQl��,^6U�_Ϥ�w��ݦ�/U�����m��g_�E��}=�M��K���7�(��!|=�M�H�L4ӎq����w����vH�����W����!��D�H"1�k�(�0��:��i���t�������S��睛/n>I���
Qa�w��>���x���C��TU9+�	_̹�m����p�r�F��C�GXy' �Ǆ�l�u��N��?߯�tL��3R�ī02�*e8A��#TD�[��ȣK'��e����n���ɺL�!D�ɴ�Ń噧���&�}��"�hD<�	�J�\è�9b��'R>�C�[3'�������9�WVǋP�V�����|���WM]��������s���s,�?\��$J�����'��sQԳ��P�Wq��O$)�R�F���s7��tP']�����>a�N���y�}���"�Ɵ��̛��MΤ�*W½a��S�R"E�p\+�LK�)N�S����u�Vۮ^YfEy^�G�������R�S&)��E���y��T��*�Y�0��NK
�XL�`�C`!��yE�c�~��{���2�<7�ZH�� XHa8g	G�q�!�#�-L���|�4k�q��l���^��)2��i ,�&1m�h�.B�D�[�h��߷�?�#���c~��o�<��S��)s�@�O�0� XPe���6V�fc?�i$��	���<�&��gJ�z��>�f�)/��Y�� *KS�D���,��@;Y�l�f����7����Ǽ�ӆ��9���$��Z��%�Q��#�G�ߙ���f��ٹ˛�,��ոN��ߔ�3Ů${���R��D#G�o�����*Pn�#��1lg��lg͛�B*mn6Ԛ�m����E����3����ȿ��f=���S��z������m{-]�dyK(S���T����ڶ�B\E�_� (�W��f�2�6c����O��4k��� XPO���9�~��H�{ �<yW����r�ɏ ��� W�n��`A��Ŋj���!�"�oI ��d�q��l�w��G�cC�
���eҚ	�9���$(�$�ʱ�Y!�#��N�[��)wG�v֜ϱڤZ����&�)R���q�!A#��M�3�<�����,(ͮ�:�yl�(��K�G�LC7M��Ͽ<j��oj'ͻ�������wހ�X��Q@���$$Eڔ�I[!!��޶Q��J��}%�R����%�!�~D��1me��7��r�@#�{�Z�*��|���ZZ�=-� Y�pB�k�~Hh3��!!�N���>����-�1@q�l��'r-�#��s�Ў�H+$��_�jg�np����לּ��!��i��gDw� ZPM���D�nP[!I�����P;Mv�>l���m���N�|���O}���т�rF���Z!������P���qV(�Y��+��ZP]���D3W�IS���Q;e.v��s�Yg}�:9�=´�b���U�L1N$sl+X!)���
=^��u��=�'�ܩ�|O41�<��Iт
T�'bx>�"$M9��D�V��E}�d��n��0���X�x{+B���J�H���4u��9  �ި�T5Y���B ��}�0$�f0��YA]�S��\�t?$M���D��Ҿ�"��Q�V��M[-�Qu�TB��d퇔)Y����A�o��Z��&�x����K\"�����(�4!�1�R��mP�3��4����D����e6/v�����ۘA:������DQ��6�]           x�}W�n�<7��o{0�QY����J�l\K�d�0|��4�F$���;�gV�G� �K��Y���ZO�~������K���DZNjJN���q�	6�
OV��#����?�~��TZ�J����k'��AhR7�/��?���n�6����bM�"�k�"��"K����d���_�x��5�A��C���u��J���o~��}�u)Ɛ�MYQR͂Kn"UW�t�eR�J1�
�t�A�{��w/�&�]�攕N8ժ`�Hl��և�L�ź�߰\|�S����f�i"��k��r�jt"%D��s*����F��x���<�5�ט�绺��o�!e.R�Q��I�DM���&�c�����f�{
!�6�������!��"�m����,������D��T^[���#��QjQl���n;���>���i}��aB��8k�D����%�Re+:�iQO֏�>�VZwJ;��������9W�Z����K_EB�"6�U[�EMr�����Ϡ��O����dz����e�v�Vp3R_�h!)�⨶�6����B4���m~����ۧ:�f	6#B)���q�A�c�˔�\>��Ʒ�Y�ўB�����i5������7x�Ԕ��h���ڲ�^xTQg�J����w�:���s}��;�+Z���Id�6b��HDAd�-�fJ�mĭ{ɢ�ܧ�ʭ������N���K�ex��M�x-"���=6��G̼�~Qz��3e.f��ׇ.V7�ѽՙ&�9%R�^�L��X�Q/���0�"��\�7/�/�xa*�fLw�4(3o%j��qQi%�݄� 5��3���
�}��h���(�������S�'_�b�����#r�}ur����&4�u�P&xEW��MF��P��*�y�쨐f�u���
� ��敂��c��k�Z�)��0���Z���O-��:e�f#�`?�pu�Z�O�ͷ�ۯo�&�����"�N��"�Xc�Q�,�u+c��k�������ww���,o��H��c��N��ϡb�����v������:���/O_�?n?}>n�
+�&�h�O+
��g1QCLu�@Jn�Z���!8�՗�@�풪*R����E�R'�#�S����V����t�K'��Np�s!%L�:��"�7�X)����j�`uZu	�\}�A��-�	��!+�Aa��^��u.��)��a�0 ?�:�_��O�}�O��*���c/���QtN:�|�
3ۅ���o�0v�Ѽ�����ύ���@?߭>�f@%�U[��Op)�P�%S5Sr��xx#i�v0�p
u	N����,��B�i�$���ȳh_�E�a�s�ˣ�;�VfuY����t���]YXp0I����j�ػpʌɍ[���r��|��e[��`{Ρ�Ħ��XZ���m1�[��c�8��Q͟B o����.M��b�FT������v��ޙa�v����rN�U�q ��w���q��-�=�ƛ��D�ّ�+��u��}�Z����z���_����O��'��y��E����oW$!Fl���	\���J&�m4-�����V%�1|<�����nu��mҸQ\��@�PpRH�����Wp�B�K����B��q�j��p(�Z\��i��3�E��u$hI�c�G;��T�%�Q�B��ˋ�x<��T�w"g���t`�X����٤s3�[9����t�y�=���ۃ��i8�4�p�%$�c���,@�.h-��/J��
������<�!�            x������ � �            x������ � �      
   p   x�}�1�0F��>EvT�]��3U,=�YSEb~�SzܟǗ�ڢ���{Z����'���u��M��U�����N�v{O�zF�:�1��ԆC��D������?'�1            x�}��r�@�5<E�M���\V/E/1�f�L�������2�`�T�ݿ��>}�P���1�y��p����ޏ�����@�ꕲ�/�S��˹R/�h็S�ejgfռ�#�ǅ�?0�����!�IP����"2�cڑm�T��$3f��k:88�3�t��	=l�A>uէ�ڛ��h7�B�{ck�݆���D5$�?!��H>!��&�+���fE:M4{�F���K����N��e���z1�B��IH#@H[�V$���ඤq�t�6'�aϜ��n$A�}�s'{׶�^����������6zٿ
dt�����e��y�HB��ON�O��Y���;��tq���>�Ơ���w��r��!3xp.b��OY�7L4�4Dnq~"����ո˗�p���n�U1g� �e��gzχ�hJk2�:�8O��W��/�5�5�S�M$"*dUx<�WA����!��MJ� ���Њ����S7�y��S�@�F���@z���;�4|dv}�?"�/E���T     