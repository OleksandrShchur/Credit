PGDMP     #                    {           credit    13.4    13.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    50962    credit    DATABASE     c   CREATE DATABASE credit WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE credit;
                postgres    false            �            1259    50994 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    50992    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    51004    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    51002    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    50986    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    50984    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    51130    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id bigint NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    51096    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    51094    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            �            1259    50976    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    50974    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    50965    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    50963    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    51118    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    51145    mainCore_borrowing    TABLE     �   CREATE TABLE public."mainCore_borrowing" (
    id integer NOT NULL,
    credit_name character varying(300) NOT NULL,
    interest_rate double precision NOT NULL,
    term character varying(500) NOT NULL
);
 (   DROP TABLE public."mainCore_borrowing";
       public         heap    postgres    false            �            1259    51143    mainCore_borrowing_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mainCore_borrowing_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."mainCore_borrowing_id_seq";
       public          postgres    false    221            �           0    0    mainCore_borrowing_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."mainCore_borrowing_id_seq" OWNED BY public."mainCore_borrowing".id;
          public          postgres    false    220            �            1259    51156    mainCore_creditrequest    TABLE     '  CREATE TABLE public."mainCore_creditrequest" (
    id integer NOT NULL,
    date_of_taking timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    credit_amount double precision NOT NULL,
    borrower_id_id bigint NOT NULL,
    borrowing_id_id integer NOT NULL
);
 ,   DROP TABLE public."mainCore_creditrequest";
       public         heap    postgres    false            �            1259    51154    mainCore_creditrequest_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mainCore_creditrequest_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."mainCore_creditrequest_id_seq";
       public          postgres    false    223            �           0    0    mainCore_creditrequest_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."mainCore_creditrequest_id_seq" OWNED BY public."mainCore_creditrequest".id;
          public          postgres    false    222            �            1259    51191    mainCore_credittaking    TABLE     �   CREATE TABLE public."mainCore_credittaking" (
    id integer NOT NULL,
    confirmation_date timestamp with time zone NOT NULL,
    request_id_id integer NOT NULL
);
 +   DROP TABLE public."mainCore_credittaking";
       public         heap    postgres    false            �            1259    51189    mainCore_credittaking_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mainCore_credittaking_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."mainCore_credittaking_id_seq";
       public          postgres    false    231            �           0    0    mainCore_credittaking_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."mainCore_credittaking_id_seq" OWNED BY public."mainCore_credittaking".id;
          public          postgres    false    230            �            1259    51180     mainCore_jsonreimbursementscheme    TABLE     �   CREATE TABLE public."mainCore_jsonreimbursementscheme" (
    id integer NOT NULL,
    scheme text NOT NULL,
    date timestamp with time zone NOT NULL,
    borrower_id_id bigint NOT NULL
);
 6   DROP TABLE public."mainCore_jsonreimbursementscheme";
       public         heap    postgres    false            �            1259    51178 '   mainCore_jsonreimbursementscheme_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mainCore_jsonreimbursementscheme_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."mainCore_jsonreimbursementscheme_id_seq";
       public          postgres    false    229            �           0    0 '   mainCore_jsonreimbursementscheme_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."mainCore_jsonreimbursementscheme_id_seq" OWNED BY public."mainCore_jsonreimbursementscheme".id;
          public          postgres    false    228            �            1259    51172    mainCore_return    TABLE     �   CREATE TABLE public."mainCore_return" (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    return_value double precision NOT NULL,
    scheme_id_id integer NOT NULL
);
 %   DROP TABLE public."mainCore_return";
       public         heap    postgres    false            �            1259    51170    mainCore_return_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mainCore_return_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."mainCore_return_id_seq";
       public          postgres    false    227            �           0    0    mainCore_return_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."mainCore_return_id_seq" OWNED BY public."mainCore_return".id;
          public          postgres    false    226            �            1259    51164    mainCore_returnscheme    TABLE     �   CREATE TABLE public."mainCore_returnscheme" (
    id integer NOT NULL,
    borrower_id_id bigint NOT NULL,
    borrowing_id_id integer NOT NULL
);
 +   DROP TABLE public."mainCore_returnscheme";
       public         heap    postgres    false            �            1259    51162    mainCore_returnscheme_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mainCore_returnscheme_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."mainCore_returnscheme_id_seq";
       public          postgres    false    225            �           0    0    mainCore_returnscheme_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."mainCore_returnscheme_id_seq" OWNED BY public."mainCore_returnscheme".id;
          public          postgres    false    224            �            1259    51038    mainCore_user    TABLE     %  CREATE TABLE public."mainCore_user" (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    phone_number character varying(100),
    email character varying(300) NOT NULL,
    date_of_birth timestamp with time zone,
    created_date timestamp with time zone NOT NULL,
    last_name character varying(100),
    first_name character varying(100),
    patronymic character varying(100),
    is_staff boolean NOT NULL,
    is_consultant boolean NOT NULL
);
 #   DROP TABLE public."mainCore_user";
       public         heap    postgres    false            �            1259    51051    mainCore_user_groups    TABLE     �   CREATE TABLE public."mainCore_user_groups" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 *   DROP TABLE public."mainCore_user_groups";
       public         heap    postgres    false            �            1259    51049    mainCore_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mainCore_user_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."mainCore_user_groups_id_seq";
       public          postgres    false    213            �           0    0    mainCore_user_groups_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."mainCore_user_groups_id_seq" OWNED BY public."mainCore_user_groups".id;
          public          postgres    false    212            �            1259    51036    mainCore_user_id_seq    SEQUENCE        CREATE SEQUENCE public."mainCore_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."mainCore_user_id_seq";
       public          postgres    false    211            �           0    0    mainCore_user_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."mainCore_user_id_seq" OWNED BY public."mainCore_user".id;
          public          postgres    false    210            �            1259    51059    mainCore_user_user_permissions    TABLE     �   CREATE TABLE public."mainCore_user_user_permissions" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 4   DROP TABLE public."mainCore_user_user_permissions";
       public         heap    postgres    false            �            1259    51057 %   mainCore_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."mainCore_user_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."mainCore_user_user_permissions_id_seq";
       public          postgres    false    215            �           0    0 %   mainCore_user_user_permissions_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."mainCore_user_user_permissions_id_seq" OWNED BY public."mainCore_user_user_permissions".id;
          public          postgres    false    214            �           2604    50997    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    51007    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �           2604    50989    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    51099    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    50979    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �           2604    50968    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �           2604    51148    mainCore_borrowing id    DEFAULT     �   ALTER TABLE ONLY public."mainCore_borrowing" ALTER COLUMN id SET DEFAULT nextval('public."mainCore_borrowing_id_seq"'::regclass);
 F   ALTER TABLE public."mainCore_borrowing" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    51159    mainCore_creditrequest id    DEFAULT     �   ALTER TABLE ONLY public."mainCore_creditrequest" ALTER COLUMN id SET DEFAULT nextval('public."mainCore_creditrequest_id_seq"'::regclass);
 J   ALTER TABLE public."mainCore_creditrequest" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    51194    mainCore_credittaking id    DEFAULT     �   ALTER TABLE ONLY public."mainCore_credittaking" ALTER COLUMN id SET DEFAULT nextval('public."mainCore_credittaking_id_seq"'::regclass);
 I   ALTER TABLE public."mainCore_credittaking" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    51183 #   mainCore_jsonreimbursementscheme id    DEFAULT     �   ALTER TABLE ONLY public."mainCore_jsonreimbursementscheme" ALTER COLUMN id SET DEFAULT nextval('public."mainCore_jsonreimbursementscheme_id_seq"'::regclass);
 T   ALTER TABLE public."mainCore_jsonreimbursementscheme" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    51175    mainCore_return id    DEFAULT     |   ALTER TABLE ONLY public."mainCore_return" ALTER COLUMN id SET DEFAULT nextval('public."mainCore_return_id_seq"'::regclass);
 C   ALTER TABLE public."mainCore_return" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    51167    mainCore_returnscheme id    DEFAULT     �   ALTER TABLE ONLY public."mainCore_returnscheme" ALTER COLUMN id SET DEFAULT nextval('public."mainCore_returnscheme_id_seq"'::regclass);
 I   ALTER TABLE public."mainCore_returnscheme" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    51041    mainCore_user id    DEFAULT     x   ALTER TABLE ONLY public."mainCore_user" ALTER COLUMN id SET DEFAULT nextval('public."mainCore_user_id_seq"'::regclass);
 A   ALTER TABLE public."mainCore_user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    51054    mainCore_user_groups id    DEFAULT     �   ALTER TABLE ONLY public."mainCore_user_groups" ALTER COLUMN id SET DEFAULT nextval('public."mainCore_user_groups_id_seq"'::regclass);
 H   ALTER TABLE public."mainCore_user_groups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �           2604    51062 !   mainCore_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public."mainCore_user_user_permissions" ALTER COLUMN id SET DEFAULT nextval('public."mainCore_user_user_permissions_id_seq"'::regclass);
 R   ALTER TABLE public."mainCore_user_user_permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            u          0    50994 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ��       w          0    51004    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   �       s          0    50986    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   �       �          0    51130    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    219   t�                 0    51096    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   �       q          0    50976    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   ��       o          0    50965    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ��       �          0    51118    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218   m�       �          0    51145    mainCore_borrowing 
   TABLE DATA           T   COPY public."mainCore_borrowing" (id, credit_name, interest_rate, term) FROM stdin;
    public          postgres    false    221   U�       �          0    51156    mainCore_creditrequest 
   TABLE DATA           �   COPY public."mainCore_creditrequest" (id, date_of_taking, end_date, credit_amount, borrower_id_id, borrowing_id_id) FROM stdin;
    public          postgres    false    223   ��       �          0    51191    mainCore_credittaking 
   TABLE DATA           W   COPY public."mainCore_credittaking" (id, confirmation_date, request_id_id) FROM stdin;
    public          postgres    false    231   �       �          0    51180     mainCore_jsonreimbursementscheme 
   TABLE DATA           ^   COPY public."mainCore_jsonreimbursementscheme" (id, scheme, date, borrower_id_id) FROM stdin;
    public          postgres    false    229   9�       �          0    51172    mainCore_return 
   TABLE DATA           Q   COPY public."mainCore_return" (id, date, return_value, scheme_id_id) FROM stdin;
    public          postgres    false    227   �       �          0    51164    mainCore_returnscheme 
   TABLE DATA           V   COPY public."mainCore_returnscheme" (id, borrower_id_id, borrowing_id_id) FROM stdin;
    public          postgres    false    225   ��       y          0    51038    mainCore_user 
   TABLE DATA           �   COPY public."mainCore_user" (id, password, last_login, is_superuser, phone_number, email, date_of_birth, created_date, last_name, first_name, patronymic, is_staff, is_consultant) FROM stdin;
    public          postgres    false    211   ��       {          0    51051    mainCore_user_groups 
   TABLE DATA           G   COPY public."mainCore_user_groups" (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   I�       }          0    51059    mainCore_user_user_permissions 
   TABLE DATA           V   COPY public."mainCore_user_user_permissions" (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   f�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    204            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);
          public          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);
          public          postgres    false    200            �           0    0    mainCore_borrowing_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."mainCore_borrowing_id_seq"', 9, true);
          public          postgres    false    220            �           0    0    mainCore_creditrequest_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."mainCore_creditrequest_id_seq"', 2, true);
          public          postgres    false    222            �           0    0    mainCore_credittaking_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."mainCore_credittaking_id_seq"', 1, false);
          public          postgres    false    230            �           0    0 '   mainCore_jsonreimbursementscheme_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."mainCore_jsonreimbursementscheme_id_seq"', 1, true);
          public          postgres    false    228            �           0    0    mainCore_return_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."mainCore_return_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    mainCore_returnscheme_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."mainCore_returnscheme_id_seq"', 1, false);
          public          postgres    false    224            �           0    0    mainCore_user_groups_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."mainCore_user_groups_id_seq"', 1, false);
          public          postgres    false    212            �           0    0    mainCore_user_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."mainCore_user_id_seq"', 4, true);
          public          postgres    false    210            �           0    0 %   mainCore_user_user_permissions_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."mainCore_user_user_permissions_id_seq"', 1, false);
          public          postgres    false    214            �           2606    51034    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    51020 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    51009 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    50999    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    51011 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    50991 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            �           2606    51134 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    219            �           2606    51136 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    219            �           2606    51105 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    50983 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    50981 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    50973 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    51125 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            �           2606    51153 *   mainCore_borrowing mainCore_borrowing_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."mainCore_borrowing"
    ADD CONSTRAINT "mainCore_borrowing_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."mainCore_borrowing" DROP CONSTRAINT "mainCore_borrowing_pkey";
       public            postgres    false    221            �           2606    51161 2   mainCore_creditrequest mainCore_creditrequest_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."mainCore_creditrequest"
    ADD CONSTRAINT "mainCore_creditrequest_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."mainCore_creditrequest" DROP CONSTRAINT "mainCore_creditrequest_pkey";
       public            postgres    false    223            �           2606    51196 0   mainCore_credittaking mainCore_credittaking_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."mainCore_credittaking"
    ADD CONSTRAINT "mainCore_credittaking_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."mainCore_credittaking" DROP CONSTRAINT "mainCore_credittaking_pkey";
       public            postgres    false    231            �           2606    51188 F   mainCore_jsonreimbursementscheme mainCore_jsonreimbursementscheme_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_jsonreimbursementscheme"
    ADD CONSTRAINT "mainCore_jsonreimbursementscheme_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."mainCore_jsonreimbursementscheme" DROP CONSTRAINT "mainCore_jsonreimbursementscheme_pkey";
       public            postgres    false    229            �           2606    51177 $   mainCore_return mainCore_return_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."mainCore_return"
    ADD CONSTRAINT "mainCore_return_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."mainCore_return" DROP CONSTRAINT "mainCore_return_pkey";
       public            postgres    false    227            �           2606    51169 0   mainCore_returnscheme mainCore_returnscheme_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."mainCore_returnscheme"
    ADD CONSTRAINT "mainCore_returnscheme_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."mainCore_returnscheme" DROP CONSTRAINT "mainCore_returnscheme_pkey";
       public            postgres    false    225            �           2606    51048 -   mainCore_user mainCore_user_email_address_key 
   CONSTRAINT     m   ALTER TABLE ONLY public."mainCore_user"
    ADD CONSTRAINT "mainCore_user_email_address_key" UNIQUE (email);
 [   ALTER TABLE ONLY public."mainCore_user" DROP CONSTRAINT "mainCore_user_email_address_key";
       public            postgres    false    211            �           2606    51056 .   mainCore_user_groups mainCore_user_groups_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."mainCore_user_groups"
    ADD CONSTRAINT "mainCore_user_groups_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."mainCore_user_groups" DROP CONSTRAINT "mainCore_user_groups_pkey";
       public            postgres    false    213            �           2606    51067 H   mainCore_user_groups mainCore_user_groups_user_id_group_id_cb642abb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_user_groups"
    ADD CONSTRAINT "mainCore_user_groups_user_id_group_id_cb642abb_uniq" UNIQUE (user_id, group_id);
 v   ALTER TABLE ONLY public."mainCore_user_groups" DROP CONSTRAINT "mainCore_user_groups_user_id_group_id_cb642abb_uniq";
       public            postgres    false    213    213            �           2606    51046     mainCore_user mainCore_user_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."mainCore_user"
    ADD CONSTRAINT "mainCore_user_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."mainCore_user" DROP CONSTRAINT "mainCore_user_pkey";
       public            postgres    false    211            �           2606    51081 [   mainCore_user_user_permissions mainCore_user_user_permi_user_id_permission_id_74bc1399_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_user_user_permissions"
    ADD CONSTRAINT "mainCore_user_user_permi_user_id_permission_id_74bc1399_uniq" UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public."mainCore_user_user_permissions" DROP CONSTRAINT "mainCore_user_user_permi_user_id_permission_id_74bc1399_uniq";
       public            postgres    false    215    215            �           2606    51064 B   mainCore_user_user_permissions mainCore_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_user_user_permissions"
    ADD CONSTRAINT "mainCore_user_user_permissions_pkey" PRIMARY KEY (id);
 p   ALTER TABLE ONLY public."mainCore_user_user_permissions" DROP CONSTRAINT "mainCore_user_user_permissions_pkey";
       public            postgres    false    215            �           1259    51035    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    51031 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    51032 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    51017 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            �           1259    51142 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    219            �           1259    51116 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            �           1259    51117 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            �           1259    51127 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218            �           1259    51126 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218            �           1259    51207 .   mainCore_creditrequest_borrower_id_id_801b96e7    INDEX        CREATE INDEX "mainCore_creditrequest_borrower_id_id_801b96e7" ON public."mainCore_creditrequest" USING btree (borrower_id_id);
 D   DROP INDEX public."mainCore_creditrequest_borrower_id_id_801b96e7";
       public            postgres    false    223            �           1259    51208 /   mainCore_creditrequest_borrowing_id_id_bfa8702a    INDEX     �   CREATE INDEX "mainCore_creditrequest_borrowing_id_id_bfa8702a" ON public."mainCore_creditrequest" USING btree (borrowing_id_id);
 E   DROP INDEX public."mainCore_creditrequest_borrowing_id_id_bfa8702a";
       public            postgres    false    223            �           1259    51238 ,   mainCore_credittaking_request_id_id_7b116a26    INDEX     {   CREATE INDEX "mainCore_credittaking_request_id_id_7b116a26" ON public."mainCore_credittaking" USING btree (request_id_id);
 B   DROP INDEX public."mainCore_credittaking_request_id_id_7b116a26";
       public            postgres    false    231            �           1259    51232 8   mainCore_jsonreimbursementscheme_borrower_id_id_5166881a    INDEX     �   CREATE INDEX "mainCore_jsonreimbursementscheme_borrower_id_id_5166881a" ON public."mainCore_jsonreimbursementscheme" USING btree (borrower_id_id);
 N   DROP INDEX public."mainCore_jsonreimbursementscheme_borrower_id_id_5166881a";
       public            postgres    false    229            �           1259    51226 %   mainCore_return_scheme_id_id_d048d812    INDEX     m   CREATE INDEX "mainCore_return_scheme_id_id_d048d812" ON public."mainCore_return" USING btree (scheme_id_id);
 ;   DROP INDEX public."mainCore_return_scheme_id_id_d048d812";
       public            postgres    false    227            �           1259    51219 -   mainCore_returnscheme_borrower_id_id_decf42ee    INDEX     }   CREATE INDEX "mainCore_returnscheme_borrower_id_id_decf42ee" ON public."mainCore_returnscheme" USING btree (borrower_id_id);
 C   DROP INDEX public."mainCore_returnscheme_borrower_id_id_decf42ee";
       public            postgres    false    225            �           1259    51220 .   mainCore_returnscheme_borrowing_id_id_bbbdfc49    INDEX        CREATE INDEX "mainCore_returnscheme_borrowing_id_id_bbbdfc49" ON public."mainCore_returnscheme" USING btree (borrowing_id_id);
 D   DROP INDEX public."mainCore_returnscheme_borrowing_id_id_bbbdfc49";
       public            postgres    false    225            �           1259    51065 )   mainCore_user_email_address_d0ad7f12_like    INDEX     |   CREATE INDEX "mainCore_user_email_address_d0ad7f12_like" ON public."mainCore_user" USING btree (email varchar_pattern_ops);
 ?   DROP INDEX public."mainCore_user_email_address_d0ad7f12_like";
       public            postgres    false    211            �           1259    51079 &   mainCore_user_groups_group_id_5271b643    INDEX     o   CREATE INDEX "mainCore_user_groups_group_id_5271b643" ON public."mainCore_user_groups" USING btree (group_id);
 <   DROP INDEX public."mainCore_user_groups_group_id_5271b643";
       public            postgres    false    213            �           1259    51078 %   mainCore_user_groups_user_id_bf3f5efb    INDEX     m   CREATE INDEX "mainCore_user_groups_user_id_bf3f5efb" ON public."mainCore_user_groups" USING btree (user_id);
 ;   DROP INDEX public."mainCore_user_groups_user_id_bf3f5efb";
       public            postgres    false    213            �           1259    51093 5   mainCore_user_user_permissions_permission_id_5e002c2f    INDEX     �   CREATE INDEX "mainCore_user_user_permissions_permission_id_5e002c2f" ON public."mainCore_user_user_permissions" USING btree (permission_id);
 K   DROP INDEX public."mainCore_user_user_permissions_permission_id_5e002c2f";
       public            postgres    false    215            �           1259    51092 /   mainCore_user_user_permissions_user_id_6630ec47    INDEX     �   CREATE INDEX "mainCore_user_user_permissions_user_id_6630ec47" ON public."mainCore_user_user_permissions" USING btree (user_id);
 E   DROP INDEX public."mainCore_user_user_permissions_user_id_6630ec47";
       public            postgres    false    215            �           2606    51026 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2974    209    205            �           2606    51021 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    209    2979            �           2606    51012 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    203    205    2969            �           2606    51137 D   authtoken_token authtoken_token_user_id_35299eff_fk_mainCore_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT "authtoken_token_user_id_35299eff_fk_mainCore_user_id" FOREIGN KEY (user_id) REFERENCES public."mainCore_user"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT "authtoken_token_user_id_35299eff_fk_mainCore_user_id";
       public          postgres    false    2990    219    211            �           2606    51106 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    217    203    2969            �           2606    51111 F   django_admin_log django_admin_log_user_id_c564eba6_fk_mainCore_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_mainCore_user_id" FOREIGN KEY (user_id) REFERENCES public."mainCore_user"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT "django_admin_log_user_id_c564eba6_fk_mainCore_user_id";
       public          postgres    false    211    217    2990            �           2606    51197 P   mainCore_creditrequest mainCore_creditreque_borrower_id_id_801b96e7_fk_mainCore_    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_creditrequest"
    ADD CONSTRAINT "mainCore_creditreque_borrower_id_id_801b96e7_fk_mainCore_" FOREIGN KEY (borrower_id_id) REFERENCES public."mainCore_user"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."mainCore_creditrequest" DROP CONSTRAINT "mainCore_creditreque_borrower_id_id_801b96e7_fk_mainCore_";
       public          postgres    false    223    211    2990            �           2606    51202 Q   mainCore_creditrequest mainCore_creditreque_borrowing_id_id_bfa8702a_fk_mainCore_    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_creditrequest"
    ADD CONSTRAINT "mainCore_creditreque_borrowing_id_id_bfa8702a_fk_mainCore_" FOREIGN KEY (borrowing_id_id) REFERENCES public."mainCore_borrowing"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."mainCore_creditrequest" DROP CONSTRAINT "mainCore_creditreque_borrowing_id_id_bfa8702a_fk_mainCore_";
       public          postgres    false    223    221    3017            �           2606    51233 N   mainCore_credittaking mainCore_credittakin_request_id_id_7b116a26_fk_mainCore_    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_credittaking"
    ADD CONSTRAINT "mainCore_credittakin_request_id_id_7b116a26_fk_mainCore_" FOREIGN KEY (request_id_id) REFERENCES public."mainCore_creditrequest"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."mainCore_credittaking" DROP CONSTRAINT "mainCore_credittakin_request_id_id_7b116a26_fk_mainCore_";
       public          postgres    false    231    3021    223            �           2606    51227 Z   mainCore_jsonreimbursementscheme mainCore_jsonreimbur_borrower_id_id_5166881a_fk_mainCore_    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_jsonreimbursementscheme"
    ADD CONSTRAINT "mainCore_jsonreimbur_borrower_id_id_5166881a_fk_mainCore_" FOREIGN KEY (borrower_id_id) REFERENCES public."mainCore_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mainCore_jsonreimbursementscheme" DROP CONSTRAINT "mainCore_jsonreimbur_borrower_id_id_5166881a_fk_mainCore_";
       public          postgres    false    211    2990    229            �           2606    51221 B   mainCore_return mainCore_return_scheme_id_id_d048d812_fk_mainCore_    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_return"
    ADD CONSTRAINT "mainCore_return_scheme_id_id_d048d812_fk_mainCore_" FOREIGN KEY (scheme_id_id) REFERENCES public."mainCore_returnscheme"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."mainCore_return" DROP CONSTRAINT "mainCore_return_scheme_id_id_d048d812_fk_mainCore_";
       public          postgres    false    225    3025    227            �           2606    51209 O   mainCore_returnscheme mainCore_returnschem_borrower_id_id_decf42ee_fk_mainCore_    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_returnscheme"
    ADD CONSTRAINT "mainCore_returnschem_borrower_id_id_decf42ee_fk_mainCore_" FOREIGN KEY (borrower_id_id) REFERENCES public."mainCore_user"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."mainCore_returnscheme" DROP CONSTRAINT "mainCore_returnschem_borrower_id_id_decf42ee_fk_mainCore_";
       public          postgres    false    211    2990    225            �           2606    51214 P   mainCore_returnscheme mainCore_returnschem_borrowing_id_id_bbbdfc49_fk_mainCore_    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_returnscheme"
    ADD CONSTRAINT "mainCore_returnschem_borrowing_id_id_bbbdfc49_fk_mainCore_" FOREIGN KEY (borrowing_id_id) REFERENCES public."mainCore_borrowing"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."mainCore_returnscheme" DROP CONSTRAINT "mainCore_returnschem_borrowing_id_id_bbbdfc49_fk_mainCore_";
       public          postgres    false    221    225    3017            �           2606    51073 L   mainCore_user_groups mainCore_user_groups_group_id_5271b643_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_user_groups"
    ADD CONSTRAINT "mainCore_user_groups_group_id_5271b643_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."mainCore_user_groups" DROP CONSTRAINT "mainCore_user_groups_group_id_5271b643_fk_auth_group_id";
       public          postgres    false    213    2979    207            �           2606    51068 N   mainCore_user_groups mainCore_user_groups_user_id_bf3f5efb_fk_mainCore_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_user_groups"
    ADD CONSTRAINT "mainCore_user_groups_user_id_bf3f5efb_fk_mainCore_user_id" FOREIGN KEY (user_id) REFERENCES public."mainCore_user"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."mainCore_user_groups" DROP CONSTRAINT "mainCore_user_groups_user_id_bf3f5efb_fk_mainCore_user_id";
       public          postgres    false    211    213    2990            �           2606    51087 W   mainCore_user_user_permissions mainCore_user_user_p_permission_id_5e002c2f_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_user_user_permissions"
    ADD CONSTRAINT "mainCore_user_user_p_permission_id_5e002c2f_fk_auth_perm" FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."mainCore_user_user_permissions" DROP CONSTRAINT "mainCore_user_user_p_permission_id_5e002c2f_fk_auth_perm";
       public          postgres    false    205    2974    215            �           2606    51082 Q   mainCore_user_user_permissions mainCore_user_user_p_user_id_6630ec47_fk_mainCore_    FK CONSTRAINT     �   ALTER TABLE ONLY public."mainCore_user_user_permissions"
    ADD CONSTRAINT "mainCore_user_user_p_user_id_6630ec47_fk_mainCore_" FOREIGN KEY (user_id) REFERENCES public."mainCore_user"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."mainCore_user_user_permissions" DROP CONSTRAINT "mainCore_user_user_p_user_id_6630ec47_fk_mainCore_";
       public          postgres    false    211    2990    215            u      x������ � �      w      x������ � �      s   F  x�}�Kr�0@��)t����?�\���d��(�)������@@ ��;|�d�v�����\|v�!~g��%�aiK@No�p��!+ ����!k ���KaS��f6��xm���)A�v+��v��I?Ţ�`���Hp�a���n��
�ٺ���}�B�I'BP��U ܮf�S������M"�"��Rg�����QQ�[]����l���mƕu{)�z��A:2�z��Vc�f��Fc�ق��hK5��"P�� *d@t<n���&w������Wӳ-U��>��ׄ���L �6w1̞n���F[�2AR9���I�DS�B�pg�v1v_m����k[����	T��D�O���%��.�~c0i�'����jbFP�(��L�R�haf@���)�ӛ�z㜐�1[�k5�+CJ�֞"E�RJ��	p��S��vHIF���?G1hk5���t���u]l:I��:%�n:ᰬd8~L=�*QH��f�C̫2(��P��"(�\��	��y���.�z�����;�{�~��/3j�F��c�Ȼ'��}x�~�$1�ρOr��_�����+�      �   �   x�U�11�:~E��N���ߒ�>���_�&�V��D����1S���
!��&@�烀�|�?	�Xg?����>�'��e�1e�ц��&7c�����v���}�ZƕٖH�q�.g�*<\l�JaJ���� ����A#���>K)��4�         �   x���1o�0�����VU��3��c��H >��	���5JU��tO7|O�
leP����g_��]��gj�����>���71r�A]o���	����P#�8b��1K��p?�bѤ�]��k�"0} �]l�v?�z���Wz��Y���?e�_e>X&P��ƮEߵKN��%�|�vxk�>�QX�^K)� �_      q   �   x�]���@E��1���Z�n�-��T`��{M��tC�\�	ۜn����X�=iNfI�ҩ�+h����CO���Ɔ��B�����Hq7�\��0N��I���0kQ�G��r�J^�1�9��L�0���Qj�+��cX���Q_M�ń�R���[��՞��Kk�      o   �  x����n�0E��Wd_X����7
�M�D�p)*M��$�(Vb��6�{ȹsg`����.n�B���Go��;�v��@�Tֈp��� t�_�h�k�g�&�1�m�m�J���;���Ñ1�<+آ@c�肹���a�}WN4�}5��N髛(NP����ΨqH�Z�<�p$�"
���G�N��m� �rA�kDc�h���Sacs�!��j��ԍ?�K;J�L��C�����/�b������q!���n���)K22Ӏ,8uӚGKM�D����8�-���׀�( 3����-MM�2�$���d�3�п�]��?�H6��,^Wu��eQ�l��oRl��}p���*1� ��Z�=�0P�KH@~h0�3%,��o�TQ��r�2/'����HΘ��<��ƞ��������T���כ�͖?.��)THV��V<��?�$$��JX�tMt�RB#-�­VJ�G4�>��V��`�,^�F�$������:�M��3۹#�	T��d|ӕ�/�!��񓘒uE�"zZ�l%���(֜UD��N�i�������tk���+D��T�X�p�Q�L�F0�䄐k5�g�GR��\��>����K��c޷.52�8�n؟]j���s_��Қ���5-g��j�5��al���L;O�5I�JL�̈́_�v��٠2�      �   �  x���I��H�u�)j߲�c<1%��j	1�����;�ԃ:o�'xҧ����z��`%K��wM�Q/2�M��F���T;}�Ì7��z<$ޑ
u�4[O��7������M��B@��î��٪�x#�S�Y�o��m`���0���&��,��'�T<Z�"'x����^W�]g�G�Q��t�_�Qt�N���D�R�<����W}뮜�<�ff+6�c=��s?b��n�"�*��F7�.���o ���< <�nK����K����7��uY^r�]�����*��p'/���y������0*T���!)W�5�_4�%��<@[
a�!��M���D��q��ДI�eL�yY���Ԫ���"穔�U���wn�1���K�N���ܵ�QeUt���-A��3՛�d���C��b$,d:5k���{֡j��Qr��Z���>{������ڪb�ߺ�AU]pʿ�<�m9����>P��
�W��p�8�;���+���&񊿧QM<u��Fϣ��l��ɚ�úJ�~��3G�ǻ�kAht�3�<�x��1�i#�����V�֡�@�DC��*��H�0z
�.�\5�m���+��6�UjJL�.S?!w����]��2~v"X�PE�{,v�5����H�u�ڑ-����`[Q]����\U�)��;���TP��xaӜ3�+�@��Pd�J�nI|HM����>�~]0/<6�l����V�C�*G5���W��
^e���m�7��b�X�[�� @�F�@.��`�yiǘ��C:t\����������j~N%���z�ϸO�w�"\n��Wa�7=G\^X	 �?l�>�ZH�37ג�V!9��� ���9��S���7�֟mM3��DF%v�(%���^4	R�^�~#9�y�ăt�M��d��MR�Rt;G�HD�iY��J,�ʺ�$����K�{��L�ي�,�N�=U��K��_��!�E P�7����Y��p���c��g��[�u�/BMP��sw+��s��|ض�Μ4�XC[u���"�x����,�=�h�Q[�5K�¦�� ���7"���c�P�}��9ҵ�-b�`.�ś�k�oPJ�����ɍ�����yԘ�~!�yh4�eK8��(j����¯�1m酢Xo�9���E�[�PY��f��Ҍ�����3�qk�;�4�5�S~���\��#�a�#�A��������I����ϟ�v:�      �   Z   x�3�L.JM�,Q�K�MU0�41651�461!.#N׊�܂�Tg�*Nc=SNC#������b.c��&��M�K��6�/m�_��t� �
R�      �   M   x�]��	�0kk
��᥏�Y��QC�ǝ5��#�݊�@� 7�=�x���ķBS���`P�u����      �      x������ � �      �   6   x�3�,I�(Q(N�H�M-.�4202�50�50T04�25�26�60�4����� *U
�      �      x������ � �      �      x������ � �      y   �  x����N�@F��Sp�;Ӻ;���mb"�(Z
11姀mAJ���1ƨ's5�/9'�^��4���":r��A�屪�b?�k�4�V��Y�B��FA(.Tv�����w�����..[�a�,��J� � Uj��M��� L��Ƕ����d����z���Ĝ����G�:�Mɐ(u�>6Ң�x�u�~1?�J/��g��U^�I���*�ׯ�J-c��7�]�_yΞ�-��h�6x�)��e�� *S���8Q����ʦ��hJA��o�������ȭ��C�4yn�vѓ��>�m�}\�`���NT�V���U5��m�&�ٸ\�O~aZ��F�	3�E%�G��#$
i}i�s�hYbSi3erI-���G�T*�ʳ��      {      x������ � �      }      x������ � �     