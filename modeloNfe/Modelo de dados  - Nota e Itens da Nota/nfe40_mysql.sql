-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.11 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para nfe40
CREATE DATABASE IF NOT EXISTS `nfe40` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `nfe40`;


-- Copiando estrutura para tabela nfe40.autorizado
CREATE TABLE IF NOT EXISTS `autorizado` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `destinatario_idpk` int(10) unsigned NOT NULL,
  `cnpjcpf` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`idpk`,`destinatario_idpk`),
  KEY `autorizados_FKIndex1` (`destinatario_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.autorizado: 0 rows
/*!40000 ALTER TABLE `autorizado` DISABLE KEYS */;
/*!40000 ALTER TABLE `autorizado` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.autorizadosnotafiscal
CREATE TABLE IF NOT EXISTS `autorizadosnotafiscal` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notafiscal_idpk` int(10) unsigned NOT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `autorizadosnotafiscal_FKIndex1` (`notafiscal_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.autorizadosnotafiscal: 0 rows
/*!40000 ALTER TABLE `autorizadosnotafiscal` DISABLE KEYS */;
/*!40000 ALTER TABLE `autorizadosnotafiscal` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.cfop
CREATE TABLE IF NOT EXISTS `cfop` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cfop` int(10) unsigned NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `obs` longtext,
  `tipo` int(10) unsigned DEFAULT NULL COMMENT '0 - Entrada / 1 - Saida',
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.cfop: 0 rows
/*!40000 ALTER TABLE `cfop` DISABLE KEYS */;
/*!40000 ALTER TABLE `cfop` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.configuracao
CREATE TABLE IF NOT EXISTS `configuracao` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipoemissao` varchar(100) NOT NULL,
  `seriecertificado` varchar(100) NOT NULL,
  `ambiente` int(10) unsigned NOT NULL,
  `formaemissao` int(10) unsigned DEFAULT NULL,
  `modelo` int(10) unsigned NOT NULL,
  `serie` char(3) NOT NULL,
  `ultimanfe` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.configuracao: 0 rows
/*!40000 ALTER TABLE `configuracao` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuracao` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.crt
CREATE TABLE IF NOT EXISTS `crt` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crt` int(10) unsigned NOT NULL COMMENT '1 - Simples Nacional / 2 - Simples Nac. Exc. Rec. Bruta / 3 - Regime Normal',
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.crt: 0 rows
/*!40000 ALTER TABLE `crt` DISABLE KEYS */;
/*!40000 ALTER TABLE `crt` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.cstcofins
CREATE TABLE IF NOT EXISTS `cstcofins` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cst` char(2) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `tipo` int(10) unsigned DEFAULT NULL COMMENT '0 - Entrada / 1 - Saida',
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.cstcofins: 0 rows
/*!40000 ALTER TABLE `cstcofins` DISABLE KEYS */;
/*!40000 ALTER TABLE `cstcofins` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.csticms
CREATE TABLE IF NOT EXISTS `csticms` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cstcsosn` char(3) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.csticms: 0 rows
/*!40000 ALTER TABLE `csticms` DISABLE KEYS */;
/*!40000 ALTER TABLE `csticms` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.cstipi
CREATE TABLE IF NOT EXISTS `cstipi` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cst` char(2) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `tipo` int(10) unsigned zerofill DEFAULT NULL COMMENT '0 - Entrada / 1 - Saida',
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.cstipi: 0 rows
/*!40000 ALTER TABLE `cstipi` DISABLE KEYS */;
/*!40000 ALTER TABLE `cstipi` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.cstpis
CREATE TABLE IF NOT EXISTS `cstpis` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cst` char(2) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `tipo` int(10) unsigned DEFAULT NULL COMMENT '0 - Entrada / 1 - Saida',
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.cstpis: 0 rows
/*!40000 ALTER TABLE `cstpis` DISABLE KEYS */;
/*!40000 ALTER TABLE `cstpis` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.destinatario
CREATE TABLE IF NOT EXISTS `destinatario` (
  `idpk` int(10) unsigned NOT NULL,
  `cnpjcpf` varchar(14) DEFAULT NULL,
  `docestrangeiro` varchar(20) DEFAULT NULL COMMENT 'idEstrangeiro: operação com exterior',
  `razaosocial` varchar(60) DEFAULT NULL,
  `nomefantasia` varchar(60) DEFAULT NULL,
  `numero` varchar(60) DEFAULT NULL,
  `logradouro` varchar(60) NOT NULL,
  `complemento` varchar(60) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `ibge` varchar(7) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `fone` varchar(14) DEFAULT NULL,
  `tipocontribuinte` int(10) unsigned DEFAULT NULL COMMENT 'indIEDest: 1 - Contribuinte/2 - Isento/3 - Não Contribuinte',
  `IE` varchar(14) DEFAULT NULL,
  `IM` varchar(15) DEFAULT NULL COMMENT 'DF: Nota conjugada',
  `email` varchar(60) DEFAULT NULL,
  `consumidorfinal` int(10) unsigned DEFAULT NULL COMMENT '0 - não / 1 - sim',
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.destinatario: 0 rows
/*!40000 ALTER TABLE `destinatario` DISABLE KEYS */;
/*!40000 ALTER TABLE `destinatario` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.duplicatanotafiscal
CREATE TABLE IF NOT EXISTS `duplicatanotafiscal` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notafiscal_idpk` int(10) unsigned NOT NULL,
  `ndup` varchar(60) DEFAULT NULL,
  `dvenc` date DEFAULT NULL,
  `vdup` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `duplicatanotafiscal_FKIndex1` (`notafiscal_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.duplicatanotafiscal: 0 rows
/*!40000 ALTER TABLE `duplicatanotafiscal` DISABLE KEYS */;
/*!40000 ALTER TABLE `duplicatanotafiscal` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.emitente
CREATE TABLE IF NOT EXISTS `emitente` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crt_idpk` int(10) unsigned NOT NULL,
  `cnpjcpf` varchar(14) DEFAULT NULL,
  `razaosocial` varchar(60) DEFAULT NULL,
  `nomefantasia` varchar(60) DEFAULT NULL,
  `logradouro` varchar(60) DEFAULT NULL,
  `numero` varchar(60) DEFAULT NULL,
  `complemento` varchar(60) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `ibge` varchar(7) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `fone` varchar(14) DEFAULT NULL,
  `ie` varchar(14) DEFAULT NULL,
  `im` varchar(15) DEFAULT NULL,
  `cnae` varchar(7) DEFAULT NULL COMMENT 'Se informado, informar IM',
  `cnpjcpfcontador` varchar(14) DEFAULT NULL,
  `regimepiscofins` int(10) unsigned DEFAULT NULL COMMENT '0 - cumulativo / 1 - não cumulativo',
  `piscofinsmonofasico` tinyint(1) DEFAULT NULL,
  `aliquotapis` decimal(5,2) DEFAULT NULL,
  `aliqiuotacofins` decimal(5,2) DEFAULT NULL,
  `creditosn` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idpk`,`crt_idpk`),
  KEY `emitente_FKIndex1` (`crt_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.emitente: 0 rows
/*!40000 ALTER TABLE `emitente` DISABLE KEYS */;
/*!40000 ALTER TABLE `emitente` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.formapagto
CREATE TABLE IF NOT EXISTS `formapagto` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` char(2) DEFAULT NULL COMMENT '01,02,03,04,05,10,11,12,13,14,90,99',
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.formapagto: 0 rows
/*!40000 ALTER TABLE `formapagto` DISABLE KEYS */;
/*!40000 ALTER TABLE `formapagto` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.integracaofiscal
CREATE TABLE IF NOT EXISTS `integracaofiscal` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cstipi_idpk` int(10) unsigned NOT NULL,
  `cstcofins_idpk` int(10) unsigned NOT NULL,
  `cstpis_idpk` int(10) unsigned NOT NULL,
  `csticms_idpk` int(10) unsigned NOT NULL,
  `cfop_idpk` int(10) unsigned NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `icmsipi` int(10) unsigned DEFAULT NULL COMMENT '0 - não / 1 - sim',
  `aliquotaespecificaicms` decimal(5,2) DEFAULT NULL,
  `aliquotaespecificaicmsst` decimal(5,2) DEFAULT NULL,
  `aliquotareducaobaseicms` decimal(5,2) DEFAULT NULL,
  `aliquotareducaobasest` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `integracaofiscal_FKIndex1` (`csticms_idpk`),
  KEY `integracaofiscal_FKIndex2` (`cstpis_idpk`),
  KEY `integracaofiscal_FKIndex3` (`cstcofins_idpk`),
  KEY `integracaofiscal_FKIndex4` (`cfop_idpk`),
  KEY `integracaofiscal_FKIndex5` (`cstipi_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.integracaofiscal: 0 rows
/*!40000 ALTER TABLE `integracaofiscal` DISABLE KEYS */;
/*!40000 ALTER TABLE `integracaofiscal` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.itemrastro
CREATE TABLE IF NOT EXISTS `itemrastro` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itensnotafiscal_idpk` int(10) unsigned NOT NULL,
  `nlote` varchar(20) DEFAULT NULL,
  `qlote` decimal(11,3) DEFAULT NULL,
  `dfab` date DEFAULT NULL,
  `dval` date DEFAULT NULL,
  `cagregopc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `itemrastro_FKIndex1` (`itensnotafiscal_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.itemrastro: 0 rows
/*!40000 ALTER TABLE `itemrastro` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemrastro` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.itensnotafiscal
CREATE TABLE IF NOT EXISTS `itensnotafiscal` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notafiscal_idpk` int(10) unsigned NOT NULL,
  `cprod` varchar(60) DEFAULT NULL,
  `cean` varchar(14) DEFAULT NULL,
  `xprod` varchar(120) DEFAULT NULL,
  `ncm` varchar(8) DEFAULT NULL,
  `cestopc` varchar(7) DEFAULT NULL,
  `indescalaopc` char(1) DEFAULT NULL,
  `cnpjfabopc` varchar(14) DEFAULT NULL,
  `cbenfopc` varchar(10) DEFAULT NULL,
  `extipi` char(3) DEFAULT NULL,
  `cfop` int(10) unsigned DEFAULT NULL,
  `ucom` varchar(6) DEFAULT NULL,
  `qcom` decimal(15,4) DEFAULT NULL,
  `vuncom` decimal(21,10) DEFAULT NULL,
  `vprod` decimal(15,2) DEFAULT NULL,
  `ceantrib` varchar(14) DEFAULT NULL,
  `utrib` varchar(6) DEFAULT NULL,
  `vuntrib` decimal(21,10) DEFAULT NULL,
  `vfrete` decimal(15,2) DEFAULT NULL,
  `vseg` decimal(15,2) DEFAULT NULL,
  `vdesc` decimal(15,2) DEFAULT NULL,
  `voutro` decimal(15,2) DEFAULT NULL,
  `indtot` int(10) unsigned DEFAULT NULL,
  `orig` char(1) DEFAULT NULL,
  `csticms` char(3) DEFAULT NULL,
  `modbc` int(10) unsigned DEFAULT NULL,
  `predbc` decimal(5,2) DEFAULT NULL,
  `vbcicms` decimal(15,2) DEFAULT NULL,
  `picms` decimal(5,2) DEFAULT NULL,
  `vicms` decimal(15,2) DEFAULT NULL,
  `modbcst` int(10) unsigned DEFAULT NULL,
  `pmvast` decimal(5,2) DEFAULT NULL,
  `predbcst` decimal(5,2) DEFAULT NULL,
  `vbcst` decimal(15,2) DEFAULT NULL,
  `picmsst` decimal(5,2) DEFAULT NULL,
  `vicmsst` decimal(15,2) DEFAULT NULL,
  `vbcstret` decimal(15,2) DEFAULT NULL,
  `vicmsstret` decimal(15,2) DEFAULT NULL,
  `vbcstdest` decimal(15,2) DEFAULT NULL,
  `vicmsstdest` decimal(15,2) DEFAULT NULL,
  `motdesicms` int(10) unsigned DEFAULT NULL,
  `pbcop` decimal(5,2) DEFAULT NULL,
  `ufst` char(2) DEFAULT NULL,
  `pcredsn` decimal(5,2) DEFAULT NULL,
  `vcredicmssn` decimal(15,2) DEFAULT NULL,
  `vicmsdeson` decimal(15,2) DEFAULT NULL,
  `vicmsop` decimal(15,2) DEFAULT NULL,
  `pdif` decimal(5,2) DEFAULT NULL,
  `vicmsdif` decimal(15,2) DEFAULT NULL,
  `vbcfcp` decimal(15,2) DEFAULT NULL,
  `pfcp` decimal(5,2) DEFAULT NULL,
  `vfcp` decimal(15,2) DEFAULT NULL,
  `vbcfcpst` decimal(15,2) DEFAULT NULL,
  `pfcpst` decimal(5,2) DEFAULT NULL,
  `vfcpst` decimal(15,2) DEFAULT NULL,
  `vbcfcpstret` decimal(15,2) DEFAULT NULL,
  `pfcpstret` decimal(5,2) DEFAULT NULL,
  `vfcpstret` decimal(15,2) DEFAULT NULL,
  `pst` decimal(5,2) DEFAULT NULL,
  `cselo` varchar(60) DEFAULT NULL,
  `qselo` int(10) unsigned DEFAULT NULL,
  `cenq` char(3) DEFAULT NULL,
  `cstipi` char(2) DEFAULT NULL,
  `vbcipi` decimal(15,2) DEFAULT NULL,
  `pipi` decimal(5,2) DEFAULT NULL,
  `vipi` decimal(15,2) DEFAULT NULL,
  `qunid` decimal(15,4) DEFAULT NULL,
  `vunid` decimal(15,4) DEFAULT NULL,
  `cstpis` char(2) DEFAULT NULL,
  `vbcpis` decimal(15,2) DEFAULT NULL,
  `ppis` decimal(5,2) DEFAULT NULL,
  `vpis` decimal(15,2) DEFAULT NULL,
  `qbcprodpis` decimal(16,4) DEFAULT NULL,
  `valiqprodpis` decimal(16,4) DEFAULT NULL,
  `cstcofins` char(2) DEFAULT NULL,
  `vbccofins` decimal(15,2) DEFAULT NULL,
  `pcofins` decimal(5,2) DEFAULT NULL,
  `vcofins` decimal(15,2) DEFAULT NULL,
  `qbcprodcofins` decimal(16,4) DEFAULT NULL,
  `valiqprodcofins` decimal(15,4) DEFAULT NULL,
  `vbcufdest` decimal(15,2) DEFAULT NULL,
  `vbcfcpufdestopc` decimal(15,2) DEFAULT NULL,
  `pfcpufdest` decimal(5,2) DEFAULT NULL,
  `picmsufdest` decimal(5,2) DEFAULT NULL,
  `picmsinter` decimal(5,2) DEFAULT NULL,
  `picmsinterpart` decimal(5,2) DEFAULT NULL,
  `vfcpufdest` decimal(15,2) DEFAULT NULL,
  `vicmsufdest` decimal(15,2) DEFAULT NULL,
  `vicmsufremet` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `itensnotafiscal_FKIndex1` (`notafiscal_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.itensnotafiscal: 0 rows
/*!40000 ALTER TABLE `itensnotafiscal` DISABLE KEYS */;
/*!40000 ALTER TABLE `itensnotafiscal` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.ncmibpt
CREATE TABLE IF NOT EXISTS `ncmibpt` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ncm` int(10) unsigned NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `extipi` int(10) unsigned DEFAULT NULL,
  `aliquotanacional` decimal(5,2) DEFAULT NULL,
  `aliquotaimportacao` decimal(5,2) DEFAULT NULL,
  `aliquotaestadual` decimal(5,2) DEFAULT NULL,
  `aliquotamunicipal` decimal(5,2) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `iniciovigencia` date DEFAULT NULL,
  `fimvigencia` date DEFAULT NULL,
  `chave` varchar(100) DEFAULT NULL,
  `versao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.ncmibpt: 0 rows
/*!40000 ALTER TABLE `ncmibpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ncmibpt` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.notafiscal
CREATE TABLE IF NOT EXISTS `notafiscal` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cuf` int(10) unsigned DEFAULT NULL,
  `cnf` int(10) unsigned DEFAULT NULL,
  `natope` varchar(60) DEFAULT NULL,
  `modelo` int(10) unsigned DEFAULT NULL,
  `serie` int(10) unsigned DEFAULT NULL,
  `nnf` int(10) unsigned DEFAULT NULL,
  `dhemi` varchar(25) DEFAULT NULL,
  `dhsaient` varchar(25) DEFAULT NULL,
  `tpnf` int(10) unsigned DEFAULT NULL,
  `iddest` int(10) unsigned DEFAULT NULL,
  `cmunfg` varchar(7) DEFAULT NULL,
  `tpimp` int(10) unsigned DEFAULT NULL,
  `tpemis` int(10) unsigned DEFAULT NULL,
  `cdv` int(10) unsigned DEFAULT NULL,
  `tpamb` int(10) unsigned DEFAULT NULL,
  `finnfe` int(10) unsigned DEFAULT NULL,
  `indfinal` int(10) unsigned DEFAULT NULL,
  `indpres` int(10) unsigned DEFAULT NULL,
  `procemi` int(10) unsigned DEFAULT NULL,
  `verproc` varchar(20) DEFAULT NULL,
  `dhcont` varchar(25) DEFAULT NULL,
  `xjust` varchar(256) DEFAULT NULL,
  `cnpjemi` varchar(14) DEFAULT NULL,
  `cpfemi` varchar(11) DEFAULT NULL,
  `xnomeemi` varchar(60) DEFAULT NULL,
  `xfant` varchar(60) DEFAULT NULL,
  `xlgremi` varchar(60) DEFAULT NULL,
  `nroemi` varchar(60) DEFAULT NULL,
  `xcplemi` varchar(60) DEFAULT NULL,
  `xbairroemi` varchar(60) DEFAULT NULL,
  `cmunemi` varchar(7) DEFAULT NULL,
  `xmunemi` varchar(60) DEFAULT NULL,
  `ufemi` char(2) DEFAULT NULL,
  `cepemi` varchar(8) DEFAULT NULL,
  `cpaisemi` varchar(4) DEFAULT NULL,
  `xpaisemi` varchar(6) DEFAULT NULL,
  `foneemi` varchar(14) DEFAULT NULL,
  `ieemi` varchar(14) DEFAULT NULL,
  `iest` varchar(14) DEFAULT NULL,
  `imemi` varchar(15) DEFAULT NULL,
  `cnae` varchar(7) DEFAULT NULL,
  `crt` char(1) DEFAULT NULL,
  `cnpjdest` varchar(14) DEFAULT NULL,
  `cpfdest` varchar(11) DEFAULT NULL,
  `idestrangeiro` varchar(20) DEFAULT NULL,
  `xlgrdest` varchar(60) DEFAULT NULL,
  `nrodest` varchar(60) DEFAULT NULL,
  `xcpldest` varchar(60) DEFAULT NULL,
  `xbairrodest` varchar(60) DEFAULT NULL,
  `cmundest` varchar(7) DEFAULT NULL,
  `xmundest` varchar(60) DEFAULT NULL,
  `ufdest` char(2) DEFAULT NULL,
  `cepdest` varchar(8) DEFAULT NULL,
  `cpaisdest` varchar(4) DEFAULT NULL,
  `xpaisdest` varchar(6) DEFAULT NULL,
  `fonedest` varchar(14) DEFAULT NULL,
  `indiedest` char(1) DEFAULT NULL,
  `iedest` varchar(14) DEFAULT NULL,
  `isuf` varchar(9) DEFAULT NULL,
  `imdest` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `vbc` decimal(15,2) DEFAULT NULL,
  `vicms` decimal(15,2) DEFAULT NULL,
  `vbcst` decimal(15,2) DEFAULT NULL,
  `vst` decimal(15,2) DEFAULT NULL,
  `vprod` decimal(15,2) DEFAULT NULL,
  `vfrete` decimal(15,2) DEFAULT NULL,
  `vseg` decimal(15,2) DEFAULT NULL,
  `vdesc` decimal(15,2) DEFAULT NULL,
  `vii` decimal(15,2) DEFAULT NULL,
  `vipi` decimal(15,2) DEFAULT NULL,
  `vpis` decimal(15,2) DEFAULT NULL,
  `vcofins` decimal(15,2) DEFAULT NULL,
  `voutro` decimal(15,2) DEFAULT NULL,
  `vnf` decimal(15,2) DEFAULT NULL,
  `vtottrib` decimal(15,2) DEFAULT NULL,
  `vicmsdeson` decimal(15,2) DEFAULT NULL,
  `vicmsufdestopc` decimal(15,2) DEFAULT NULL,
  `vicmsufremet` decimal(15,2) DEFAULT NULL,
  `vfcpufdestopc` decimal(15,2) DEFAULT NULL,
  `vfcp` decimal(15,2) DEFAULT NULL,
  `vfcpst` decimal(15,2) DEFAULT NULL,
  `vfcpstret` decimal(15,2) DEFAULT NULL,
  `vipidevol` decimal(15,2) DEFAULT NULL,
  `modfrete` char(1) DEFAULT NULL,
  `cnpjtransp` varchar(14) DEFAULT NULL,
  `cpftransp` varchar(11) DEFAULT NULL,
  `xnometransp` varchar(60) DEFAULT NULL,
  `ietransp` varchar(14) DEFAULT NULL,
  `xender` varchar(60) DEFAULT NULL,
  `xmuntransp` varchar(60) DEFAULT NULL,
  `uftransp` char(2) DEFAULT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `ufveic` char(2) DEFAULT NULL,
  `rntc` varchar(20) DEFAULT NULL,
  `qvol` decimal(15,0) DEFAULT NULL,
  `esp` varchar(60) DEFAULT NULL,
  `pesol` decimal(12,3) DEFAULT NULL,
  `pesob` decimal(12,3) DEFAULT NULL,
  `infadfisco` blob,
  `infcpl` blob,
  `nfat` varchar(60) DEFAULT NULL,
  `vorig` decimal(15,2) DEFAULT NULL,
  `vdescfatura` decimal(15,2) DEFAULT NULL,
  `vliq` decimal(15,2) DEFAULT NULL,
  `versao` varchar(4) DEFAULT NULL,
  `chavenf` varchar(44) DEFAULT NULL,
  `statusnfe` char(1) DEFAULT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.notafiscal: 0 rows
/*!40000 ALTER TABLE `notafiscal` DISABLE KEYS */;
/*!40000 ALTER TABLE `notafiscal` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.origem
CREATE TABLE IF NOT EXISTS `origem` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `origem` int(10) unsigned NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.origem: 0 rows
/*!40000 ALTER TABLE `origem` DISABLE KEYS */;
/*!40000 ALTER TABLE `origem` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.portaria
CREATE TABLE IF NOT EXISTS `portaria` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descritivo` longtext NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.portaria: 0 rows
/*!40000 ALTER TABLE `portaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `portaria` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `integracaofiscal_idpk` int(10) unsigned NOT NULL,
  `origem_idpk` int(10) unsigned NOT NULL,
  `ncmibpt_idpk` int(10) unsigned NOT NULL,
  `unidademedida_idpk` int(10) unsigned NOT NULL,
  `codigo` varchar(60) DEFAULT NULL,
  `gtin` varchar(14) DEFAULT NULL,
  `descricao` varchar(120) DEFAULT NULL,
  `cest` varchar(7) DEFAULT NULL,
  `indescala` int(10) unsigned DEFAULT NULL COMMENT '0 - não / 1 - sim',
  `cnpjfabricante` varchar(14) DEFAULT NULL,
  `codigobeneficio` varchar(10) DEFAULT NULL,
  `preco` decimal(15,2) DEFAULT NULL,
  `mva` decimal(5,2) DEFAULT NULL,
  `aliquotapis` decimal(5,2) DEFAULT NULL,
  `aliquotacofins` decimal(5,2) unsigned zerofill DEFAULT NULL,
  `aliquotaipi` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `produtos_FKIndex1` (`unidademedida_idpk`),
  KEY `produtos_FKIndex2` (`integracaofiscal_idpk`),
  KEY `produtos_FKIndex3` (`origem_idpk`),
  KEY `produtos_FKIndex4` (`ncmibpt_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.produto: 0 rows
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.transportadora
CREATE TABLE IF NOT EXISTS `transportadora` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnpjcpf` varchar(14) DEFAULT NULL,
  `razaosocial` varchar(60) DEFAULT NULL,
  `ie` varchar(14) DEFAULT NULL,
  `logradouro` varchar(60) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.transportadora: 0 rows
/*!40000 ALTER TABLE `transportadora` DISABLE KEYS */;
/*!40000 ALTER TABLE `transportadora` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.uficms
CREATE TABLE IF NOT EXISTS `uficms` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sigla` char(2) DEFAULT NULL,
  `aliquotainter` decimal(5,2) DEFAULT NULL,
  `aliquotaintra` decimal(5,2) DEFAULT NULL,
  `aliquotafcp` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.uficms: 0 rows
/*!40000 ALTER TABLE `uficms` DISABLE KEYS */;
/*!40000 ALTER TABLE `uficms` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.unidademedida
CREATE TABLE IF NOT EXISTS `unidademedida` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sigla` char(2) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.unidademedida: 0 rows
/*!40000 ALTER TABLE `unidademedida` DISABLE KEYS */;
/*!40000 ALTER TABLE `unidademedida` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.usuario: 0 rows
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe40.veiculo
CREATE TABLE IF NOT EXISTS `veiculo` (
  `idpk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transportadora_idpk` int(10) unsigned NOT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `rntc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `veiculos_FKIndex1` (`transportadora_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela nfe40.veiculo: 0 rows
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
