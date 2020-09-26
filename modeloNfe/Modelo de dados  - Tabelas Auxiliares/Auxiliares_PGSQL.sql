CREATE TABLE Portaria (
  idpk SERIAL  NOT NULL ,
  titulo VARCHAR(100)   NOT NULL ,
  descritivo LONGTEXT   NOT NULL   ,
PRIMARY KEY(idpk));




CREATE TABLE origens (
  idpk SERIAL  NOT NULL ,
  origens INTEGER   NOT NULL ,
  descricao VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(idpk));




CREATE TABLE ncmibpt (
  idpk SERIAL  NOT NULL ,
  ncm INTEGER   NOT NULL ,
  descricao VARCHAR(255)    ,
  extipi INTEGER    ,
  aliquotanacional DECIMAL(5,2)    ,
  aliquotaimportacao DECIMAL(5,2)    ,
  aliquotaestadual DECIMAL(5,2)    ,
  aliquotamunicipal DECIMAL(5,2)    ,
  uf CHAR(2)    ,
  iniciovigencia DATE    ,
  fimvigencia DATE    ,
  chave VARCHAR(100)    ,
  versao VARCHAR(100)      ,
PRIMARY KEY(idpk));




CREATE TABLE usuario (
  idpk SERIAL  NOT NULL ,
  Nome VARCHAR(100)   NOT NULL ,
  login VARCHAR(100)   NOT NULL ,
  senha VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(idpk));




CREATE TABLE unidademedida (
  idpk SERIAL  NOT NULL ,
  sigla CHAR(2)   NOT NULL ,
  descricao VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(idpk));




CREATE TABLE uficms (
  idpk SERIAL  NOT NULL ,
  sigla CHAR(2)    ,
  aliquotainter DECIMAL(5,2)    ,
  aliquotaintra DECIMAL(5,2)    ,
  aliquotafcp DECIMAL(5,2)      ,
PRIMARY KEY(idpk));




CREATE TABLE cstpis (
  idpk SERIAL  NOT NULL ,
  cst INTEGER   NOT NULL ,
  descricao VARCHAR(100)   NOT NULL ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));





CREATE TABLE crt (
  idpk SERIAL  NOT NULL ,
  crt INTEGER   NOT NULL ,
  descricao VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(idpk));




CREATE TABLE configuracao (
  idpk SERIAL  NOT NULL ,
  tipoemissao VARCHAR(100)   NOT NULL ,
  seriecertificado VARCHAR(100)   NOT NULL ,
  ambiente INTEGER   NOT NULL ,
  formaemissao INTEGER    ,
  modelo INTEGER   NOT NULL ,
  serie CHAR(3)   NOT NULL ,
  ultimanfe INTEGER   NOT NULL   ,
PRIMARY KEY(idpk));




CREATE TABLE cfop (
  idpk SERIAL  NOT NULL ,
  cfop INTEGER   NOT NULL ,
  descricao VARCHAR(255)   NOT NULL ,
  obs LONGTEXT    ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));





CREATE TABLE cstipi (
  idpk SERIAL  NOT NULL ,
  cst INTEGER   NOT NULL ,
  descricao VARCHAR(100)   NOT NULL ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));





CREATE TABLE csticms (
  idpk SERIAL  NOT NULL ,
  cstcsosn INTEGER   NOT NULL ,
  descricao VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(idpk));




CREATE TABLE cstcofins (
  idpk SERIAL  NOT NULL ,
  cst INTEGER   NOT NULL ,
  descricao VARCHAR(100)   NOT NULL ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));





