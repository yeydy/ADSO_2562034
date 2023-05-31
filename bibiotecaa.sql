PGDMP     "                    {            bibliotecaa    13.11    13.11     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17206    bibliotecaa    DATABASE     j   CREATE DATABASE bibliotecaa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE bibliotecaa;
                postgres    false                        2615    17207    bibliotecaa    SCHEMA        CREATE SCHEMA bibliotecaa;
    DROP SCHEMA bibliotecaa;
                postgres    false            �            1259    17208    book    TABLE     0  CREATE TABLE public.book (
    id_book integer NOT NULL,
    title character varying(250),
    slug character varying(250),
    description character varying(100),
    price numeric,
    cover_path character varying(250),
    file_path character varying(250),
    created_at date,
    updated_at date
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    17224 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id_sales_item integer NOT NULL,
    id_book integer,
    id_sales_order integer,
    price numeric,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    17232    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id_sales_order integer NOT NULL,
    id_usser integer,
    total double precision,
    payment_status character varying(50),
    created_at date
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    17216    usser    TABLE     9  CREATE TABLE public.usser (
    id_usser integer NOT NULL,
    firstnam character varying(45),
    lastname character varying(45),
    fullname character varying(100),
    email character varying(45),
    password character varying(250),
    role character varying(50),
    create_at date,
    updated_at date
);
    DROP TABLE public.usser;
       public         heap    postgres    false            �          0    17208    book 
   TABLE DATA           w   COPY public.book (id_book, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    201   �       �          0    17224 
   sales_item 
   TABLE DATA           ^   COPY public.sales_item (id_sales_item, id_book, id_sales_order, price, downs_ava) FROM stdin;
    public          postgres    false    203   �       �          0    17232    sales_order 
   TABLE DATA           b   COPY public.sales_order (id_sales_order, id_usser, total, payment_status, created_at) FROM stdin;
    public          postgres    false    204   �       �          0    17216    usser 
   TABLE DATA           u   COPY public.usser (id_usser, firstnam, lastname, fullname, email, password, role, create_at, updated_at) FROM stdin;
    public          postgres    false    202   o       1           2606    17215    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id_book);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    201            5           2606    17231    sales_item sales_item_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id_sales_item);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    203            7           2606    17236    sales_order sales_order_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id_sales_order);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    204            3           2606    17223    usser usser_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usser
    ADD CONSTRAINT usser_pkey PRIMARY KEY (id_usser);
 :   ALTER TABLE ONLY public.usser DROP CONSTRAINT usser_pkey;
       public            postgres    false    202            8           2606    17237 "   sales_item sales_item_id_book_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_id_book_fkey FOREIGN KEY (id_book) REFERENCES public.book(id_book);
 L   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_id_book_fkey;
       public          postgres    false    2865    201    203            9           2606    17242 )   sales_item sales_item_id_sales_order_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_id_sales_order_fkey FOREIGN KEY (id_sales_order) REFERENCES public.sales_order(id_sales_order);
 S   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_id_sales_order_fkey;
       public          postgres    false    2871    203    204            :           2606    17247 %   sales_order sales_order_id_usser_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_id_usser_fkey FOREIGN KEY (id_usser) REFERENCES public.usser(id_usser);
 O   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_id_usser_fkey;
       public          postgres    false    204    2867    202            �   �  x�u�;��0�k�8��&��U�L\m�I�.3�o�-)�ȝ��|����+��"��'���>Fwၠ%���7愞�%�Qω�1�&�+�a�b��W�!1��'XU��1F��R\K�znV�T{��f�K���g�i��y��=+[��l�݈Y��Tږ�F��>�и�,�^z	z���������$�DB�� �a��E�}"�A���	qb�7���_��O3'�c�k�ˬV[�7e�U"-�.��g�I��9�/ҏc')��7�e1:��^J���K4Qsj��z����;m��[A�UVR�v�Ux�H�̎~8�x�&l13�,�~`8��+�8�k�(`�r��T]�)@�0��t9b+���x����MV�hs�S��)77$�sʺOf�+��~�f� ���VV��Ni@��H=�Ii�{��-�:��_�ԧ|Sp:Q�k֔٬�ro�_��(�"8C      �   @   x�%���0�wO0hg�s!�8�̳��=WD�P�8�8�T.�:5���S��������3�      �   d   x�E�;�@Ѹ�.������	��������JE��l�c{�p��!tĉ(��s븴IO��Oٔ�>˜YX��tSK���b��.�J;��ED~��      �   �   x�]�An� E��)|���6�z�l��*$�D�FjO��M���񇴡&��T�r��н�$��\}\.SZ�3)_���D�GgQj$�Xs����׸����n�GA�y݈�"��$�w���QP�6g%�S�]��Y���&BiPQ��HK��a��8Cߡ��k�0�K�)�������R��r��Sq��7��m��r��mk?+2�Y!����?~��zB<��"     