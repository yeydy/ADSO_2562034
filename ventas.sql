PGDMP     !    "                {            ventas    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16746    ventas    DATABASE     |   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE ventas;
                postgres    false            T           1247    16776    payment_status    TYPE     `   CREATE TYPE public.payment_status AS ENUM (
    'pagado',
    'pendiente',
    'reembolsado'
);
 !   DROP TYPE public.payment_status;
       public          postgres    false            K           1247    16760    role    TYPE     ?   CREATE TYPE public.role AS ENUM (
    'admin',
    'client'
);
    DROP TYPE public.role;
       public          postgres    false            �            1259    16752    book    TABLE     !  CREATE TABLE public.book (
    id integer NOT NULL,
    title character varying(250),
    slug character varying(250),
    description text,
    price double precision,
    cover_path character varying(250),
    file_path character varying(250),
    created_at date,
    update_at date
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16770 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    idsi integer NOT NULL,
    id integer,
    idso integer,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    16783    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    idso integer NOT NULL,
    iduser integer,
    total double precision,
    payment_status public.payment_status,
    created_at date
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false    852            �            1259    16765    users    TABLE     /  CREATE TABLE public.users (
    iduser integer NOT NULL,
    firstname character varying(45),
    lastname character varying(45),
    fullname character varying(100),
    email character varying(45),
    password character varying(250),
    role public.role,
    created_at date,
    updated_at date
);
    DROP TABLE public.users;
       public         heap    postgres    false    843                      0    16752    book 
   TABLE DATA           q   COPY public.book (id, title, slug, description, price, cover_path, file_path, created_at, update_at) FROM stdin;
    public          postgres    false    214   ;                 0    16770 
   sales_item 
   TABLE DATA           F   COPY public.sales_item (idsi, id, idso, price, downs_ava) FROM stdin;
    public          postgres    false    216   �                 0    16783    sales_order 
   TABLE DATA           V   COPY public.sales_order (idso, iduser, total, payment_status, created_at) FROM stdin;
    public          postgres    false    217   =                 0    16765    users 
   TABLE DATA           u   COPY public.users (iduser, firstname, lastname, fullname, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    215   �       w           2606    16758    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    214            {           2606    16774    sales_item sales_item_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (idsi);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    216            }           2606    16787    sales_order sales_order_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (idso);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    217            y           2606    16769    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (iduser);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            ~           2606    16798    sales_item fk_sales_item_book    FK CONSTRAINT     v   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_sales_item_book FOREIGN KEY (id) REFERENCES public.book(id);
 G   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_sales_item_book;
       public          postgres    false    3191    214    216                       2606    16793 $   sales_item fk_sales_item_sales_order    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_sales_item_sales_order FOREIGN KEY (idso) REFERENCES public.sales_order(idso);
 N   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_sales_item_sales_order;
       public          postgres    false    3197    216    217            �           2606    16788     sales_order fk_sales_order_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_sales_order_users FOREIGN KEY (iduser) REFERENCES public.users(iduser);
 J   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fk_sales_order_users;
       public          postgres    false    217    215    3193               �  x����n�F����؛��˃LJr��p7E�M��Q .��:�]z��>G��<�%O�Y�v��) q����)�y�H�Ұk��>���8Mp2��d`��6T�n���G� �uB�,����>���`���������2/��x�C:�1ؠ�Ҥ<J���E��v7xl��u�v���
�g���w7/�����9z-~��s�����]�V�������x����ӣ��������������>��Rc��6��~�
w�RO����K��M�y��yI?���<_�"��a"B_[t�6ւƁ{��_����a�,΍tr�I��^��?:I�b(���0bmj��q4��c���-O��-�Aǥ"�`��ti�mNWS�|e�qy�g�2;y�L�\�n������G\�f<����2m�B�n�mH΍�!DU���Z�xm�Rq5�#�bUDBYD�9/
�2!���ԃl����)(	{��HKAy���@�ƽ��_l>yG��,�PK�>�f��9Hl�iQ�B��ZU	{�]��b���Ȋ���,�_���G��n��T��P���HK�S#GS[�$c�''p�gk߫�ms�VK�yM܊�� Ē���U%p�/���4�%�+�n1��	��6�*��"0H>u@ag��H'�2�)e���i
���)�M�L��F��Ѓ�w`���͊��cSt�`M&Ō*���n����5%�SG���u�
���Q�5�i�z�������cUSt�����e<u��I._P�F՘�%�X$��L#�L?ĺp?�c�V,��|a�����D:�*]/]��8ܠ��vS�@�,��Y�.�����훢�t�U���;)�߽�ߩ��mіo�w3�<9�|�CIJ?'�Ɗ5|+Y�Q�������u�X&�P���̏f�����#x         ?   x���� ��P��E0�"�A�F�99�IŅj�Q�xws��;�CT�$�_�af?!�&         n   x�M�A
�P�ur��$���wqSiA[Q�It �y%3��c���FG��-�H���]��>T�킱��5�X�k��(v��:{r�����v{}����t`�j"d         �   x�]��n� ������i
7K}�^�M�U��b7u��]l'u�8̌��DC� ��&�:?�^����3:
�6�5:pv�6�O#��F*�g���z�+D�\� ��ی�>��y|��Ts�'Z!�$�x
KŃ]C�� ����׼k\�%�CU'���3��2�>R���;}�h�[B2�Xp]��ey���Y���y>�o�O#ڇ��45�k9_p	���V�k��(]M�~�����     