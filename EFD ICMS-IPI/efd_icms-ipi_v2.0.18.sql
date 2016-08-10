CREATE TABLE IF NOT EXISTS `inconsistencia` (
  `ID` bigint(20) NOT NULL auto_increment,
  `TIPO` char(1) collate latin1_general_ci NOT NULL,
  `ID_MENSAGEM` varchar(100) collate latin1_general_ci NOT NULL,
  `ID_CAMPO` varchar(50) collate latin1_general_ci default NULL,
  `VALOR_CAMPO` varchar(1024) collate latin1_general_ci default NULL,
  `VALOR_ESPERADO_CAMPO` varchar(256) collate latin1_general_ci default NULL,
  `NOME_REGISTRO` varchar(10) collate latin1_general_ci default NULL,
  `CONTEUDO_LINHA` varchar(2048) collate latin1_general_ci default NULL,
  `NUMERO_LINHA` bigint(20) default NULL,
  `ID_REGISTRO_BD` bigint(20) default NULL,
  `ID_REGISTRO_PAI_BD` bigint(20) default NULL,
  `PARAMETROS_MENSAGEM` varchar(500) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `metainf` (
  `ID_ESCT` bigint(20) NOT NULL auto_increment,
  `HASH` bigint(20) NOT NULL,
  `NOME_TABELA` varchar(255) collate latin1_general_ci NOT NULL,
  `TAMANHO_TABELA` bigint(20) NOT NULL,
  PRIMARY KEY  (`ID_ESCT`),
  KEY `IDX_NOME_TABELA` (`NOME_TABELA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0000` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_VER` varchar(3) collate latin1_general_ci default NULL,
  `COD_FIN` varchar(1) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  `NOME` varchar(100) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `CPF` varchar(11) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `IE` varchar(14) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  `IM` varchar(255) collate latin1_general_ci default NULL,
  `SUFRAMA` varchar(9) collate latin1_general_ci default NULL,
  `IND_PERFIL` varchar(1) collate latin1_general_ci default NULL,
  `IND_ATIV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_INI`,`DT_FIN`,`CNPJ`,`CPF`,`IE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0005` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `FANTASIA` varchar(60) collate latin1_general_ci default NULL,
  `CEP` varchar(8) collate latin1_general_ci default NULL,
  `ENDERECO` varchar(60) collate latin1_general_ci default NULL,
  `NUM` varchar(10) collate latin1_general_ci default NULL,
  `COMPL` varchar(60) collate latin1_general_ci default NULL,
  `BAIRRO` varchar(60) collate latin1_general_ci default NULL,
  `FONE` varchar(11) collate latin1_general_ci default NULL,
  `FAX` varchar(11) collate latin1_general_ci default NULL,
  `EMAIL` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0015` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `UF_ST` varchar(2) collate latin1_general_ci default NULL,
  `IE_ST` varchar(14) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`UF_ST`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NOME` varchar(60) collate latin1_general_ci default NULL,
  `CPF` varchar(11) collate latin1_general_ci default NULL,
  `CRC` varchar(15) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `CEP` varchar(8) collate latin1_general_ci default NULL,
  `ENDERECO` varchar(60) collate latin1_general_ci default NULL,
  `NUM` varchar(10) collate latin1_general_ci default NULL,
  `COMPL` varchar(60) collate latin1_general_ci default NULL,
  `BAIRRO` varchar(60) collate latin1_general_ci default NULL,
  `FONE` varchar(11) collate latin1_general_ci default NULL,
  `FAX` varchar(11) collate latin1_general_ci default NULL,
  `EMAIL` varchar(60) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0150` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `NOME` varchar(100) collate latin1_general_ci default NULL,
  `COD_PAIS` varchar(5) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `CPF` varchar(11) collate latin1_general_ci default NULL,
  `IE` varchar(14) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  `SUFRAMA` varchar(9) collate latin1_general_ci default NULL,
  `ENDERECO` varchar(60) collate latin1_general_ci default NULL,
  `NUM` varchar(10) collate latin1_general_ci default NULL,
  `COMPL` varchar(60) collate latin1_general_ci default NULL,
  `BAIRRO` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0175` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_ALT` date default NULL,
  `NR_CAMPO` varchar(2) collate latin1_general_ci default NULL,
  `CONT_ANT` varchar(100) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_ALT`,`NR_CAMPO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0190` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `DESCR` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`UNID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `DESCR_ITEM` varchar(255) collate latin1_general_ci default NULL,
  `COD_BARRA` varchar(20) collate latin1_general_ci default NULL,
  `COD_ANT_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `UNID_INV` varchar(6) collate latin1_general_ci default NULL,
  `TIPO_ITEM` varchar(2) collate latin1_general_ci default NULL,
  `COD_NCM` varchar(8) collate latin1_general_ci default NULL,
  `EX_IPI` varchar(3) collate latin1_general_ci default NULL,
  `COD_GEN` varchar(2) collate latin1_general_ci default NULL,
  `COD_LST` varchar(5) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_UNID_INV` (`UNID_INV`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0205` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DESCR_ANT_ITEM` varchar(255) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIM` date default NULL,
  `COD_ANT_ITEM` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_DT_INI` (`DT_INI`),
  KEY `IDX_DT_FIM` (`DT_FIM`),
  KEY `IDX_COD_ANT_ITEM` (`COD_ANT_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0206` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_COMB` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0210` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM_COMP` varchar(60) collate latin1_general_ci default NULL,
  `QTD_COMP` decimal(23,6) default NULL,
  `PERDA` decimal(11,4) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM_COMP` (`COD_ITEM_COMP`),
  KEY `IDX_QTD_COMP` (`QTD_COMP`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM_COMP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0220` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `UNID_CONV` varchar(6) collate latin1_general_ci default NULL,
  `FAT_CONV` decimal(25,6) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`UNID_CONV`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0300` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_IND_BEM` varchar(60) collate latin1_general_ci default NULL,
  `IDENT_MERC` varchar(1) collate latin1_general_ci default NULL,
  `DESCR_ITEM` varchar(255) collate latin1_general_ci default NULL,
  `COD_PRNC` varchar(60) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `NR_PARC` varchar(3) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PRNC` (`COD_PRNC`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_IND_BEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0305` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(60) collate latin1_general_ci default NULL,
  `FUNC` varchar(255) collate latin1_general_ci default NULL,
  `VIDA_UTIL` varchar(3) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0400` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_NAT` varchar(10) collate latin1_general_ci default NULL,
  `DESCR_NAT` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_NAT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0450` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_INF` varchar(6) collate latin1_general_ci default NULL,
  `TXT` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_INF`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0460` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  `TXT` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_OBS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0500` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_ALT` date default NULL,
  `COD_NAT_CC` varchar(2) collate latin1_general_ci default NULL,
  `IND_CTA` varchar(1) collate latin1_general_ci default NULL,
  `NIVEL` varchar(5) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `NOME_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_ALT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0600` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_ALT` date default NULL,
  `COD_CCUS` varchar(60) collate latin1_general_ci default NULL,
  `CCUS` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_ALT`,`COD_CCUS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_0` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1010` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_EXP` varchar(1) collate latin1_general_ci default NULL,
  `IND_CCRF` varchar(1) collate latin1_general_ci default NULL,
  `IND_COMB` varchar(1) collate latin1_general_ci default NULL,
  `IND_USINA` varchar(1) collate latin1_general_ci default NULL,
  `IND_VA` varchar(1) collate latin1_general_ci default NULL,
  `IND_EE` varchar(1) collate latin1_general_ci default NULL,
  `IND_CART` varchar(1) collate latin1_general_ci default NULL,
  `IND_FORM` varchar(1) collate latin1_general_ci default NULL,
  `IND_AER` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_DOC` varchar(1) collate latin1_general_ci default NULL,
  `NRO_DE` varchar(11) collate latin1_general_ci default NULL,
  `DT_DE` date default NULL,
  `NAT_EXP` varchar(1) collate latin1_general_ci default NULL,
  `NRO_RE` varchar(12) collate latin1_general_ci default NULL,
  `DT_RE` date default NULL,
  `CHC_EMB` varchar(18) collate latin1_general_ci default NULL,
  `DT_CHC` date default NULL,
  `DT_AVB` date default NULL,
  `TP_CHC` varchar(2) collate latin1_general_ci default NULL,
  `PAIS` varchar(3) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1105` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `CHV_NFE` varchar(44) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1110` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `CHV_NFE` varchar(44) collate latin1_general_ci default NULL,
  `NR_MEMO` varchar(255) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_UNID` (`UNID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_AJ_APUR` varchar(8) collate latin1_general_ci default NULL,
  `SLD_CRED` decimal(21,2) default NULL,
  `CRED_APR` decimal(21,2) default NULL,
  `CRED_RECEB` decimal(21,2) default NULL,
  `CRED_UTIL` decimal(21,2) default NULL,
  `SLD_CRED_FIM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_AJ_APUR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1210` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `TIPO_UTIL` varchar(4) collate latin1_general_ci default NULL,
  `NR_DOC` varchar(255) collate latin1_general_ci default NULL,
  `VL_CRED_UTIL` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`TIPO_UTIL`,`NR_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1300` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `DT_FECH` date default NULL,
  `ESTQ_ABERT` decimal(22,3) default NULL,
  `VOL_ENTR` decimal(22,3) default NULL,
  `VOL_DISP` decimal(22,3) default NULL,
  `VOL_SAIDAS` decimal(22,3) default NULL,
  `ESTQ_ESCR` decimal(22,3) default NULL,
  `VAL_AJ_PERDA` decimal(22,3) default NULL,
  `VAL_AJ_GANHO` decimal(22,3) default NULL,
  `FECH_FISICO` decimal(22,3) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`,`DT_FECH`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1310` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_TANQUE` varchar(3) collate latin1_general_ci default NULL,
  `ESTQ_ABERT` decimal(22,3) default NULL,
  `VOL_ENTR` decimal(22,3) default NULL,
  `VOL_DISP` decimal(22,3) default NULL,
  `VOL_SAIDAS` decimal(22,3) default NULL,
  `ESTQ_ESCR` decimal(22,3) default NULL,
  `VAL_AJ_PERDA` decimal(22,3) default NULL,
  `VAL_AJ_GANHO` decimal(22,3) default NULL,
  `FECH_FISICO` decimal(22,3) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_TANQUE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1320` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_BICO` varchar(255) collate latin1_general_ci default NULL,
  `NR_INTERV` varchar(255) collate latin1_general_ci default NULL,
  `MOT_INTERV` varchar(50) collate latin1_general_ci default NULL,
  `NOM_INTERV` varchar(30) collate latin1_general_ci default NULL,
  `CNPJ_INTERV` varchar(14) collate latin1_general_ci default NULL,
  `CPF_INTERV` varchar(11) collate latin1_general_ci default NULL,
  `VAL_FECHA` decimal(22,3) default NULL,
  `VAL_ABERT` decimal(22,3) default NULL,
  `VOL_AFERI` decimal(22,3) default NULL,
  `VOL_VENDAS` decimal(22,3) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1350` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `SERIE` varchar(255) collate latin1_general_ci default NULL,
  `FABRICANTE` varchar(60) collate latin1_general_ci default NULL,
  `MODELO` varchar(255) collate latin1_general_ci default NULL,
  `TIPO_MEDICAO` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`SERIE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1360` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_LACRE` varchar(20) collate latin1_general_ci default NULL,
  `DAT_APLICACAO` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_LACRE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1370` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_BICO` varchar(3) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `NUM_TANQUE` varchar(3) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_BICO`,`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1390` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PROD` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_PROD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1391` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_REGISTRO` date default NULL,
  `QTD_MOID` decimal(21,2) default NULL,
  `ESTQ_INI` decimal(21,2) default NULL,
  `QTD_PRODUZ` decimal(21,2) default NULL,
  `ENT_ANID_HID` decimal(21,2) default NULL,
  `OUTR_ENTR` decimal(21,2) default NULL,
  `PERDA` decimal(21,2) default NULL,
  `CONS` decimal(21,2) default NULL,
  `SAI_ANI_HID` decimal(21,2) default NULL,
  `SAIDAS` decimal(21,2) default NULL,
  `ESTQ_FIN` decimal(21,2) default NULL,
  `ESTQ_INI_MEL` decimal(21,2) default NULL,
  `PROD_DIA_MEL` decimal(21,2) default NULL,
  `UTIL_MEL` decimal(21,2) default NULL,
  `PROD_ALC_MEL` decimal(21,2) default NULL,
  `OBS` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_REGISTRO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1400` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM_IPM` varchar(60) collate latin1_general_ci default NULL,
  `MUN` varchar(7) collate latin1_general_ci default NULL,
  `VALOR` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM_IPM`,`MUN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1500` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_OPER` varchar(1) collate latin1_general_ci default NULL,
  `IND_EMIT` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `COD_CONS` varchar(2) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `DT_E_S` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_FORN` decimal(21,2) default NULL,
  `VL_SERV_NT` decimal(21,2) default NULL,
  `VL_TERC` decimal(21,2) default NULL,
  `VL_DA` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `COD_INF` varchar(6) collate latin1_general_ci default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFIS` decimal(21,2) default NULL,
  `TP_LIGACAO` varchar(1) collate latin1_general_ci default NULL,
  `COD_GRUPO_TENSAO` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_OPER`,`IND_EMIT`,`COD_PART`,`SER`,`SUB`,`NUM_DOC`,`DT_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1510` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_ITEM` varchar(3) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `COD_CLASS` varchar(4) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `ALIQ_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `IND_REC` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1600` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `TOT_CREDITO` decimal(21,2) default NULL,
  `TOT_DEBITO` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1700` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_DISP` varchar(2) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC_INI` varchar(12) collate latin1_general_ci default NULL,
  `NUM_DOC_FIN` varchar(12) collate latin1_general_ci default NULL,
  `NUM_AUT` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1710` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DOC_INI` varchar(12) collate latin1_general_ci default NULL,
  `NUM_DOC_FIN` varchar(12) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1800` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_CARGA` decimal(21,2) default NULL,
  `VL_PASS` decimal(21,2) default NULL,
  `VL_FAT` decimal(21,2) default NULL,
  `IND_RAT` decimal(14,6) default NULL,
  `VL_ICMS_ANT` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS_APUR` decimal(21,2) default NULL,
  `VL_BC_ICMS_APUR` decimal(21,2) default NULL,
  `VL_DIF` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1900` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_APUR_ICMS` varchar(1) collate latin1_general_ci default NULL,
  `DESCR_COMPL_OUT_APUR` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_APUR_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1910` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_INI`,`DT_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1920` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_TOT_TRANSF_DEBITOS_OA` decimal(21,2) default NULL,
  `VL_TOT_AJ_DEBITOS_OA` decimal(21,2) default NULL,
  `VL_ESTORNOS_CRED_OA` decimal(21,2) default NULL,
  `VL_TOT_TRANSF_CREDITOS_OA` decimal(21,2) default NULL,
  `VL_TOT_AJ_CREDITOS_OA` decimal(21,2) default NULL,
  `VL_ESTORNOS_DEB_OA` decimal(21,2) default NULL,
  `VL_SLD_CREDOR_ANT_OA` decimal(21,2) default NULL,
  `VL_SLD_APURADO_OA` decimal(21,2) default NULL,
  `VL_TOT_DED` decimal(21,2) default NULL,
  `VL_ICMS_RECOLHER_OA` decimal(21,2) default NULL,
  `VL_SLD_CREDOR_TRANSP_OA` decimal(21,2) default NULL,
  `DEB_ESP_OA` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1921` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_AJ_APUR` varchar(8) collate latin1_general_ci default NULL,
  `DESCR_COMPL_AJ` varchar(255) collate latin1_general_ci default NULL,
  `VL_AJ_APUR` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1922` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DA` varchar(255) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(15) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  `PROC` varchar(255) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1923` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_AJ_ITEM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_COD_PART` (`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1925` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_INF_ADIC` varchar(8) collate latin1_general_ci default NULL,
  `VL_INF_ADIC` decimal(21,2) default NULL,
  `DESC_COMPL_AJ` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1926` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_OR` varchar(3) collate latin1_general_ci default NULL,
  `VL_OR` decimal(21,2) default NULL,
  `DT_VCTO` date default NULL,
  `COD_REC` varchar(255) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(15) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  `PROC` varchar(255) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  `MES_REF` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_1` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_9001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_9900` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `REG_BLC` varchar(4) collate latin1_general_ci default NULL,
  `QTD_REG_BLC` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`REG_BLC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_9990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_9` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_9999` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_OPER` varchar(1) collate latin1_general_ci default NULL,
  `IND_EMIT` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `CHV_NFE` varchar(44) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `DT_E_S` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `IND_PGTO` varchar(1) collate latin1_general_ci default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_ABAT_NT` decimal(21,2) default NULL,
  `VL_MERC` decimal(21,2) default NULL,
  `IND_FRT` varchar(1) collate latin1_general_ci default NULL,
  `VL_FRT` decimal(21,2) default NULL,
  `VL_SEG` decimal(21,2) default NULL,
  `VL_OUT_DA` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `VL_IPI` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `VL_PIS_ST` decimal(21,2) default NULL,
  `VL_COFINS_ST` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_EMIT`,`IND_OPER`,`NUM_DOC`,`COD_MOD`,`COD_SIT`,`SER`,`CHV_NFE`,`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c101` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_FCP_UF_DEST` decimal(21,2) default NULL,
  `VL_ICMS_UF_DEST` decimal(21,2) default NULL,
  `VL_ICMS_UF_REM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c105` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `OPER` varchar(1) collate latin1_general_ci default NULL,
  `COD_UF` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c110` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_INF` varchar(6) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_INF`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c111` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(15) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c112` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_DA` varchar(1) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `NUM_DA` varchar(255) collate latin1_general_ci default NULL,
  `COD_AUT` varchar(255) collate latin1_general_ci default NULL,
  `VL_DA` decimal(21,2) default NULL,
  `DT_VCTO` date default NULL,
  `DT_PGTO` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c113` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_OPER` varchar(1) collate latin1_general_ci default NULL,
  `IND_EMIT` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_EMIT`,`NUM_DOC`,`COD_MOD`,`SER`,`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c114` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `ECF_FAB` varchar(21) collate latin1_general_ci default NULL,
  `ECF_CX` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_DOC`,`DT_DOC`,`ECF_FAB`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c115` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_CARGA` varchar(1) collate latin1_general_ci default NULL,
  `CNPJ_COL` varchar(14) collate latin1_general_ci default NULL,
  `IE_COL` varchar(14) collate latin1_general_ci default NULL,
  `CPF_COL` varchar(11) collate latin1_general_ci default NULL,
  `COD_MUN_COL` varchar(7) collate latin1_general_ci default NULL,
  `CNPJ_ENTG` varchar(14) collate latin1_general_ci default NULL,
  `IE_ENTG` varchar(14) collate latin1_general_ci default NULL,
  `CPF_ENTG` varchar(11) collate latin1_general_ci default NULL,
  `COD_MUN_ENTG` varchar(7) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c116` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `NR_SAT` varchar(9) collate latin1_general_ci default NULL,
  `CHV_CFE` varchar(44) collate latin1_general_ci default NULL,
  `NUM_CFE` varchar(6) collate latin1_general_ci default NULL,
  `DT_DOC` varchar(8) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NR_SAT`,`NUM_CFE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c120` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_DOC_IMP` varchar(1) collate latin1_general_ci default NULL,
  `NUM_DOC_IMP` varchar(12) collate latin1_general_ci default NULL,
  `PIS_IMP` decimal(21,2) default NULL,
  `COFINS_IMP` decimal(21,2) default NULL,
  `NUM_ACDRAW` varchar(20) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_DOC_IMP`,`NUM_ACDRAW`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c130` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_SERV_NT` decimal(21,2) default NULL,
  `VL_BC_ISSQN` decimal(21,2) default NULL,
  `VL_ISSQN` decimal(21,2) default NULL,
  `VL_BC_IRRF` decimal(21,2) default NULL,
  `VL_IRRF` decimal(21,2) default NULL,
  `VL_BC_PREV` decimal(21,2) default NULL,
  `VL_PREV` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c140` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_EMIT` varchar(1) collate latin1_general_ci default NULL,
  `IND_TIT` varchar(2) collate latin1_general_ci default NULL,
  `DESC_TIT` varchar(255) collate latin1_general_ci default NULL,
  `NUM_TIT` varchar(255) collate latin1_general_ci default NULL,
  `QTD_PARC` varchar(2) collate latin1_general_ci default NULL,
  `VL_TIT` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c141` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PARC` varchar(2) collate latin1_general_ci default NULL,
  `DT_VCTO` date default NULL,
  `VL_PARC` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PARC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c160` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `VEIC_ID` varchar(7) collate latin1_general_ci default NULL,
  `QTD_VOL` varchar(255) collate latin1_general_ci default NULL,
  `PESO_BRT` decimal(21,2) default NULL,
  `PESO_LIQ` decimal(21,2) default NULL,
  `UF_ID` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c165` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `VEIC_ID` varchar(7) collate latin1_general_ci default NULL,
  `COD_AUT` varchar(255) collate latin1_general_ci default NULL,
  `NR_PASSE` varchar(255) collate latin1_general_ci default NULL,
  `HORA` varchar(6) collate latin1_general_ci default NULL,
  `TEMPER` decimal(20,1) default NULL,
  `QTD_VOL` varchar(255) collate latin1_general_ci default NULL,
  `PESO_BRT` decimal(21,2) default NULL,
  `PESO_LIQ` decimal(21,2) default NULL,
  `NOM_MOT` varchar(60) collate latin1_general_ci default NULL,
  `CPF` varchar(11) collate latin1_general_ci default NULL,
  `UF_ID` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_PART`,`VEIC_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c170` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_ITEM` varchar(3) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `DESCR_COMPL` varchar(255) collate latin1_general_ci default NULL,
  `QTD` decimal(24,5) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `COD_NAT` varchar(10) collate latin1_general_ci default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `ALIQ_ST` decimal(8,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `IND_APUR` varchar(1) collate latin1_general_ci default NULL,
  `CST_IPI` varchar(2) collate latin1_general_ci default NULL,
  `COD_ENQ` varchar(3) collate latin1_general_ci default NULL,
  `VL_BC_IPI` decimal(21,2) default NULL,
  `ALIQ_IPI` decimal(8,2) default NULL,
  `VL_IPI` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS_PERC` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_REAIS` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS_PERC` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_REAIS` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_COD_NAT` (`COD_NAT`),
  KEY `IDX_UNID` (`UNID`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c171` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_TANQUE` varchar(3) collate latin1_general_ci default NULL,
  `QTDE` decimal(22,3) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_TANQUE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c172` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_BC_ISSQN` decimal(21,2) default NULL,
  `ALIQ_ISSQN` decimal(8,2) default NULL,
  `VL_ISSQN` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c173` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `LOTE_MED` varchar(255) collate latin1_general_ci default NULL,
  `QTD_ITEM` decimal(22,3) default NULL,
  `DT_FAB` date default NULL,
  `DT_VAL` date default NULL,
  `IND_MED` varchar(1) collate latin1_general_ci default NULL,
  `TP_PROD` varchar(1) collate latin1_general_ci default NULL,
  `VL_TAB_MAX` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`LOTE_MED`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c174` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_ARM` varchar(1) collate latin1_general_ci default NULL,
  `NUM_ARM` varchar(255) collate latin1_general_ci default NULL,
  `DESCR_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_ARM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c175` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_VEIC_OPER` varchar(1) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `CHASSI_VEIC` varchar(17) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CHASSI_VEIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c176` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD_ULT_E` varchar(2) collate latin1_general_ci default NULL,
  `NUM_DOC_ULT_E` varchar(9) collate latin1_general_ci default NULL,
  `SER_ULT_E` varchar(3) collate latin1_general_ci default NULL,
  `DT_ULT_E` date default NULL,
  `COD_PART_ULT_E` varchar(60) collate latin1_general_ci default NULL,
  `QUANT_ULT_E` decimal(22,3) default NULL,
  `VL_UNIT_ULT_E` decimal(22,3) default NULL,
  `VL_UNIT_BC_ST` decimal(22,3) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART_ULT_E` (`COD_PART_ULT_E`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c177` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_SELO_IPI` varchar(6) collate latin1_general_ci default NULL,
  `QT_SELO_IPI` varchar(12) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c178` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CL_ENQ` varchar(5) collate latin1_general_ci default NULL,
  `VL_UNID` decimal(21,2) default NULL,
  `QUANT_PAD` decimal(22,3) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c179` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `BC_ST_ORIG_DEST` decimal(21,2) default NULL,
  `ICMS_ST_REP` decimal(21,2) default NULL,
  `ICMS_ST_COMPL` decimal(21,2) default NULL,
  `BC_RET` decimal(21,2) default NULL,
  `ICMS_RET` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c190` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `VL_IPI` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c195` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_OBS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c197` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_AJ` varchar(10) collate latin1_general_ci default NULL,
  `DESCR_COMPL_AJ` varchar(255) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_OUTROS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_AJ`,`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c300` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC_INI` varchar(6) collate latin1_general_ci default NULL,
  `NUM_DOC_FIN` varchar(6) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_SER_SUB` (`SER`,`SUB`),
  KEY `IDX_NUM_DOC_INI` (`NUM_DOC_INI`),
  KEY `IDX_NUM_DOC_FIN` (`NUM_DOC_FIN`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`SER`,`SUB`,`NUM_DOC_INI`,`NUM_DOC_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c310` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DOC_CANC` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_DOC_CANC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c320` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c321` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_UNID` (`UNID`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c350` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB_SER` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(6) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `CNPJ_CPF` varchar(14) collate latin1_general_ci default NULL,
  `VL_MERC` decimal(21,2) default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_DOC`,`SER`,`SUB_SER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c370` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_ITEM` varchar(3) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_ITEM`,`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c390` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c400` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `ECF_MOD` varchar(20) collate latin1_general_ci default NULL,
  `ECF_FAB` varchar(21) collate latin1_general_ci default NULL,
  `ECF_CX` varchar(3) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`ECF_MOD`,`ECF_FAB`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c405` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `CRO` varchar(3) collate latin1_general_ci default NULL,
  `CRZ` varchar(6) collate latin1_general_ci default NULL,
  `NUM_COO_FIN` varchar(9) collate latin1_general_ci default NULL,
  `GT_FIN` decimal(21,2) default NULL,
  `VL_BRT` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_DOC`,`CRO`,`CRZ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c410` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c420` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_TOT_PAR` varchar(7) collate latin1_general_ci default NULL,
  `VLR_ACUM_TOT` decimal(21,2) default NULL,
  `NR_TOT` varchar(2) collate latin1_general_ci default NULL,
  `DESCR_NR_TOT` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_TOT_PAR`,`NR_TOT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c425` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_UNID` (`UNID`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c460` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `CPF_CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `NOME_ADQ` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`NUM_DOC`,`DT_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c465` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CHV_CFE` varchar(44) collate latin1_general_ci default NULL,
  `NUM_CCF` varchar(9) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CHV_CFE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c470` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `QTD_CANC` decimal(22,3) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_UNID` (`UNID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c490` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c500` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_OPER` varchar(1) collate latin1_general_ci default NULL,
  `IND_EMIT` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `COD_CONS` varchar(2) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `DT_E_S` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_FORN` decimal(21,2) default NULL,
  `VL_SERV_NT` decimal(21,2) default NULL,
  `VL_TERC` decimal(21,2) default NULL,
  `VL_DA` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `COD_INF` varchar(6) collate latin1_general_ci default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `TP_LIGACAO` varchar(1) collate latin1_general_ci default NULL,
  `COD_GRUPO_TENSAO` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_COD_INF` (`COD_INF`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_OPER`,`IND_EMIT`,`COD_PART`,`COD_MOD`,`SER`,`NUM_DOC`,`DT_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c510` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_ITEM` varchar(3) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `COD_CLASS` varchar(4) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `ALIQ_ST` decimal(8,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `IND_REC` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_UNID` (`UNID`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c590` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c600` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `COD_CONS` varchar(2) collate latin1_general_ci default NULL,
  `QTD_CONS` varchar(255) collate latin1_general_ci default NULL,
  `QTD_CANC` varchar(255) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CONS` varchar(255) collate latin1_general_ci default NULL,
  `VL_FORN` decimal(21,2) default NULL,
  `VL_SERV_NT` decimal(21,2) default NULL,
  `VL_TERC` decimal(21,2) default NULL,
  `VL_DA` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`COD_MUN`,`SER`,`SUB`,`COD_CONS`,`DT_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c601` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DOC_CANC` varchar(9) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_DOC_CANC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c610` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CLASS` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_UNID` (`UNID`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CLASS`,`COD_ITEM`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c690` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c700` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `NRO_ORD_INI` varchar(9) collate latin1_general_ci default NULL,
  `NRO_ORD_FIN` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC_INI` date default NULL,
  `DT_DOC_FIN` date default NULL,
  `NOM_MEST` varchar(15) collate latin1_general_ci default NULL,
  `CHV_COD_DIG` varchar(32) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_SER` (`SER`),
  KEY `IDX_NRO_ORD_INI` (`NRO_ORD_INI`),
  KEY `IDX_NRO_ORD_FIN` (`NRO_ORD_FIN`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`SER`,`NRO_ORD_INI`,`NRO_ORD_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c790` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c791` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`UF`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c800` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `NUM_CFE` varchar(6) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `VL_CFE` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `CNPJ_CPF` varchar(14) collate latin1_general_ci default NULL,
  `NR_SAT` varchar(9) collate latin1_general_ci default NULL,
  `CHV_CFE` varchar(44) collate latin1_general_ci default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_MERC` decimal(21,2) default NULL,
  `VL_OUT_DA` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_PIS_ST` decimal(21,2) default NULL,
  `VL_COFINS_ST` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_SIT`,`NR_SAT`,`NUM_CFE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c850` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c860` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `NR_SAT` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `DOC_INI` varchar(6) collate latin1_general_ci default NULL,
  `DOC_FIM` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NR_SAT`,`DT_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c890` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_C` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_OPER` varchar(1) collate latin1_general_ci default NULL,
  `IND_EMIT` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `CHV_CTE` varchar(44) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `DT_A_P` date default NULL,
  `TP_CT_E` varchar(1) collate latin1_general_ci default NULL,
  `CHV_CTE_REF` varchar(44) collate latin1_general_ci default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `IND_FRT` varchar(1) collate latin1_general_ci default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_NT` decimal(21,2) default NULL,
  `COD_INF` varchar(60) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_COD_INF` (`COD_INF`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_EMIT`,`NUM_DOC`,`COD_MOD`,`COD_SIT`,`SER`,`SUB`,`COD_PART`,`CHV_CTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d101` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_FCP_UF_DEST` decimal(21,2) default NULL,
  `VL_ICMS_UF_DEST` decimal(21,2) default NULL,
  `VL_ICMS_UF_REM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d110` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_ITEM` varchar(3) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `VL_OUT` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d120` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MUN_ORIG` varchar(7) collate latin1_general_ci default NULL,
  `COD_MUN_DEST` varchar(7) collate latin1_general_ci default NULL,
  `VEIC_ID` varchar(7) collate latin1_general_ci default NULL,
  `UF_ID` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d130` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART_CONSG` varchar(60) collate latin1_general_ci default NULL,
  `COD_PART_RED` varchar(60) collate latin1_general_ci default NULL,
  `IND_FRT_RED` varchar(1) collate latin1_general_ci default NULL,
  `COD_MUN_ORIG` varchar(7) collate latin1_general_ci default NULL,
  `COD_MUN_DEST` varchar(7) collate latin1_general_ci default NULL,
  `VEIC_ID` varchar(7) collate latin1_general_ci default NULL,
  `VL_LIQ_FRT` decimal(21,2) default NULL,
  `VL_SEC_CAT` decimal(21,2) default NULL,
  `VL_DESP` decimal(21,2) default NULL,
  `VL_PEDG` decimal(21,2) default NULL,
  `VL_OUT` decimal(21,2) default NULL,
  `VL_FRT` decimal(21,2) default NULL,
  `UF_ID` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART_CONSG` (`COD_PART_CONSG`),
  KEY `IDX_COD_PART_RED` (`COD_PART_RED`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d140` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART_CONSG` varchar(60) collate latin1_general_ci default NULL,
  `COD_MUN_ORIG` varchar(7) collate latin1_general_ci default NULL,
  `COD_MUN_DEST` varchar(7) collate latin1_general_ci default NULL,
  `IND_VEIC` varchar(1) collate latin1_general_ci default NULL,
  `VEIC_ID` varchar(255) collate latin1_general_ci default NULL,
  `IND_NAV` varchar(1) collate latin1_general_ci default NULL,
  `VIAGEM` varchar(255) collate latin1_general_ci default NULL,
  `VL_FRT_LIQ` decimal(21,2) default NULL,
  `VL_DESP_PORT` decimal(21,2) default NULL,
  `VL_DESP_CAR_DESC` decimal(21,2) default NULL,
  `VL_OUT` decimal(21,2) default NULL,
  `VL_FRT_BRT` decimal(21,2) default NULL,
  `VL_FRT_MM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART_CONSG` (`COD_PART_CONSG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d150` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MUN_ORIG` varchar(7) collate latin1_general_ci default NULL,
  `COD_MUN_DEST` varchar(7) collate latin1_general_ci default NULL,
  `VEIC_ID` varchar(255) collate latin1_general_ci default NULL,
  `VIAGEM` varchar(255) collate latin1_general_ci default NULL,
  `IND_TFA` varchar(1) collate latin1_general_ci default NULL,
  `VL_PESO_TX` decimal(21,2) default NULL,
  `VL_TX_TERR` decimal(21,2) default NULL,
  `VL_TX_RED` decimal(21,2) default NULL,
  `VL_OUT` decimal(21,2) default NULL,
  `VL_TX_ADV` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d160` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DESPACHO` varchar(255) collate latin1_general_ci default NULL,
  `CNPJ_CPF_REM` varchar(14) collate latin1_general_ci default NULL,
  `IE_REM` varchar(14) collate latin1_general_ci default NULL,
  `COD_MUN_ORI` varchar(7) collate latin1_general_ci default NULL,
  `CNPJ_CPF_DEST` varchar(14) collate latin1_general_ci default NULL,
  `IE_DEST` varchar(14) collate latin1_general_ci default NULL,
  `COD_MUN_DEST` varchar(7) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d161` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_CARGA` varchar(1) collate latin1_general_ci default NULL,
  `CNPJ_CPF_COL` varchar(14) collate latin1_general_ci default NULL,
  `IE_COL` varchar(14) collate latin1_general_ci default NULL,
  `COD_MUN_COL` varchar(7) collate latin1_general_ci default NULL,
  `CNPJ_CPF_ENTG` varchar(14) collate latin1_general_ci default NULL,
  `IE_ENTG` varchar(14) collate latin1_general_ci default NULL,
  `COD_MUN_ENTG` varchar(7) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d162` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_MERC` decimal(21,2) default NULL,
  `QTD_VOL` varchar(255) collate latin1_general_ci default NULL,
  `PESO_BRT` decimal(21,2) default NULL,
  `PESO_LIQ` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_DOC`,`SER`,`COD_MOD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d170` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART_CONSG` varchar(60) collate latin1_general_ci default NULL,
  `COD_PART_RED` varchar(60) collate latin1_general_ci default NULL,
  `COD_MUN_ORIG` varchar(7) collate latin1_general_ci default NULL,
  `COD_MUN_DEST` varchar(7) collate latin1_general_ci default NULL,
  `OTM` varchar(255) collate latin1_general_ci default NULL,
  `IND_NAT_FRT` varchar(1) collate latin1_general_ci default NULL,
  `VL_LIQ_FRT` decimal(21,2) default NULL,
  `VL_GRIS` decimal(21,2) default NULL,
  `VL_PDG` decimal(21,2) default NULL,
  `VL_OUT` decimal(21,2) default NULL,
  `VL_FRT` decimal(21,2) default NULL,
  `VEIC_ID` varchar(7) collate latin1_general_ci default NULL,
  `UF_ID` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART_CONSG` (`COD_PART_CONSG`),
  KEY `IDX_COD_PART_RED` (`COD_PART_RED`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d180` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_SEQ` varchar(255) collate latin1_general_ci default NULL,
  `IND_EMIT` varchar(1) collate latin1_general_ci default NULL,
  `CNPJ_CPF_EMIT` varchar(14) collate latin1_general_ci default NULL,
  `UF_EMIT` varchar(2) collate latin1_general_ci default NULL,
  `IE_EMIT` varchar(14) collate latin1_general_ci default NULL,
  `COD_MUN_ORIG` varchar(7) collate latin1_general_ci default NULL,
  `CNPJ_CPF_TOM` varchar(14) collate latin1_general_ci default NULL,
  `UF_TOM` varchar(2) collate latin1_general_ci default NULL,
  `IE_TOM` varchar(14) collate latin1_general_ci default NULL,
  `COD_MUN_DEST` varchar(7) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d190` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d195` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_OBS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d197` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_AJ` varchar(10) collate latin1_general_ci default NULL,
  `DESCR_COMPL_AJ` varchar(255) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_OUTROS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_AJ`,`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d300` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DOC_INI` varchar(6) collate latin1_general_ci default NULL,
  `NUM_DOC_FIN` varchar(255) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `DT_DOC` date default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `VL_SEG` decimal(21,2) default NULL,
  `VL_OUT_DESP` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_MOD_SER_SUB` (`COD_MOD`,`SER`,`SUB`),
  KEY `IDX_NUM_DOC_INI` (`NUM_DOC_INI`),
  KEY `IDX_NUM_DOC_FIN` (`NUM_DOC_FIN`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`SER`,`SUB`,`NUM_DOC_INI`,`NUM_DOC_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d301` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DOC_CANC` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_DOC_CANC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d310` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MUN_ORIG` varchar(7) collate latin1_general_ci default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MUN_ORIG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d350` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `ECF_MOD` varchar(20) collate latin1_general_ci default NULL,
  `ECF_FAB` varchar(21) collate latin1_general_ci default NULL,
  `ECF_CX` varchar(3) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`ECF_MOD`,`ECF_FAB`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d355` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `CRO` varchar(3) collate latin1_general_ci default NULL,
  `CRZ` varchar(6) collate latin1_general_ci default NULL,
  `NUM_COO_FIN` varchar(9) collate latin1_general_ci default NULL,
  `GT_FIN` decimal(21,2) default NULL,
  `VL_BRT` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_DOC`,`CRO`,`CRZ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d360` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d365` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_TOT_PAR` varchar(7) collate latin1_general_ci default NULL,
  `VLR_ACUM_TOT` decimal(21,2) default NULL,
  `NR_TOT` varchar(2) collate latin1_general_ci default NULL,
  `DESCR_NR_TOT` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_TOT_PAR`,`NR_TOT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d370` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MUN_ORIG` varchar(7) collate latin1_general_ci default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `QTD_BILH` varchar(255) collate latin1_general_ci default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d390` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ISSQN` decimal(21,2) default NULL,
  `ALIQ_ISSQN` decimal(8,2) default NULL,
  `VL_ISSQN` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d400` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(6) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_PART`,`SER`,`SUB`,`NUM_DOC`,`COD_SIT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d410` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC_INI` varchar(6) collate latin1_general_ci default NULL,
  `NUM_DOC_FIN` varchar(6) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`SER`,`SUB`,`NUM_DOC_INI`,`NUM_DOC_FIN`,`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d411` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DOC_CANC` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d420` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MUN_ORIG` varchar(7) collate latin1_general_ci default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d500` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_OPER` varchar(1) collate latin1_general_ci default NULL,
  `IND_EMIT` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `DT_A_P` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `VL_SERV_NT` decimal(21,2) default NULL,
  `VL_TERC` decimal(21,2) default NULL,
  `VL_DA` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `COD_INF` varchar(6) collate latin1_general_ci default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `TP_ASSINANTE` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_COD_INF` (`COD_INF`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_OPER`,`IND_EMIT`,`COD_PART`,`COD_MOD`,`SER`,`NUM_DOC`,`DT_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d510` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_ITEM` varchar(3) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `COD_CLASS` varchar(4) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `IND_REC` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_UNID` (`UNID`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d530` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_SERV` varchar(1) collate latin1_general_ci default NULL,
  `DT_INI_SERV` date default NULL,
  `DT_FIN_SERV` date default NULL,
  `PER_FISCAL` varchar(6) collate latin1_general_ci default NULL,
  `COD_AREA` varchar(255) collate latin1_general_ci default NULL,
  `TERMINAL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d590` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d600` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `COD_CONS` varchar(2) collate latin1_general_ci default NULL,
  `QTD_CONS` varchar(255) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `VL_SERV_NT` decimal(21,2) default NULL,
  `VL_TERC` decimal(21,2) default NULL,
  `VL_DA` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`COD_MUN`,`SER`,`SUB`,`COD_CONS`,`DT_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d610` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CLASS` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_UNID` (`UNID`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`,`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d690` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d695` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `NRO_ORD_INI` varchar(255) collate latin1_general_ci default NULL,
  `NRO_ORD_FIN` varchar(255) collate latin1_general_ci default NULL,
  `DT_DOC_INI` date default NULL,
  `DT_DOC_FIN` date default NULL,
  `NOM_MEST` varchar(15) collate latin1_general_ci default NULL,
  `CHV_COD_DIG` varchar(32) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_SER` (`SER`),
  KEY `IDX_NRO_ORD_INI` (`NRO_ORD_INI`),
  KEY `IDX_NRO_ORD_FIN` (`NRO_ORD_FIN`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`SER`,`NRO_ORD_INI`,`NRO_ORD_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d696` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `ALIQ_ICMS` decimal(8,2) default NULL,
  `VL_OPR` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  `VL_RED_BC` decimal(21,2) default NULL,
  `COD_OBS` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_OBS` (`COD_OBS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_ICMS`,`CFOP`,`ALIQ_ICMS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d697` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_ICMS_ST` decimal(21,2) default NULL,
  `VL_ICMS_ST` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`UF`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_D` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_DT_INI` (`DT_INI`),
  KEY `IDX_DT_FIN` (`DT_FIN`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_INI`,`DT_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e110` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_TOT_DEBITOS` decimal(21,2) default NULL,
  `VL_AJ_DEBITOS` decimal(21,2) default NULL,
  `VL_TOT_AJ_DEBITOS` decimal(21,2) default NULL,
  `VL_ESTORNOS_CRED` decimal(21,2) default NULL,
  `VL_TOT_CREDITOS` decimal(21,2) default NULL,
  `VL_AJ_CREDITOS` decimal(21,2) default NULL,
  `VL_TOT_AJ_CREDITOS` decimal(21,2) default NULL,
  `VL_ESTORNOS_DEB` decimal(21,2) default NULL,
  `VL_SLD_CREDOR_ANT` decimal(21,2) default NULL,
  `VL_SLD_APURADO` decimal(21,2) default NULL,
  `VL_TOT_DED` decimal(21,2) default NULL,
  `VL_ICMS_RECOLHER` decimal(21,2) default NULL,
  `VL_SLD_CREDOR_TRANSPORTAR` decimal(21,2) default NULL,
  `DEB_ESP` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e111` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_AJ_APUR` varchar(8) collate latin1_general_ci default NULL,
  `DESCR_COMPL_AJ` varchar(255) collate latin1_general_ci default NULL,
  `VL_AJ_APUR` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e112` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DA` varchar(255) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(15) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  `PROC` varchar(255) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e113` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_AJ_ITEM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_COD_PART` (`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e115` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_INF_ADIC` varchar(8) collate latin1_general_ci default NULL,
  `VL_INF_ADIC` decimal(21,2) default NULL,
  `DESCR_COMPL_AJ` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e116` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_OR` varchar(3) collate latin1_general_ci default NULL,
  `VL_OR` decimal(21,2) default NULL,
  `DT_VCTO` date default NULL,
  `COD_REC` varchar(255) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(15) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  `PROC` varchar(255) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  `MES_REF` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_UF` (`UF`),
  KEY `IDX_DT_INI` (`DT_INI`),
  KEY `IDX_DT_FIN` (`DT_FIN`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`UF`,`DT_INI`,`DT_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e210` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV_ST` varchar(1) collate latin1_general_ci default NULL,
  `VL_SLD_CRED_ANT_ST` decimal(21,2) default NULL,
  `VL_DEVOL_ST` decimal(21,2) default NULL,
  `VL_RESSARC_ST` decimal(21,2) default NULL,
  `VL_OUT_CRED_ST` decimal(21,2) default NULL,
  `VL_AJ_CREDITOS_ST` decimal(21,2) default NULL,
  `VL_RETENCAO_ST` decimal(21,2) default NULL,
  `VL_OUT_DEB_ST` decimal(21,2) default NULL,
  `VL_AJ_DEBITOS_ST` decimal(21,2) default NULL,
  `VL_SLD_DEV_ANT_ST` decimal(21,2) default NULL,
  `VL_DEDUCOES_ST` decimal(21,2) default NULL,
  `VL_ICMS_RECOL_ST` decimal(21,2) default NULL,
  `VL_SLD_CRED_ST_TRANSPORTAR` decimal(21,2) default NULL,
  `DEB_ESP_ST` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e220` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_AJ_APUR` varchar(8) collate latin1_general_ci default NULL,
  `DESCR_COMPL_AJ` varchar(255) collate latin1_general_ci default NULL,
  `VL_AJ_APUR` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e230` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DA` varchar(255) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(15) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  `PROC` varchar(255) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e240` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_AJ_ITEM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_COD_PART` (`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e250` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_OR` varchar(3) collate latin1_general_ci default NULL,
  `VL_OR` decimal(21,2) default NULL,
  `DT_VCTO` date default NULL,
  `COD_REC` varchar(255) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(15) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  `PROC` varchar(255) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  `MES_REF` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e300` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`UF`,`DT_FIN`,`DT_INI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e310` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV_DIFAL` varchar(1) collate latin1_general_ci default NULL,
  `VL_SLD_CRED_ANT_DIFAL` decimal(21,2) default NULL,
  `VL_TOT_DEBITOS_DIFAL` decimal(21,2) default NULL,
  `VL_OUT_DEB_DIFAL` decimal(21,2) default NULL,
  `VL_TOT_DEB_FCP` decimal(21,2) default NULL,
  `VL_TOT_CREDITOS_DIFAL` decimal(21,2) default NULL,
  `VL_TOT_CRED_FCP` decimal(21,2) default NULL,
  `VL_OUT_CRED_DIFAL` decimal(21,2) default NULL,
  `VL_SLD_DEV_ANT_DIFAL` decimal(21,2) default NULL,
  `VL_DEDUCOES_DIFAL` decimal(21,2) default NULL,
  `VL_RECOL` decimal(21,2) default NULL,
  `VL_SLD_CRED_TRANSPORTAR` decimal(21,2) default NULL,
  `DEB_ESP_DIFAL` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e311` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_AJ_APUR` varchar(8) collate latin1_general_ci default NULL,
  `DESCR_COMPL_AJ` varchar(255) collate latin1_general_ci default NULL,
  `VL_AJ_APUR` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e312` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_DA` varchar(255) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(15) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  `PROC` varchar(255) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e313` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `CHV_DOCE` varchar(44) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_AJ_ITEM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e316` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_OR` varchar(3) collate latin1_general_ci default NULL,
  `VL_OR` decimal(21,2) default NULL,
  `DT_VCTO` date default NULL,
  `COD_REC` varchar(255) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(15) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  `PROC` varchar(255) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  `MES_REF` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e500` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_APUR` varchar(1) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_APUR`,`DT_INI`,`DT_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e510` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `CST_IPI` varchar(2) collate latin1_general_ci default NULL,
  `VL_CONT_IPI` decimal(21,2) default NULL,
  `VL_BC_IPI` decimal(21,2) default NULL,
  `VL_IPI` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CFOP`,`CST_IPI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e520` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_SD_ANT_IPI` decimal(21,2) default NULL,
  `VL_DEB_IPI` decimal(21,2) default NULL,
  `VL_CRED_IPI` decimal(21,2) default NULL,
  `VL_OD_IPI` decimal(21,2) default NULL,
  `VL_OC_IPI` decimal(21,2) default NULL,
  `VL_SC_IPI` decimal(21,2) default NULL,
  `VL_SD_IPI` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e530` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_AJ` varchar(1) collate latin1_general_ci default NULL,
  `VL_AJ` decimal(21,2) default NULL,
  `COD_AJ` varchar(3) collate latin1_general_ci default NULL,
  `IND_DOC` varchar(1) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(255) collate latin1_general_ci default NULL,
  `DESCR_AJ` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_e990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_E` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_g001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_g110` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  `SALDO_IN_ICMS` decimal(21,2) default NULL,
  `SOM_PARC` decimal(21,2) default NULL,
  `VL_TRIB_EXP` decimal(21,2) default NULL,
  `VL_TOTAL` decimal(21,2) default NULL,
  `IND_PER_SAI` decimal(27,8) default NULL,
  `ICMS_APROP` decimal(21,2) default NULL,
  `SOM_ICMS_OC` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_INI`,`DT_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_g125` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_IND_BEM` varchar(60) collate latin1_general_ci default NULL,
  `DT_MOV` date default NULL,
  `TIPO_MOV` varchar(2) collate latin1_general_ci default NULL,
  `VL_IMOB_ICMS_OP` decimal(21,2) default NULL,
  `VL_IMOB_ICMS_ST` decimal(21,2) default NULL,
  `VL_IMOB_ICMS_FRT` decimal(21,2) default NULL,
  `VL_IMOB_ICMS_DIF` decimal(21,2) default NULL,
  `NUM_PARC` varchar(3) collate latin1_general_ci default NULL,
  `VL_PARC_PASS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_IND_BEM`,`TIPO_MOV`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_g126` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  `NUM_PARC` varchar(3) collate latin1_general_ci default NULL,
  `VL_PARC_PASS` decimal(21,2) default NULL,
  `VL_TRIB_OC` decimal(21,2) default NULL,
  `VL_TOTAL` decimal(21,2) default NULL,
  `IND_PER_SAI` decimal(27,8) default NULL,
  `VL_PARC_APROP` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_DT_INI` (`DT_INI`),
  KEY `IDX_DT_FIN` (`DT_FIN`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_INI`,`DT_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_g130` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_EMIT` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SERIE` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(9) collate latin1_general_ci default NULL,
  `CHV_NFE_CTE` varchar(44) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_EMIT`,`COD_PART`,`COD_MOD`,`SERIE`,`NUM_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_g140` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_ITEM` varchar(3) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_g990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_G` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_h001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_h005` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_INV` date default NULL,
  `VL_INV` decimal(21,2) default NULL,
  `MOT_INV` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_INV`,`MOT_INV`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_h010` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `UNID` varchar(6) collate latin1_general_ci default NULL,
  `QTD` decimal(22,3) default NULL,
  `VL_UNIT` decimal(25,6) default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `IND_PROP` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `TXT_COMPL` varchar(255) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `VL_ITEM_IR` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_UNID` (`UNID`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`,`IND_PROP`,`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_h020` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_ICMS` varchar(3) collate latin1_general_ci default NULL,
  `BL_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_h990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_H` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_k001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_k100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_INI`,`DT_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_k200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_EST` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(20,3) default NULL,
  `IND_EST` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_PART` (`COD_PART`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_EST`,`COD_ITEM`,`IND_EST`,`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_k220` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_MOV` date default NULL,
  `COD_ITEM_ORI` varchar(60) collate latin1_general_ci default NULL,
  `COD_ITEM_DEST` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(20,3) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM_ORI` (`COD_ITEM_ORI`),
  KEY `IDX_COD_ITEM_DEST` (`COD_ITEM_DEST`),
  KEY `IDX_DT_MOV` (`DT_MOV`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_MOV`,`COD_ITEM_ORI`,`COD_ITEM_DEST`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_k230` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_INI_OP` date default NULL,
  `DT_FIN_OP` date default NULL,
  `COD_DOC_OP` varchar(30) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD_ENC` decimal(20,3) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_COD_DOC_OP` (`COD_DOC_OP`),
  KEY `IDX_DT_INI_OP` (`DT_INI_OP`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_DOC_OP`,`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_k235` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_SAIDA` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(20,3) default NULL,
  `COD_INS_SUBST` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_COD_INS_SUBST` (`COD_INS_SUBST`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_SAIDA`,`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_k250` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_PROD` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(20,3) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_DT_PROD` (`DT_PROD`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_PROD`,`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_k255` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_CONS` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `QTD` decimal(20,3) default NULL,
  `COD_INS_SUBST` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_DT_CONS` (`DT_CONS`),
  KEY `IDX_COD_ITEM` (`COD_ITEM`),
  KEY `IDX_COD_INS_SUBST` (`COD_INS_SUBST`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_CONS`,`COD_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_k990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_K` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `tabelaexternareferenciada` (
  `id` bigint(15) NOT NULL auto_increment,
  `tipo` varchar(255) collate latin1_general_ci NOT NULL,
  `versao` int(11) NOT NULL,
  `listaUfs` varchar(100) collate latin1_general_ci default NULL,
  `hash` bigint(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;