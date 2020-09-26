CREATE TABLE Portaria (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  titulo VARCHAR(100)  NOT NULL  ,
  descritivo LONGTEXT  NOT NULL    ,
PRIMARY KEY(idpk));



CREATE TABLE origens (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  origens INTEGER UNSIGNED  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));



CREATE TABLE ncmibpt (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ncm INTEGER UNSIGNED  NOT NULL  ,
  descricao VARCHAR(255)  NULL  ,
  extipi INTEGER UNSIGNED  NULL  ,
  aliquotanacional DECIMAL(5,2)  NULL  ,
  aliquotaimportacao DECIMAL(5,2)  NULL  ,
  aliquotaestadual DECIMAL(5,2)  NULL  ,
  aliquotamunicipal DECIMAL(5,2)  NULL  ,
  uf CHAR(2)  NULL  ,
  iniciovigencia DATE  NULL  ,
  fimvigencia DATE  NULL  ,
  chave VARCHAR(100)  NULL  ,
  versao VARCHAR(100)  NULL    ,
PRIMARY KEY(idpk));



CREATE TABLE usuario (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(100)  NOT NULL  ,
  login VARCHAR(100)  NOT NULL  ,
  senha VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));



CREATE TABLE unidademedida (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  sigla CHAR(2)  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));



CREATE TABLE uficms (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  sigla CHAR(2)  NULL  ,
  aliquotainter DECIMAL(5,2)  NULL  ,
  aliquotaintra DECIMAL(5,2)  NULL  ,
  aliquotafcp DECIMAL(5,2)  NULL    ,
PRIMARY KEY(idpk));



CREATE TABLE cstpis (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  cst INTEGER UNSIGNED  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL  ,
  tipo INTEGER UNSIGNED  NULL   COMMENT '0 - Entrada / 1 - Saida'   ,
PRIMARY KEY(idpk));




CREATE TABLE crt (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  crt INTEGER UNSIGNED  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));



CREATE TABLE configuracao (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  tipoemissao VARCHAR(100)  NOT NULL  ,
  seriecertificado VARCHAR(100)  NOT NULL  ,
  ambiente INTEGER UNSIGNED  NOT NULL  ,
  formaemissao INTEGER UNSIGNED  NULL  ,
  modelo INTEGER UNSIGNED  NOT NULL  ,
  serie CHAR(3)  NOT NULL  ,
  ultimanfe INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idpk));



CREATE TABLE cfop (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  cfop INTEGER UNSIGNED  NOT NULL  ,
  descricao VARCHAR(255)  NOT NULL  ,
  obs LONGTEXT  NULL  ,
  tipo INTEGER UNSIGNED  NULL   COMMENT '0 - Entrada / 1 - Saida'   ,
PRIMARY KEY(idpk));




CREATE TABLE cstipi (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  cst INTEGER UNSIGNED  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL  ,
  tipo INTEGER UNSIGNED  NULL   COMMENT '0 - Entrada / 1 - Saida'   ,
PRIMARY KEY(idpk));




CREATE TABLE csticms (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  cstcsosn INTEGER UNSIGNED  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));



CREATE TABLE cstcofins (
  idpk INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  cst INTEGER UNSIGNED  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL  ,
  tipo INTEGER UNSIGNED  NULL   COMMENT '0 - Entrada / 1 - Saida'   ,
PRIMARY KEY(idpk));




