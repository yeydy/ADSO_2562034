PGDMP     !    	                {            ventas    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16600    ventas    DATABASE     |   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE ventas;
                postgres    false            Q           1247    16619    pago    TYPE     ?   CREATE TYPE public.pago AS ENUM (
    'pago',
    'no pago'
);
    DROP TYPE public.pago;
       public          postgres    false            K           1247    16609    rol    TYPE     ;   CREATE TYPE public.rol AS ENUM (
    'usu',
    'admin'
);
    DROP TYPE public.rol;
       public          postgres    false            �            1259    16601    book    TABLE     b  CREATE TABLE public.book (
    id integer NOT NULL,
    title character varying(250),
    slug character varying(250),
    description character varying(500),
    price double precision,
    cover_path character varying(250),
    file_path character varying(250),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16628 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id_salitem integer NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    16623    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id_salord integer NOT NULL,
    customer_id integer,
    total double precision,
    payment_status public.pago,
    created_at timestamp without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false    849            �            1259    16613    usua    TABLE     \  CREATE TABLE public.usua (
    id_user integer NOT NULL,
    firstname character varying(45),
    lastname character varying(45),
    fullname character varying(100),
    email character varying(45),
    password character varying(250),
    role public.rol,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.usua;
       public         heap    postgres    false    843                      0    16601    book 
   TABLE DATA           r   COPY public.book (id, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    214   j                 0    16628 
   sales_item 
   TABLE DATA           U   COPY public.sales_item (id_salitem, book_id, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    217   �                 0    16623    sales_order 
   TABLE DATA           `   COPY public.sales_order (id_salord, customer_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    216   �                 0    16613    usua 
   TABLE DATA           u   COPY public.usua (id_user, firstname, lastname, fullname, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    215   D       w           2606    16607    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    214            }           2606    16632    sales_item sales_item_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id_salitem);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    217            {           2606    16627    sales_order sales_order_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id_salord);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    216            y           2606    16617    usua usua_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.usua
    ADD CONSTRAINT usua_pkey PRIMARY KEY (id_user);
 8   ALTER TABLE ONLY public.usua DROP CONSTRAINT usua_pkey;
       public            postgres    false    215            ~           2606    16638    book fk_booksales    FK CONSTRAINT     x   ALTER TABLE ONLY public.book
    ADD CONSTRAINT fk_booksales FOREIGN KEY (id) REFERENCES public.sales_item(id_salitem);
 ;   ALTER TABLE ONLY public.book DROP CONSTRAINT fk_booksales;
       public          postgres    false    217    214    3197                       2606    16633    sales_order fk_sal_ord    FK CONSTRAINT     {   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_sal_ord FOREIGN KEY (id_salord) REFERENCES public.usua(id_user);
 @   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fk_sal_ord;
       public          postgres    false    215    3193    216            �           2606    16643    sales_item fk_salesiteord    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_salesiteord FOREIGN KEY (id_salitem) REFERENCES public.sales_order(id_salord);
 C   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_salesiteord;
       public          postgres    false    3195    216    217                 x���ͮ�&���Sx��g����F����*E��2C�2dr��st�'��I�@2In��J�m8�9�/��{W-���]l
8�=���Z�Z��)X���m}"�?���7�m�RZ�J����'���X]�uO�h�#:��!�H9�}Q����oY&�����q�{�V�?��=�	|qv\G�Hؗ$|��0I8�x�1�pN1� ���m��SX��=����6o���v��#�zt!U?y�Jջ5�<l�EYk��^��8�f(��6�h�3�(3���ɮ��0�t�cbfcש^���=y�J�v�M���o;��L+zƇn�u��YN�+�^��+�n�FXS�uWr"K�￐�s�N{����2:����~ ���΁���~�'����}p���ጽ��)��yBu�ӱ�mB��lk�.f���8�Gg'Z����=e���9��,C�>rq)�+�.7��.�ߊ^��A�Nԓ��+_��h�hRT	:t}/�b\J\�*�U�;����A����Xs�6e�_���XW?����>Y��t���K��=�I.[34��Yr.Y�������5���R�]J�Pl�BL����lg!�f�r]���u��}����[�l�Z�Yʦ]�Y�r��w�h\����ޅ3n�Nݚs� >ă^Q������i!�\���\�٣�rN���5s��B�#%H)��r;�X��^�z�I��EN��")��v��T�XB(�T_�4%a�py?�pŝ�n�{��n� =���         3   x�ʹ 0���&�m����(���4A���	-��}�ٓ��cf�tz         j   x�U�1�@������"�7�H��Tt$����C���ف� ��q@Tx�ck�AVLX���hBgz��&I$��kE�b�dA�����t��/�s}�m$G��ofv�H"@         '  x�m��n�0Eg�+�D�=c��ڭKU)K���kA����D��R:�޳߇��5��V�Ս�e*�Q���Sݲk6߾��O���В�u�  L���I��(�kE�0�0 I<wW��U�1�%�~Ȍ^����u�>eڻ�F��t��"*��;�U���UWV�GUs��Ƒ�ڕ�|`��'�����?�ȲǙ41���P�����QMq��6߮,'m�\��^TW!(\��]�*��J#>B�W�s�穨��ޝ3��l�S����?4�F=*�g��FJ����/     