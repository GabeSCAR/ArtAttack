CREATE DATABASE ATTACK;
USE ATTACK;
DROP TABLE TB_USUARIO;
show tables;

CREATE TABLE TB_USUARIO(
ID_USUARIO		int	 primary key auto_increment,
NM_USUARIO		varchar(250),
DS_EMAIL		varchar(100),
DS_SENHA		varchar(100),
DS_OCUPACAO		varchar(100),
DS_BIOGRAFIA	varchar(100),
DS_CONTATO		varchar(17),
IMG_PERFIL		varchar(700)
);



CREATE TABLE TB_PROJETO(
ID_PROJETO		int primary key auto_increment,
ID_USUARIO		int,
NM_PROJETO		varchar(150),
DS_PROJETO		varchar(250),
DS_CATEGORIA	varchar(10),
DS_MATERIAIS	varchar(250),
IMG_PROJETO		varchar(700),
FOREIGN KEY (ID_USUARIO) REFERENCES TB_USUARIO(ID_USUARIO)
);

