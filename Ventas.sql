CREATE DATABASE instructores;
USE instructores;

CREATE TABLE coordinador(
cedula_coordinador INT PRIMARY KEY,
nombre VARCHAR(20),
apellido VARCHAR(20),
telefono VARCHAR(15),
email VARCHAR(100)
);

INSERT INTO coordinador(cedula_coordinador,nombre,apellido,telefono,email)
VALUES (1064289148,'joan','soto',312023012,'masorey1997@gmail.com');
INSERT INTO coordinador(cedula_coordinador,nombre,apellido,telefono,email)
VALUES (1074287452,'sebastian','soto',3425100312,'masorey1997@gmail.com');
INSERT INTO coordinador(cedula_coordinador,nombre,apellido,telefono,email)
VALUES (1092176374,'YULIETH','soto',3102304120,'masorey1997@gmail.com');
INSERT INTO coordinador(cedula_coordinador,nombre,apellido,telefono,email)
VALUES (1093421748,'marlon','soto',3125154210,'masorey1997@gmail.com');
INSERT INTO coordinador(cedula_coordinador,nombre,apellido,telefono,email)
VALUES (1098324535,'yesid','soto',3210120329,'masorey1997@gmail.com');
SELECT * FROM coordinador;

CREATE TABLE tipo_contrato(
codigo_tipo_contrato INT PRIMARY KEY,
nombre VARCHAR(40)
);

INSERT INTO tipo_contrato(codigo_tipo_contrato,nombre)
VALUES (1001,'CONTRATO ESPECIALISTA EN SISTEMAS');
INSERT INTO tipo_contrato(codigo_tipo_contrato,nombre)
VALUES (1002,'CONTRATO VIGILANCIA');
INSERT INTO tipo_contrato(codigo_tipo_contrato,nombre)
VALUES (1003,'CONTRATO PARQUEADERO');
INSERT INTO tipo_contrato(codigo_tipo_contrato,nombre)
VALUES (1004,'CONTRATO INSTRUCTOR');
INSERT INTO tipo_contrato(codigo_tipo_contrato,nombre)
VALUES (1005,'CONTRATO CEDRUM');
SELECT * FROM tipo_contrato;

CREATE TABLE centro(
codigo_centro INT PRIMARY KEY,
nombre VARCHAR(20),
fecha DATE,
direccion VARCHAR(30)
);

INSERT INTO centro(codigo_centro,nombre,fecha,direccion)
VALUES (2001,'CIES','2022/07/12','AVENIDA 9 CALLE 9');
INSERT INTO centro(codigo_centro,nombre,fecha,direccion)
VALUES (2002,'AGROPECUARIA','2022/06/21','AVENIDA 6 CALLE 9');
INSERT INTO centro(codigo_centro,nombre,fecha,direccion)
VALUES (2003,'CEDRUM','2022/10/04','AVENIDA 11 CALLE 9');
INSERT INTO centro(codigo_centro,nombre,fecha,direccion)
VALUES (2004,'INDUSTRIA','2022/08/25','AVENIDA 11 CALLE 1');
INSERT INTO centro(codigo_centro,nombre,fecha,direccion)
VALUES (2005,'CALZADO','2022/04/29','AVENIDA 3 CALLE 21');
SELECT * FROM centro;

CREATE TABLE acta_inicio(
codigo_acta INT PRIMARY KEY,
fecha DATE,
descripcion TEXT
);

INSERT INTO acta_inicio(codigo_acta,fecha,descripcion)
VALUES (3001,'2022/04/21','NORMAS DEL CONTRATO');
INSERT INTO acta_inicio(codigo_acta,fecha,descripcion)
VALUES (3002,'2022/04/03','DURACION DEL CONTRATO');
INSERT INTO acta_inicio(codigo_acta,fecha,descripcion)
VALUES (3003,'2022/04/04','UTILIDAD DEL CONTRATO');
INSERT INTO acta_inicio(codigo_acta,fecha,descripcion)
VALUES (3004,'2022/04/09','ACUERDOS DEL CONTRATO');
INSERT INTO acta_inicio(codigo_acta,fecha,descripcion)
VALUES (3005,'2022/04/28','CENTRO DE FORMACION AFILIADO AL CONTRATO');
SELECT * FROM acta_inicio;

CREATE TABLE ambiente(
codigo_ambiente INT PRIMARY KEY,
nombre VARCHAR(20)
);

INSERT INTO ambiente(codigo_ambiente,nombre)
VALUES (101,'bibliblioteca');
INSERT INTO ambiente(codigo_ambiente,nombre)
VALUES (102,'bibliblioteca');
INSERT INTO ambiente(codigo_ambiente,nombre)
VALUES (103,'bibliblioteca');
INSERT INTO ambiente(codigo_ambiente,nombre)
VALUES (104,'bibliblioteca');
INSERT INTO ambiente(codigo_ambiente,nombre)
VALUES (105,'bibliblioteca');
SELECT * FROM ambiente;

CREATE TABLE horario_ambiente(
codigo_horario_ambiente INT PRIMARY KEY,
hora_inicio TIME,
hora_fin TIME,
fecha DATE
);

INSERT INTO horario_ambiente(codigo_horario_ambiente,hora_inicio,hora_fin,fecha)
VALUES (101,'9:00','14:00','2022/04/10');
INSERT INTO horario_ambiente(codigo_horario_ambiente,hora_inicio,hora_fin,fecha)
VALUES (102,'6:00','11:00','2022/04/15');
INSERT INTO horario_ambiente(codigo_horario_ambiente,hora_inicio,hora_fin,fecha)
VALUES (103,'8:00','12:00','2022/04/06');
INSERT INTO horario_ambiente(codigo_horario_ambiente,hora_inicio,hora_fin,fecha)
VALUES (104,'12:00','16:00','2022/04/20');
INSERT INTO horario_ambiente(codigo_horario_ambiente,hora_inicio,hora_fin,fecha)
VALUES (105,'9:00','13:00','2022/04/25');
SELECT * FROM horario_ambiente;

CREATE TABLE competencias(
codigo_competencias INT PRIMARY KEY,
nombre VARCHAR(30)
);

INSERT INTO competencias(codigo_competencias,nombre)
VALUES (11111,'NUMERO DECIMALES');
INSERT INTO competencias(codigo_competencias,nombre)
VALUES (22222,'LECTURA EN INGLES');
INSERT INTO competencias(codigo_competencias,nombre)
VALUES (33333,'INTEGRALES DIFERENCIALES');
INSERT INTO competencias(codigo_competencias,nombre)
VALUES (44444,'MULTIMEDIA');
INSERT INTO competencias(codigo_competencias,nombre)
VALUES (55555,'LOGICA PYTON');
SELECT * FROM competencias;

CREATE TABLE curso_complementario(
codigo_curso_complementario INT PRIMARY KEY,
nombre VARCHAR(20)
);

INSERT INTO curso_complementario(codigo_curso_complementario,nombre)
VALUES (11112,'HABILIDADES DEL SOFTWARE');
INSERT INTO curso_complementario(codigo_curso_complementario,nombre)
VALUES (22223,'MODELOS DEL SOFTWARE');
INSERT INTO curso_complementario(codigo_curso_complementario,nombre)
VALUES (33334,'JAVA PRINCIPIANTES');
INSERT INTO curso_complementario(codigo_curso_complementario,nombre)
VALUES (44445,'FRANSCH');
INSERT INTO curso_complementario(codigo_curso_complementario,nombre)
VALUES (55556,'MODELO SCRUM');
SELECT * FROM curso_complementario;

CREATE TABLE instructor(
cedula_instructor INT PRIMARY KEY,
nombre VARCHAR(20),
apellido VARCHAR(20),
telefono VARCHAR(15),
email VARCHAR(100),
direccion VARCHAR(50),
codigo_tipo_contrato INT,
codigo_centro INT,
FOREIGN KEY (codigo_tipo_contrato) REFERENCES tipo_contrato(codigo_tipo_contrato),
FOREIGN KEY (codigo_centro) REFERENCES centro(codigo_centro)
);

INSERT INTO instructor(cedula_instructor,nombre,apellido,telefono,email,direccion,codigo_tipo_contrato,codigo_centro)
VALUES (1098786532,'marlon','rey',3122030299,'marlon21@gmail.com','AVENIDA 5 CALLE 7',1001,2001);
INSERT INTO instructor(cedula_instructor,nombre,apellido,telefono,email,direccion,codigo_tipo_contrato,codigo_centro)
VALUES (1093233332,'ramon','rey',3124549089,'ramonrey@gmail.com','AVENIDA 2 CALLE 7',1002,2002);
INSERT INTO instructor(cedula_instructor,nombre,apellido,telefono,email,direccion,codigo_tipo_contrato,codigo_centro)
VALUES (1091988845,'KARLA','soto',3131111111,'karla23@gmail.com','AVENIDA 1 CALLE 2',1003,2003);
INSERT INTO instructor(cedula_instructor,nombre,apellido,telefono,email,direccion,codigo_tipo_contrato,codigo_centro)
VALUES (1091981121,'sebastian','zuares',3122222222,'sebastian2004@gmail.com','AVENIDA 7 CALLE 1',1004,2004);
INSERT INTO instructor(cedula_instructor,nombre,apellido,telefono,email,direccion,codigo_tipo_contrato,codigo_centro)
VALUES (1091948876,'JOAN','IGARZA',3133333333,'joan20@gmail.com','AVENIDA 3 CALLE 5 ',1005,2005);
SELECT * FROM instructor;

CREATE TABLE contrato(
codigo_contrato INT PRIMARY KEY,
valor VARCHAR(30),
fecha DATE,
tipo VARCHAR(30),
cedula_instructor INT,
FOREIGN KEY (cedula_instructor) REFERENCES instructor(cedula_instructor)
);

INSERT INTO contrato(codigo_contrato,valor,fecha,tipo,cedula_instructor)
VALUES (3001,2500000,'2022/09/10','CONTRATO LABORAL',1098786532);
INSERT INTO contrato(codigo_contrato,valor,fecha,tipo,cedula_instructor)
VALUES (3002,2500000,'2022/02/11','CONTRATO MERCANTIL',1093233332);
INSERT INTO contrato(codigo_contrato,valor,fecha,tipo,cedula_instructor)
VALUES (3003,2500000,'2022/03/12','CONTRATO PRIVADO',1091988845);
INSERT INTO contrato(codigo_contrato,valor,fecha,tipo,cedula_instructor)
VALUES (3004,2500000,'2022/04/13','CONTRATO PUBLICO',1091981121);
INSERT INTO contrato(codigo_contrato,valor,fecha,tipo,cedula_instructor)
VALUES (3005,2500000,'2022/05/14','CONTRATO LABORAL',1091948876);
SELECT * FROM contrato;

CREATE TABLE horario(
codigo_horario INT PRIMARY KEY,
fecha_inicio DATE,
fecha_fin DATE,
hora_inicio TIME,
hora_fin TIME,
cedula_instructor INT,
cedula_coordinador INT,
FOREIGN KEY (cedula_coordinador) REFERENCES coordinador (cedula_coordinador),
FOREIGN KEY (cedula_instructor) REFERENCES instructor (cedula_instructor)
);

INSERT INTO horario(codigo_horario,fecha_inicio,fecha_fin,hora_inicio,hora_fin,cedula_instructor,cedula_coordinador)
VALUES (2001,'2023/04/28','2023/04/28','9:00','18:00',1064289148,1098786532);
INSERT INTO horario(codigo_horario,fecha_inicio,fecha_fin,hora_inicio,hora_fin,cedula_instructor,cedula_coordinador)
VALUES (3002,'2022/06/09','2022/12/28','6:00','18:00',1074287452,1093233332);
INSERT INTO horario(codigo_horario,fecha_inicio,fecha_fin,hora_inicio,hora_fin,cedula_instructor,cedula_coordinador)
VALUES (3003,'2022/10/03','2023/06/28','6:00','20:00',1092176374,1091988845);
INSERT INTO horario(codigo_horario,fecha_inicio,fecha_fin,hora_inicio,hora_fin,cedula_instructor,cedula_coordinador)
VALUES (4004,'2023/01/02','2023/06/28','9:00','18:00',1093421748,1091981121);
INSERT INTO horario(codigo_horario,fecha_inicio,fecha_fin,hora_inicio,hora_fin,cedula_instructor,cedula_coordinador)
VALUES (5005,'2023/03/06','2023/03/28','6:00','21:00',1098324535,1091948876);
SELECT * FROM horario;

CREATE TABLE programas_impartidos(
codigo_programa_formacion INT,
cedula_instructor INT,
FOREIGN KEY (codigo_programa_formacion) REFERENCES programa_formacion(codigo_programa_formacion),
FOREIGN KEY (cedula_instructor) REFERENCES instructor(cedula_instructor)
);

INSERT INTO programas_impartidos(codigo_programa_formacion,cedula_instructor)
VALUES (111111,1098786532);
INSERT INTO programas_impartidos(codigo_programa_formacion,cedula_instructor)
VALUES (222222,1093233332);
INSERT INTO programas_impartidos(codigo_programa_formacion,cedula_instructor)
VALUES (333333,1091988845);
INSERT INTO programas_impartidos(codigo_programa_formacion,cedula_instructor)
VALUES (444444,1091981121);
INSERT INTO programas_impartidos(codigo_programa_formacion,cedula_instructor)
VALUES (555555,1091948876);
SELECT * FROM programas_impartidos;

CREATE TABLE programa_formacion(
codigo_programa_formacion INT PRIMARY KEY,
nombre VARCHAR(50),
codigo_ambiente INT,
FOREIGN KEY (codigo_ambiente) REFERENCES ambiente(codigo_ambiente)
);

INSERT INTO programa_formacion(codigo_programa_formacion,nombre,codigo_ambiente)
VALUES (111111,'Mecanica Automotriz',101);
INSERT INTO programa_formacion(codigo_programa_formacion,nombre,codigo_ambiente)
VALUES (222222,'Contabilidad',102);
INSERT INTO programa_formacion(codigo_programa_formacion,nombre,codigo_ambiente)
VALUES (333333,'Desarrollo Publicitario',103);
INSERT INTO programa_formacion(codigo_programa_formacion,nombre,codigo_ambiente)
VALUES (444444,'Multimedia',104);
INSERT INTO programa_formacion(codigo_programa_formacion,nombre,codigo_ambiente)
VALUES (555555,'Farmaceutica',105);
SELECT * FROM programa_formacion;

CREATE TABLE aprendiz(
cedula_aprendiz INT PRIMARY KEY,
nombre VARCHAR(20),
apellido VARCHAR(20),
telefono VARCHAR(15),
email VARCHAR(100),
codigo_programa_formacion INT,
FOREIGN KEY (codigo_programa_formacion) REFERENCES programa_formacion(codigo_programa_formacion)
);

INSERT INTO aprendiz(cedula_aprendiz,nombre,apellido,telefono,email,codigo_programa_formacion)
VALUES (1091232321,'juan','lizarazo',312525167,'juanli@gmail.com',111111);
INSERT INTO aprendiz(cedula_aprendiz,nombre,apellido,telefono,email,codigo_programa_formacion)
VALUES (1091456253,'luis','igarza',312452101,'luisgar@gmail.com',222222);
INSERT INTO aprendiz(cedula_aprendiz,nombre,apellido,telefono,email,codigo_programa_formacion)
VALUES (1023152213,'david','soto',3124561243,'davis@gmail.com',333333);
INSERT INTO aprendiz(cedula_aprendiz,nombre,apellido,telefono,email,codigo_programa_formacion)
VALUES (1091321121,'ramon','ortiz',3124511121,'ramoor@gmail.com',444444);
INSERT INTO aprendiz(cedula_aprendiz,nombre,apellido,telefono,email,codigo_programa_formacion)
VALUES (1091231598,'stiven','hernandez',3145647841,'hernan@gmail.com',555555);
SELECT * FROM aprendiz;

CREATE TABLE competencias_formacion(
codigo_programa_formacion INT,
codigo_competencias INT,
FOREIGN KEY (codigo_programa_formacion)REFERENCES programa_formacion(codigo_programa_formacion),
FOREIGN KEY (codigo_competencias) REFERENCES competencias(codigo_competencias)
);

INSERT INTO competencias_formacion(codigo_programa_formacion,codigo_competencias)
VALUES (111111,11111);
INSERT INTO competencias_formacion(codigo_programa_formacion,codigo_competencias)
VALUES (222222,22222);
INSERT INTO competencias_formacion(codigo_programa_formacion,codigo_competencias)
VALUES (333333,33333);
INSERT INTO competencias_formacion(codigo_programa_formacion,codigo_competencias)
VALUES (222222,44444);
INSERT INTO competencias_formacion(codigo_programa_formacion,codigo_competencias)
VALUES (444444,55555);
SELECT * FROM  competencias_formacion;

CREATE TABLE curso_complementario_aprendiz(
cedula_aprendiz INT,
codigo_curso_complementario INT,
FOREIGN KEY (cedula_aprendiz) REFERENCES aprendiz(cedula_aprendiz),
FOREIGN KEY (codigo_curso_complementario) REFERENCES curso_complementario(codigo_curso_complementario)
);

INSERT INTO curso_complementario_aprendiz(cedula_aprendiz,codigo_curso_complementario)
VALUES (1091232321,11112);
INSERT INTO curso_complementario_aprendiz(cedula_aprendiz,codigo_curso_complementario)
VALUES (1091456253,22223);
INSERT INTO curso_complementario_aprendiz(cedula_aprendiz,codigo_curso_complementario)
VALUES (1023152213,33334);
INSERT INTO curso_complementario_aprendiz(cedula_aprendiz,codigo_curso_complementario)
VALUES (1091321121,44445);
INSERT INTO curso_complementario_aprendiz(cedula_aprendiz,codigo_curso_complementario)
VALUES (1091231598,55556);
SELECT * FROM  curso_complementario_aprendiz;