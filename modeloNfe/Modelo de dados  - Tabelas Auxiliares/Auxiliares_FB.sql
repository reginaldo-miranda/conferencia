CREATE GENERATOR GlobalSequence;

CREATE TABLE Portaria (
  idpk INTEGER  NOT NULL  ,
  titulo VARCHAR(100)  NOT NULL  ,
  descritivo LONGTEXT  NOT NULL    ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_Portaria
FOR Portaria BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 




CREATE TABLE origens (
  idpk INTEGER  NOT NULL  ,
  origens INTEGER  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_origens
FOR origens BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 




CREATE TABLE ncmibpt (
  idpk INTEGER  NOT NULL  ,
  ncm INTEGER  NOT NULL  ,
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


SET TERM !; 
CREATE TRIGGER AINC_ncmibpt
FOR ncmibpt BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 




CREATE TABLE usuario (
  idpk INTEGER  NOT NULL  ,
  Nome VARCHAR(100)  NOT NULL  ,
  login VARCHAR(100)  NOT NULL  ,
  senha VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_usuario
FOR usuario BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 




CREATE TABLE unidademedida (
  idpk INTEGER  NOT NULL  ,
  sigla CHAR(2)  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_unidademedida
FOR unidademedida BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 




CREATE TABLE uficms (
  idpk INTEGER  NOT NULL  ,
  sigla CHAR(2)    ,
  aliquotainter DECIMAL(5,2)    ,
  aliquotaintra DECIMAL(5,2)    ,
  aliquotafcp DECIMAL(5,2)      ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_uficms
FOR uficms BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 




CREATE TABLE cstpis (
  idpk INTEGER  NOT NULL  ,
  cst INTEGER  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL  ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_cstpis
FOR cstpis BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 





CREATE TABLE crt (
  idpk INTEGER  NOT NULL  ,
  crt INTEGER  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_crt
FOR crt BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 




CREATE TABLE configuracao (
  idpk INTEGER  NOT NULL  ,
  tipoemissao VARCHAR(100)  NOT NULL  ,
  seriecertificado VARCHAR(100)  NOT NULL  ,
  ambiente INTEGER  NOT NULL  ,
  formaemissao INTEGER    ,
  modelo INTEGER  NOT NULL  ,
  serie CHAR(3)  NOT NULL  ,
  ultimanfe INTEGER  NOT NULL    ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_configuracao
FOR configuracao BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 




CREATE TABLE cfop (
  idpk INTEGER  NOT NULL  ,
  cfop INTEGER  NOT NULL  ,
  descricao VARCHAR(255)  NOT NULL  ,
  obs LONGTEXT    ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_cfop
FOR cfop BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 





CREATE TABLE cstipi (
  idpk INTEGER  NOT NULL  ,
  cst INTEGER  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL  ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_cstipi
FOR cstipi BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 





CREATE TABLE csticms (
  idpk INTEGER  NOT NULL  ,
  cstcsosn INTEGER  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_csticms
FOR csticms BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 




CREATE TABLE cstcofins (
  idpk INTEGER  NOT NULL  ,
  cst INTEGER  NOT NULL  ,
  descricao VARCHAR(100)  NOT NULL  ,
  tipo INTEGER      ,
PRIMARY KEY(idpk));


SET TERM !; 
CREATE TRIGGER AINC_cstcofins
FOR cstcofins BEFORE INSERT  
AS 
BEGIN 
  IF (NEW.idpk IS NULL) THEN 
    NEW.idpk = GEN_ID(GlobalSequence, 1); 
END! 

SET TERM ;! 





