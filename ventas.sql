PGDMP                         {            ventas    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17519    ventas    DATABASE     |   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE ventas;
                postgres    false            �            1259    17541    articulo_ventas    TABLE     �   CREATE TABLE public.articulo_ventas (
    id integer NOT NULL,
    id_libro integer,
    id_pedido integer,
    precio double precision,
    downs_ava integer
);
 #   DROP TABLE public.articulo_ventas;
       public         heap    postgres    false            �            1259    17520    libro    TABLE     l  CREATE TABLE public.libro (
    id integer NOT NULL,
    titulo character varying(250),
    sludg character varying(250),
    descripcion character varying(250),
    precio double precision,
    cover_path character varying(250),
    ruta_archivo character varying(250),
    creado_en timestamp without time zone,
    actualizado_en timestamp without time zone
);
    DROP TABLE public.libro;
       public         heap    postgres    false            �            1259    17534    ordenes_ventas    TABLE     �   CREATE TABLE public.ordenes_ventas (
    id integer NOT NULL,
    id_cliente integer,
    total double precision,
    estado_pago character varying,
    creado_en timestamp without time zone
);
 "   DROP TABLE public.ordenes_ventas;
       public         heap    postgres    false            �            1259    17527    usuario    TABLE     y  CREATE TABLE public.usuario (
    id integer NOT NULL,
    nombre character varying(45),
    apellido character varying(45),
    nombre_completo character varying(100),
    correo_electronico character varying(45),
    "contrase¥a" character varying(250),
    rol character varying,
    creado_en timestamp without time zone,
    actualizado_en timestamp without time zone
);
    DROP TABLE public.usuario;
       public         heap    postgres    false                      0    17541    articulo_ventas 
   TABLE DATA           U   COPY public.articulo_ventas (id, id_libro, id_pedido, precio, downs_ava) FROM stdin;
    public          postgres    false    217   �       	          0    17520    libro 
   TABLE DATA           |   COPY public.libro (id, titulo, sludg, descripcion, precio, cover_path, ruta_archivo, creado_en, actualizado_en) FROM stdin;
    public          postgres    false    214   �                 0    17534    ordenes_ventas 
   TABLE DATA           W   COPY public.ordenes_ventas (id, id_cliente, total, estado_pago, creado_en) FROM stdin;
    public          postgres    false    216   �       
          0    17527    usuario 
   TABLE DATA           �   COPY public.usuario (id, nombre, apellido, nombre_completo, correo_electronico, "contrase¥a", rol, creado_en, actualizado_en) FROM stdin;
    public          postgres    false    215   D       w           2606    17545 $   articulo_ventas articulo_ventas_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.articulo_ventas
    ADD CONSTRAINT articulo_ventas_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.articulo_ventas DROP CONSTRAINT articulo_ventas_pkey;
       public            postgres    false    217            q           2606    17526    libro libro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.libro DROP CONSTRAINT libro_pkey;
       public            postgres    false    214            u           2606    17540 "   ordenes_ventas ordenes_ventas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ordenes_ventas
    ADD CONSTRAINT ordenes_ventas_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ordenes_ventas DROP CONSTRAINT ordenes_ventas_pkey;
       public            postgres    false    216            s           2606    17533    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    215            z           2606    17546 )   articulo_ventas fk_articulo_ventas_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.articulo_ventas
    ADD CONSTRAINT fk_articulo_ventas_pedido FOREIGN KEY (id_pedido) REFERENCES public.ordenes_ventas(id);
 S   ALTER TABLE ONLY public.articulo_ventas DROP CONSTRAINT fk_articulo_ventas_pedido;
       public          postgres    false    216    3189    217            x           2606    17576    libro fk_libro    FK CONSTRAINT     r   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT fk_libro FOREIGN KEY (id) REFERENCES public.articulo_ventas(id);
 8   ALTER TABLE ONLY public.libro DROP CONSTRAINT fk_libro;
       public          postgres    false    214    217    3191            y           2606    17551 (   ordenes_ventas fk_ordenes_ventas_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ordenes_ventas
    ADD CONSTRAINT fk_ordenes_ventas_cliente FOREIGN KEY (id_cliente) REFERENCES public.usuario(id);
 R   ALTER TABLE ONLY public.ordenes_ventas DROP CONSTRAINT fk_ordenes_ventas_cliente;
       public          postgres    false    216    215    3187               D   x�]��	  �o&N�5���程 ɏ��!b�C{d5��������(��^ 	���MU~=�      	   �  x�m�M��0���)�6����?��Ց:�d$;�܆�8�OF�J2N�ѓ��{O�e-�{�~�����"t��A��F���X��0��Dn���7ֻ������h�����ќ||e�>����A4�nJ�)�k��n�Xc!�۫VԲ��!8�����-i�B�Z��X^������C7�~0���ţ��ώ�˫�#9==c����?QhS�6um�]W,4���O�1�F�<'�nP�͊,�azv��8�'P<x�#���, �n�� ��g�bs��C��e��i̹�	FƧ(�q��5��,�	����97��x��/	^��j�[�ܞ!��67����ay	���;s�ҳ�|:Ad�|>"|ˇ>_4���v#7�l I��~��K���-g���@w���Jm�B!?�B�m�1��u���˃�o�i�}U�?��!o         h   x�}�1� �N�j~�������C�� ��_�+8�e�q�:"�� /��̚�-���&�/N��F2��¡e� �R�+������&����G&M      
   �   x�m�Mn� F��)|��ρ�,u�U��QJ�!J�Er��ز�U��C��7��3x���w�`cww��6�����ևS�zP��gh�wqp�e�2U!~�31I�L9��0��'����n���2��t$|E|'b6�.���K�v�[�6�TB�Z�2f��>[��3�}+�n���ពT�Rs��bb�^�B���~{*3SzBp��Mr��X����zv�a�_��Q��f��������~     