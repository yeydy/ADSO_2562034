PGDMP         .                {            ventas    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24824    ventas    DATABASE     z   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE ventas;
                postgres    false            �            1259    24825    book    TABLE     e  CREATE TABLE public.book (
    book_id integer NOT NULL,
    title character varying(250),
    slug character varying(250),
    description character varying(60),
    price double precision,
    cover_path character varying(250),
    file_path character varying(250),
    created_at timestamp without time zone,
    update_at timestamp without time zone
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    24837 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    item_id integer NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    24842    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    order_id integer NOT NULL,
    user_id integer,
    total double precision,
    payment_status integer,
    created_at timestamp without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    24832    usuario    TABLE     [  CREATE TABLE public.usuario (
    user_id integer NOT NULL,
    firtsname character varying(45),
    lastname character varying(45),
    fullname character varying(100),
    email character varying(45),
    password character varying(250),
    role integer,
    created_at timestamp without time zone,
    update_at timestamp without time zone
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            	          0    24825    book 
   TABLE DATA           v   COPY public.book (book_id, title, slug, description, price, cover_path, file_path, created_at, update_at) FROM stdin;
    public          postgres    false    214   +                 0    24837 
   sales_item 
   TABLE DATA           R   COPY public.sales_item (item_id, book_id, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    216   �                 0    24842    sales_order 
   TABLE DATA           [   COPY public.sales_order (order_id, user_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    217   )       
          0    24832    usuario 
   TABLE DATA           w   COPY public.usuario (user_id, firtsname, lastname, fullname, email, password, role, created_at, update_at) FROM stdin;
    public          postgres    false    215   {       q           2606    24831    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    214            u           2606    24841    sales_item sales_item_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (item_id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    216            w           2606    24846    sales_order sales_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (order_id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    217            s           2606    24836    usuario usuario_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    215            x           2606    24847    sales_item fk_sales_item_book    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_sales_item_book FOREIGN KEY (book_id) REFERENCES public.book(book_id);
 G   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_sales_item_book;
       public          postgres    false    216    3185    214            y           2606    24852 $   sales_item fk_sales_item_sales_order    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_sales_item_sales_order FOREIGN KEY (order_id) REFERENCES public.sales_order(order_id);
 N   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_sales_item_sales_order;
       public          postgres    false    216    3191    217            z           2606    24857 "   sales_order fk_sales_order_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_sales_order_usuario FOREIGN KEY (user_id) REFERENCES public.usuario(user_id);
 L   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fk_sales_order_usuario;
       public          postgres    false    215    217    3187            	   �   x����
� E��W�->[ȷt36BFA�M�>SLҦ��"��93�=B\Nn�()�e���
:S�0zz@	�B��RtZtTo�zfBS����ԧJW;�Z�����}�u�}�g��l��7�>4��
�b�R-�ò��!�qi�Eb������c3b�b         ;   x�eȱ�0��T�Iz��:�������P�r�Ѝ��~H�G���=h�{WD���Q         B   x��ʱ�0��U�0�/a�U��C�࢕�H~a�wzLj2�X�"M��G��G'v��V=���0� y      
   �   x���M� F�p�^�� ���<�����PM��7J��{���O��ߐ({���Q��d�j�����ť��8F8p�k�o� f��&ˍ��T0�q`����?j]0�;�Z��5�V�K0������b�-yت��Q#Un�����Z     