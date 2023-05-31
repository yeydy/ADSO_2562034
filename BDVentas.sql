PGDMP     ,                    {            ventas    14.8    14.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16721    ventas    DATABASE     e   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.utf8';
    DROP DATABASE ventas;
                postgres    false            �            1259    16722    book    TABLE     B  CREATE TABLE public.book (
    book_id smallint NOT NULL,
    title character varying(250),
    slug character varying(250),
    description character varying(500),
    price double precision,
    cover_path character varying(250),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16751 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    item_id smallint NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava smallint
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    16741    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    order_id smallint NOT NULL,
    customer_id integer,
    total double precision,
    payment_status character varying(300),
    created_at timestamp without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    16729    usuario    TABLE     o  CREATE TABLE public.usuario (
    customer_id smallint NOT NULL,
    firstname character varying(45),
    lastname character varying(45),
    fullname character varying(100),
    email character varying(45),
    password character varying(250),
    role character varying(60),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �          0    16722    book 
   TABLE DATA           l   COPY public.book (book_id, title, slug, description, price, cover_path, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �                  0    16751 
   sales_item 
   TABLE DATA           R   COPY public.sales_item (item_id, book_id, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    212   �       �          0    16741    sales_order 
   TABLE DATA           _   COPY public.sales_order (order_id, customer_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    211   P       �          0    16729    usuario 
   TABLE DATA           |   COPY public.usuario (customer_id, firstname, lastname, fullname, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    210   �       h           2606    16728    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    209            n           2606    16755    sales_item sales_item_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (item_id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    212            l           2606    16745    sales_order sales_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (order_id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    211            j           2606    16735    usuario usuario_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (customer_id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    210            p           2606    16756    sales_item fk_item_book    FK CONSTRAINT     z   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_item_book FOREIGN KEY (book_id) REFERENCES public.book(book_id);
 A   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_item_book;
       public          postgres    false    3176    212    209            q           2606    16761    sales_item fk_item_order    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_item_order FOREIGN KEY (order_id) REFERENCES public.sales_order(order_id);
 B   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_item_order;
       public          postgres    false    211    3180    212            o           2606    16746    sales_order fk_order_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_order_user FOREIGN KEY (customer_id) REFERENCES public.usuario(customer_id);
 C   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fk_order_user;
       public          postgres    false    3178    210    211            �     x�]��N�0Dϛ��p�In��*�"��ـ�c'���Y�P�F>�ov������>�����$�
:ƞ��ړ`Z1�M�s���#�A�4Gݩ��?|T� ��쒗l/���TՆV����渔)Hx}bEE5����xh6K����z�kd��Iq�TϚ��Z�6������23
L�Y��x�-�aqz�N�qƎ{�,�쩬�ʣ�d.TӢ�6����"x����e�z��u����Oyh��p�?�3�z��a��9��ś�(�U��          G   x�]�� !�3��hV`�u�cL4rc�)H�� �92�:�y0_���	S�J�}a4By_�OU�A�      �   h   x�}�1� �N�j~�������C�� ��_�+8�e�q�:"�� /��̚�-���&�/N��F2��¡e� �R�+������&����G&M      �   �   x�e��n� ���)x�� �t�ڭc�.(����I��k#�Ʃt�7��%���&����[�Cw\O�<�1Ԝ�-�!����4��´�� ��H�_9�	b�	��^�CeQ����Et�'6��K~7\�99�W�w����K�Q�4fsJ۶�~����;��s�G��^��>�5�C�nXM�HQ�Z��#��l�11L����̟ruɶ��m�N��u��`a��}�c��U     