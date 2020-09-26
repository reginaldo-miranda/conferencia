CREATE TABLE notafiscal (
	idpk NUMERIC(18,0),
	cuf INTEGER,
	cnf INTEGER,
	natope VARCHAR(60),
	modelo INTEGER,
	serie INTEGER,
	nnf INTEGER,
	dhemi VARCHAR(25),
	dhsaient VARCHAR(25),
	tpnf INTEGER,
	iddest INTEGER,
	cmunfg VARCHAR(7),
	tpimp INTEGER,
	tpemis INTEGER,
	cdv INTEGER,
	tpamb INTEGER,
	finnfe INTEGER,
	indfinal INTEGER,
	indpres INTEGER,
	procemi INTEGER,
	verproc VARCHAR(20),
	dhcont VARCHAR(25),
	xjust VARCHAR(256),
	cnpjemi VARCHAR(14),
	cpfemi VARCHAR(11),
	xnomeemi VARCHAR(60),
	xfant VARCHAR(60),
	xlgremi VARCHAR(60),
	nroemi VARCHAR(60),
	xcplemi VARCHAR(60),
	xbairroemi VARCHAR(60),
	cmunemi VARCHAR(7),
	xmunemi VARCHAR(60),
	ufemi CHAR(2),
	cepemi VARCHAR(8),
	cpaisemi VARCHAR(4),
	xpaisemi VARCHAR(6),
	foneemi VARCHAR(14),
	ieemi VARCHAR(14),
	iest VARCHAR(14),
	imemi VARCHAR(15),
	cnae VARCHAR(7),
	crt CHAR(1),
	cnpjdest VARCHAR(14),
	cpfdest VARCHAR(11),
	idestrangeiro VARCHAR(20),
	xlgrdest VARCHAR(60),
	nrodest VARCHAR(60),
	xcpldest VARCHAR(60),
	xbairrodest VARCHAR(60),
	cmundest VARCHAR(7),
	xmundest VARCHAR(60),
	ufdest CHAR(2),
	cepdest VARCHAR(8),
	cpaisdest VARCHAR(4),
	xpaisdest VARCHAR(6),
	fonedest VARCHAR(14),
	indiedest CHAR(1),
	iedest VARCHAR(14),
	isuf VARCHAR(9),
	imdest VARCHAR(15),
	email VARCHAR(60),
	vbc DECIMAL(15,2),
	vicms DECIMAL(15,2),
	vbcst DECIMAL(15,2),
	vst DECIMAL(15,2),
	vprod DECIMAL(15,2),
	vfrete DECIMAL(15,2),
	vseg DECIMAL(15,2),
	vdesc DECIMAL(15,2),
	vii DECIMAL(15,2),
	vipi DECIMAL(15,2),
	vpis DECIMAL(15,2),
	vcofins DECIMAL(15,2),
	voutro DECIMAL(15,2),
	vnf DECIMAL(15,2),
	vtottrib DECIMAL(15,2),
	vicmsdeson DECIMAL(15,2),
	vicmsufdestopc DECIMAL(15,2),
	vicmsufremet DECIMAL(15,2),
	vfcpufdestopc DECIMAL(15,2),
	vfcp DECIMAL(15,2),
	vfcpst DECIMAL(15,2),
	vfcpstret DECIMAL(15,2),
	vipidevol DECIMAL(15,2),
	modfrete CHAR(1),
	cnpjtransp VARCHAR(14),
	cpftransp VARCHAR(11),
	xnometransp VARCHAR(60),
	ietransp VARCHAR(14),
	xender VARCHAR(60),
	xmuntransp VARCHAR(60),
	uftransp CHAR(2),
	placa VARCHAR(8),
	ufveic CHAR(2),
	rntc VARCHAR(20),
	qvol DECIMAL(15),
	esp VARCHAR(60),
	pesol DECIMAL(12,3),
	pesob DECIMAL(12,3),
	infadfisco BYTEA,
	infcpl BYTEA,
	nfat VARCHAR(60),
	vorig DECIMAL(15,2),
	vdescfatura DECIMAL(15,2),
	vliq DECIMAL(15,2),
	versao VARCHAR(4),
	chavenf VARCHAR(44),
	statusnfe CHAR(1),
	PRIMARY KEY(idpk)
);

CREATE TABLE origem (
	idpk NUMERIC(18,0),
	origem INTEGER,
	descricao VARCHAR(100),
	PRIMARY KEY(idpk)
);

CREATE TABLE formapagto (
	idpk NUMERIC(18,0),
	codigo CHAR(2),
	descricao VARCHAR(100),
	PRIMARY KEY(idpk)
);

CREATE TABLE ncmibpt (
	idpk NUMERIC(18,0),
	ncm varchar(9),
	descricao VARCHAR(255),
	extipi INTEGER,
	aliquotanacional DECIMAL(5,2),
	aliquotaimportacao DECIMAL(5,2),
	aliquotaestadual DECIMAL(5,2),
	aliquotamunicipal DECIMAL(5,2),
	uf CHAR(2),
	iniciovigencia DATE,
	fimvigencia DATE,
	chave VARCHAR(100),
	versao VARCHAR(100),
	PRIMARY KEY(idpk)
);

CREATE TABLE Portaria (
	idpk NUMERIC(18,0),
	titulo VARCHAR(100),
	descritivo TEXT,
	PRIMARY KEY(idpk)
);

CREATE TABLE unidademedida (
	idpk NUMERIC(18,0),
	sigla CHAR(2),
	descricao VARCHAR(100),
	PRIMARY KEY(idpk)
);

CREATE TABLE usuario (
	idpk NUMERIC(18,0),
	Nome VARCHAR(100),
	login VARCHAR(100),
	senha VARCHAR(100),
	PRIMARY KEY(idpk)
);

CREATE TABLE transportadora (
	idpk NUMERIC(18,0),
	cnpjcpf VARCHAR(14),
	razaosocial VARCHAR(60),
	ie VARCHAR(14),
	logradouro VARCHAR(60),
	cidade VARCHAR(60),
	uf CHAR(2),
	PRIMARY KEY(idpk)
);

CREATE TABLE uficms (
	idpk NUMERIC(18,0),
	sigla CHAR(2),
	aliquotainter DECIMAL(5,2),
	aliquotaintra DECIMAL(5,2),
	aliquotafcp DECIMAL(5,2),
	PRIMARY KEY(idpk)
);

CREATE TABLE destinatario (
	idpk INTEGER,
	cnpjcpf VARCHAR(14),
	docestrangeiro VARCHAR(20),
	razaosocial VARCHAR(60),
	nomefantasia VARCHAR(60),
	numero VARCHAR(60),
	logradouro VARCHAR(60),
	complemento VARCHAR(60),
	bairro VARCHAR(60),
	ibge VARCHAR(7),
	cidade VARCHAR(60),
	uf CHAR(2),
	cep VARCHAR(8),
	fone VARCHAR(14),
	tipocontribuinte INTEGER,
	IE VARCHAR(14),
	IM VARCHAR(15),
	email VARCHAR(60),
	consumidorfinal INTEGER,
	PRIMARY KEY(idpk)
);

CREATE TABLE cstcofins (
	idpk NUMERIC(18,0),
	cst char(2),
	descricao VARCHAR(100),
	tipo INTEGER,
	PRIMARY KEY(idpk)
);

CREATE TABLE csticms (
	idpk NUMERIC(18,0),
	cstcsosn char(3),
	descricao VARCHAR(100),
	PRIMARY KEY(idpk)
);

CREATE TABLE cstipi (
	idpk NUMERIC(18,0),
	cst char(2),
	descricao VARCHAR(100),
	tipo INTEGER,
	PRIMARY KEY(idpk)
);

CREATE TABLE cfop (
	idpk NUMERIC(18,0),
	cfop INTEGER,
	descricao VARCHAR(255),
	obs TEXT,
	tipo INTEGER,
	PRIMARY KEY(idpk)
);

CREATE TABLE configuracao (
	idpk NUMERIC(18,0),
	tipoemissao VARCHAR(100),
	seriecertificado VARCHAR(100),
	ambiente INTEGER,
	formaemissao INTEGER,
	modelo INTEGER,
	serie CHAR(3),
	ultimanfe INTEGER,
	PRIMARY KEY(idpk)
);

CREATE TABLE crt (
	idpk NUMERIC(18,0),
	crt INTEGER,
	descricao VARCHAR(100),
	PRIMARY KEY(idpk)
);

CREATE TABLE cstpis (
	idpk NUMERIC(18,0),
	cst char(2),
	descricao VARCHAR(100),
	tipo INTEGER,
	PRIMARY KEY(idpk)
);

CREATE TABLE emitente (
	idpk NUMERIC(18,0),
	crt_idpk INTEGER,
	cnpjcpf VARCHAR(14),
	razaosocial VARCHAR(60),
	nomefantasia VARCHAR(60),
	logradouro VARCHAR(60),
	numero VARCHAR(60),
	complemento VARCHAR(60),
	bairro VARCHAR(60),
	ibge VARCHAR(7),
	cidade VARCHAR(60),
	uf CHAR(2),
	cep VARCHAR(8),
	fone VARCHAR(14),
	ie VARCHAR(14),
	im VARCHAR(15),
	cnae VARCHAR(7),
	cnpjcpfcontador VARCHAR(14),
	regimepiscofins INTEGER,
	piscofinsmonofasico BOOL,
	aliquotapis DECIMAL(5,2),
	aliqiuotacofins DECIMAL(5,2),
	creditosn DECIMAL(5,2),
	PRIMARY KEY(idpk, crt_idpk),
	FOREIGN KEY(crt_idpk) REFERENCES crt(idpk)
);

CREATE TABLE duplicatanotafiscal (
	idpk NUMERIC(18,0),
	notafiscal_idpk INTEGER,
	ndup VARCHAR(60),
	dvenc DATE,
	vdup DECIMAL(15,2),
	PRIMARY KEY(idpk),
	FOREIGN KEY(notafiscal_idpk) REFERENCES notafiscal(idpk)
);

CREATE TABLE autorizadosnotafiscal (
	idpk NUMERIC(18,0),
	notafiscal_idpk INTEGER,
	cnpj VARCHAR(14),
	cpf VARCHAR(11),
	PRIMARY KEY(idpk),
	FOREIGN KEY(notafiscal_idpk) REFERENCES notafiscal(idpk)
);	

CREATE TABLE autorizado (
	idpk NUMERIC(18,0),
	destinatario_idpk INTEGER,
	cnpjcpf VARCHAR(14),
	PRIMARY KEY(idpk, destinatario_idpk),
	FOREIGN KEY(destinatario_idpk) REFERENCES destinatario(idpk)
);

CREATE TABLE veiculo (
	idpk NUMERIC(18,0),
	transportadora_idpk INTEGER,
	placa VARCHAR(8),
	uf CHAR(2),
	rntc VARCHAR(20),
	PRIMARY KEY(idpk),
	FOREIGN KEY(transportadora_idpk) REFERENCES transportadora(idpk)
);

CREATE TABLE itensnotafiscal (
	idpk NUMERIC(18,0),
	notafiscal_idpk INTEGER,
	cprod VARCHAR(60),
	cean VARCHAR(14),
	xprod VARCHAR(120),
	ncm VARCHAR(8),
	cestopc VARCHAR(7),
	indescalaopc CHAR(1),
	cnpjfabopc VARCHAR(14),
	cbenfopc VARCHAR(10),
	extipi CHAR(3),
	cfop INTEGER,
	ucom VARCHAR(6),
	qcom DECIMAL(15,4),
	vuncom DECIMAL(21,10),
	vprod DECIMAL(15,2),
	ceantrib VARCHAR(14),
	utrib VARCHAR(6),
	vuntrib DECIMAL(21,10),
	vfrete DECIMAL(15,2),
	vseg DECIMAL(15,2),
	vdesc DECIMAL(15,2),
	voutro DECIMAL(15,2),
	indtot INTEGER,
	orig CHAR(1),
	csticms CHAR(3),
	modbc INTEGER,
	predbc DECIMAL(5,2),
	vbcicms DECIMAL(15,2),
	picms DECIMAL(5,2),
	vicms DECIMAL(15,2),
	modbcst INTEGER,
	pmvast DECIMAL(5,2),
	predbcst DECIMAL(5,2),
	vbcst DECIMAL(15,2),
	picmsst DECIMAL(5,2),
	vicmsst DECIMAL(15,2),
	vbcstret DECIMAL(15,2),
	vicmsstret DECIMAL(15,2),
	vbcstdest DECIMAL(15,2),
	vicmsstdest DECIMAL(15,2),
	motdesicms INTEGER,
	pbcop DECIMAL(5,2),
	ufst CHAR(2),
	pcredsn DECIMAL(5,2),
	vcredicmssn DECIMAL(15,2),
	vicmsdeson DECIMAL(15,2),
	vicmsop DECIMAL(15,2),
	pdif DECIMAL(5,2),
	vicmsdif DECIMAL(15,2),
	vbcfcp DECIMAL(15,2),
	pfcp DECIMAL(5,2),
	vfcp DECIMAL(15,2),
	vbcfcpst DECIMAL(15,2),
	pfcpst DECIMAL(5,2),
	vfcpst DECIMAL(15,2),
	vbcfcpstret DECIMAL(15,2),
	pfcpstret DECIMAL(5,2),
	vfcpstret DECIMAL(15,2),
	pst DECIMAL(5,2),
	cselo VARCHAR(60),
	qselo INTEGER,
	cenq CHAR(3),
	cstipi CHAR(2),
	vbcipi DECIMAL(15,2),
	pipi DECIMAL(5,2),
	vipi DECIMAL(15,2),
	qunid DECIMAL(15,4),
	vunid DECIMAL(15,4),
	cstpis CHAR(2),
	vbcpis DECIMAL(15,2),
	ppis DECIMAL(5,2),
	vpis DECIMAL(15,2),
	qbcprodpis DECIMAL(16,4),
	valiqprodpis DECIMAL(16,4),
	cstcofins CHAR(2),
	vbccofins DECIMAL(15,2),
	pcofins DECIMAL(5,2),
	vcofins DECIMAL(15,2),
	qbcprodcofins DECIMAL(16,4),
	valiqprodcofins DECIMAL(15,4),
	vbcufdest DECIMAL(15,2),
	vbcfcpufdestopc DECIMAL(15,2),
	pfcpufdest DECIMAL(5,2),
	picmsufdest DECIMAL(5,2),
	picmsinter DECIMAL(5,2),
	picmsinterpart DECIMAL(5,2),
	vfcpufdest DECIMAL(15,2),
	vicmsufdest DECIMAL(15,2),
	vicmsufremet DECIMAL(15,2),
	PRIMARY KEY(idpk),
	FOREIGN KEY(notafiscal_idpk) REFERENCES notafiscal(idpk)
);

CREATE TABLE integracaofiscal (
	idpk NUMERIC(18,0),
	cstipi_idpk INTEGER,
	cstcofins_idpk INTEGER,
	cstpis_idpk INTEGER,
	csticms_idpk INTEGER,
	cfop_idpk INTEGER,
	descricao VARCHAR(100),
	icmsipi INTEGER,
	aliquotaespecificaicms DECIMAL(5,2),
	aliquotaespecificaicmsst DECIMAL(5,2),
	aliquotareducaobaseicms DECIMAL(5,2),
	aliquotareducaobasest DECIMAL(5,2),
	PRIMARY KEY(idpk),
	FOREIGN KEY(csticms_idpk) REFERENCES csticms(idpk),
	FOREIGN KEY(cstpis_idpk) REFERENCES cstpis(idpk),
	FOREIGN KEY(cstcofins_idpk) REFERENCES cstcofins(idpk),
	FOREIGN KEY(cfop_idpk) REFERENCES cfop(idpk),
	FOREIGN KEY(cstipi_idpk) REFERENCES cstipi(idpk)
);

CREATE TABLE itemrastro (
	idpk NUMERIC(18,0),
	itensnotafiscal_idpk INTEGER,
	nlote VARCHAR(20),
	qlote DECIMAL(11,3),
	dfab DATE,
	dval DATE,
	cagregopc VARCHAR(20),
	PRIMARY KEY(idpk),
	FOREIGN KEY(itensnotafiscal_idpk) REFERENCES itensnotafiscal(idpk)
);

CREATE TABLE produto (
	idpk NUMERIC(18,0),
	integracaofiscal_idpk INTEGER,
	origem_idpk INTEGER,
	ncmibpt_idpk INTEGER,
	unidademedida_idpk INTEGER,
	codigo VARCHAR(60),
	gtin VARCHAR(14),
	descricao VARCHAR(120),
	cest VARCHAR(7),
	indescala INTEGER,
	cnpjfabricante VARCHAR(14),
	codigobeneficio VARCHAR(10),
	preco DECIMAL(15,2),
	mva DECIMAL(5,2),
	aliquotapis DECIMAL(5,2),
	aliquotacofins DECIMAL(5,2),
	aliquotaipi DECIMAL(5,2),
	PRIMARY KEY(idpk),
	FOREIGN KEY(unidademedida_idpk) REFERENCES unidademedida(idpk),
	FOREIGN KEY(integracaofiscal_idpk) REFERENCES integracaofiscal(idpk),
	FOREIGN KEY(origem_idpk) REFERENCES origem(idpk),
	FOREIGN KEY(ncmibpt_idpk) REFERENCES ncmibpt(idpk)
);