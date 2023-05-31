PGDMP         &                {            libreria    14.8    14.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    libreria    DATABASE     g   CREATE DATABASE libreria WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE libreria;
                postgres    false            �            1259    24577    book    TABLE       CREATE TABLE public.book (
    id integer NOT NULL,
    title character(250),
    slug character(250),
    price double precision,
    cover_path character(250),
    file_path character(250),
    created_at timestamp without time zone,
    update_at timestamp without time zone
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    24584 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id integer NOT NULL,
    book_id integer,
    price double precision,
    downs_ava integer,
    order_id integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    24589    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id integer NOT NULL,
    customer_id integer,
    total double precision,
    payment_status character(30),
    created_at timestamp without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    24594    use    TABLE     0  CREATE TABLE public.use (
    id integer NOT NULL,
    firstname character(45),
    lastname character(45),
    fullname character(100),
    email character(45),
    password character(250),
    role character(45),
    created_at timestamp without time zone,
    update_at timestamp without time zone
);
    DROP TABLE public.use;
       public         heap    postgres    false            �          0    24577    book 
   TABLE DATA           d   COPY public.book (id, title, slug, price, cover_path, file_path, created_at, update_at) FROM stdin;
    public          postgres    false    209   �       �          0    24584 
   sales_item 
   TABLE DATA           M   COPY public.sales_item (id, book_id, price, downs_ava, order_id) FROM stdin;
    public          postgres    false    210          �          0    24589    sales_order 
   TABLE DATA           Y   COPY public.sales_order (id, customer_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    211   M                  0    24594    use 
   TABLE DATA           n   COPY public.use (id, firstname, lastname, fullname, email, password, role, created_at, update_at) FROM stdin;
    public          postgres    false    212   �       h           2606    24583    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    209            j           2606    24588    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    210            l           2606    24593    sales_order sales_order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    211            n           2606    24600    use use_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.use
    ADD CONSTRAINT use_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.use DROP CONSTRAINT use_pkey;
       public            postgres    false    212            o           2606    24601    sales_item fk_book_id    FK CONSTRAINT     s   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES public.book(id);
 ?   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_book_id;
       public          postgres    false    3176    210    209            p           2606    24606    sales_item fk_order_id    FK CONSTRAINT     |   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES public.sales_order(id);
 @   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_order_id;
       public          postgres    false    3180    210    211            q           2606    24620    sales_order fkcustomer_id    FK CONSTRAINT     z   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fkcustomer_id FOREIGN KEY (customer_id) REFERENCES public.use(id);
 C   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fkcustomer_id;
       public          postgres    false    212    3182    211            �     x���An�0�u8�/��q`8K7h&HHFa�EOߘ���x����/�';F��4���>>()j�b�.!�Q]�gH�ED��1����g���k4`�C>��4�6-���w1�6��X�a쥻��a0x� �B$,e4`���epkm,������*�0�� ^)Y�ڟ0���0䑁~a�:O��h�����5�6���ҽM�0��"�1߻D��Ѧ�ahy���'CH�6��G�d��"a��ʫD���?v�~`�x����      �   8   x����0��l1��:�b��1Tst8�॔$�d1*�lV���q�~�~e�      �   x   x��α�0���B0P�bs�4�R���K�}1j�&�ؾ{�ͨ��f=�(.&|D�p�k�G�4�!������)��^�i˔��ОPWP�&�y!$����q�2*-s��*�\5N3�          I  x��Kj�0D��)|ݒ�]� �[��=N ��Ir��mM�&Lka�bj)���(�p��)1w�n���h�Ht��m����Lÿn��$'��]s�f�[��Ri�@V���J��,Ѻ҅�Z\ݲ.����5}����h�P��1@d�ivX�s+�r�"�"$�� �Ȉ~�~�sW��wG�Dk?B7��(�rnE���L�����b�!�	*�����nl�Q�hё�� ̞?2��Ӣ u�G��mTY_@
M���K��T����ۉ�wY�Ҭ#�}�5�{$���!��$��&�|�h"��!� z�H) ���     