CREATE TABLE IF NOT EXISTS `assinante` (
  `ID_ESCT` bigint(15) NOT NULL auto_increment,
  `hash` bigint(10) NOT NULL,
  `nome` varchar(255) collate latin1_general_ci default NULL,
  `cpf` varchar(11) collate latin1_general_ci default NULL,
  `qualificador` varchar(255) collate latin1_general_ci default NULL,
  `codigoqualificacao` varchar(3) collate latin1_general_ci default NULL,
  `assinou` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`ID_ESCT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `inconsistencia` (
  `ID` bigint(20) NOT NULL auto_increment,
  `TIPO` char(1) collate latin1_general_ci NOT NULL,
  `ID_MENSAGEM` varchar(1024) collate latin1_general_ci NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0000` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `LECD` varchar(4) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  `NOME` varchar(255) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `IE` varchar(255) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  `IM` varchar(255) collate latin1_general_ci default NULL,
  `IND_SIT_ESP` varchar(1) collate latin1_general_ci default NULL,
  `IND_SIT_INI_PER` varchar(1) collate latin1_general_ci default NULL,
  `IND_NIRE` varchar(1) collate latin1_general_ci default NULL,
  `IND_FIN_ESC` varchar(1) collate latin1_general_ci default NULL,
  `COD_HASH_SUB` varchar(40) collate latin1_general_ci default NULL,
  `NIRE_SUBST` varchar(11) collate latin1_general_ci default NULL,
  `IND_GRANDE_PORTE` varchar(1) collate latin1_general_ci default NULL,
  `TIP_ECD` varchar(1) collate latin1_general_ci default NULL,
  `COD_SCP` varchar(14) collate latin1_general_ci default NULL,
  `IDENT_MF` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_DAD` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0007` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ENT_REF` varchar(255) collate latin1_general_ci default NULL,
  `COD_INSCR` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0020` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_DEC` varchar(1) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `IE` varchar(255) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  `IM` varchar(255) collate latin1_general_ci default NULL,
  `NIRE` varchar(11) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_DEC`,`CNPJ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0035` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_SCP` varchar(14) collate latin1_general_ci default NULL,
  `NOME_SCP` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_SCP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0150` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PART` varchar(255) collate latin1_general_ci default NULL,
  `NOME` varchar(255) collate latin1_general_ci default NULL,
  `COD_PAIS` varchar(5) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `CPF` varchar(11) collate latin1_general_ci default NULL,
  `NIT` varchar(11) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `IE` varchar(255) collate latin1_general_ci default NULL,
  `IE_ST` varchar(255) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  `IM` varchar(255) collate latin1_general_ci default NULL,
  `SUFRAMA` varchar(9) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0180` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_REL` varchar(2) collate latin1_general_ci default NULL,
  `DT_INI_REL` date default NULL,
  `DT_FIN_REL` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_9001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_DAD` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_9990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_9` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_9999` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_DAD` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i010` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_ESC` varchar(1) collate latin1_general_ci default NULL,
  `COD_VER_LC` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i012` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_ORD` varchar(255) collate latin1_general_ci default NULL,
  `NAT_LIVRO` varchar(80) collate latin1_general_ci default NULL,
  `TIPO` varchar(1) collate latin1_general_ci default NULL,
  `COD_HASH_AUX` varchar(40) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i015` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CTA_RES` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i020` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `REG_COD` varchar(4) collate latin1_general_ci default NULL,
  `NUM_AD` varchar(255) collate latin1_general_ci default NULL,
  `CAMPO` varchar(255) collate latin1_general_ci default NULL,
  `DESCRICAO` varchar(255) collate latin1_general_ci default NULL,
  `TIPO` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`REG_COD`,`NUM_AD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i030` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DNRC_ABERT` varchar(17) collate latin1_general_ci default NULL,
  `NUM_ORD` varchar(18) collate latin1_general_ci default NULL,
  `NAT_LIVR` varchar(80) collate latin1_general_ci default NULL,
  `QTD_LIN` varchar(255) collate latin1_general_ci default NULL,
  `NOME` varchar(255) collate latin1_general_ci default NULL,
  `NIRE` varchar(11) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `DT_ARQ` date default NULL,
  `DT_ARQ_CONV` date default NULL,
  `DESC_MUN` varchar(255) collate latin1_general_ci default NULL,
  `DT_EX_SOCIAL` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i050` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_ALT` date default NULL,
  `COD_NAT` varchar(2) collate latin1_general_ci default NULL,
  `IND_CTA` varchar(1) collate latin1_general_ci default NULL,
  `NIVEL` varchar(255) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `COD_CTA_SUP` varchar(255) collate latin1_general_ci default NULL,
  `CTA` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_CTA` (`COD_CTA`),
  KEY `IDX_IND_CTA` (`IND_CTA`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_ALT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i051` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_PLAN_REF` varchar(2) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(255) collate latin1_general_ci default NULL,
  `COD_CTA_REF` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_PLAN_REF`,`COD_CCUS`,`COD_CTA_REF`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i052` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(255) collate latin1_general_ci default NULL,
  `COD_AGL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_AGL` (`COD_AGL`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CCUS`,`COD_AGL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i053` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_IDT` varchar(6) collate latin1_general_ci default NULL,
  `COD_CNT_CORR` varchar(255) collate latin1_general_ci default NULL,
  `NAT_SUB_CNT` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CNT_CORR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i075` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_HIST` varchar(255) collate latin1_general_ci default NULL,
  `DESCR_HIST` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_HIST`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_ALT` date default NULL,
  `COD_CCUS` varchar(255) collate latin1_general_ci default NULL,
  `CCUS` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_CCUS` (`COD_CCUS`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_ALT`,`COD_CCUS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i150` (
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


CREATE TABLE IF NOT EXISTS `reg_i151` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `ASSIN_DIG` mediumtext collate latin1_general_ci,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i155` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(255) collate latin1_general_ci default NULL,
  `VL_SLD_INI` decimal(21,2) default NULL,
  `IND_DC_INI` varchar(1) collate latin1_general_ci default NULL,
  `VL_DEB` decimal(21,2) default NULL,
  `VL_CRED` decimal(21,2) default NULL,
  `VL_SLD_FIN` decimal(21,2) default NULL,
  `IND_DC_FIN` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CTA`,`COD_CCUS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i157` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(255) collate latin1_general_ci default NULL,
  `VL_SLD_INI` decimal(21,2) default NULL,
  `IND_DC_INI` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_LCTO` varchar(255) collate latin1_general_ci default NULL,
  `DT_LCTO` date default NULL,
  `VL_LCTO` decimal(21,2) default NULL,
  `IND_LCTO` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_DT_LCTO` (`DT_LCTO`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_LCTO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i250` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(255) collate latin1_general_ci default NULL,
  `VL_DC` decimal(21,2) default NULL,
  `IND_DC` varchar(1) collate latin1_general_ci default NULL,
  `NUM_ARQ` varchar(255) collate latin1_general_ci default NULL,
  `COD_HIST_PAD` varchar(255) collate latin1_general_ci default NULL,
  `HIST` mediumtext collate latin1_general_ci,
  `COD_PART` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_COD_CTA` (`COD_CTA`),
  KEY `IDX_ID_PAI_IND_DC` (`ID_PAI`,`IND_DC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i300` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_BCTE` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_BCTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i310` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(255) collate latin1_general_ci default NULL,
  `VAL_DEBD` decimal(21,2) default NULL,
  `VAL_CREDD` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CTA`,`COD_CCUS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i350` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_RES` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_RES`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i355` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(255) collate latin1_general_ci default NULL,
  `VL_CTA` decimal(21,2) default NULL,
  `IND_DC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CTA`,`COD_CCUS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i500` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `TAM_FONTE` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i510` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NM_CAMPO` varchar(16) collate latin1_general_ci default NULL,
  `DESC_CAMPO` varchar(50) collate latin1_general_ci default NULL,
  `TIPO_CAMPO` varchar(1) collate latin1_general_ci default NULL,
  `TAM_CAMPO` varchar(3) collate latin1_general_ci default NULL,
  `DEC_CAMPO` varchar(2) collate latin1_general_ci default NULL,
  `COL_CAMPO` varchar(3) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i550` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i555` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_I` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_DAD` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j005` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  `ID_DEM` varchar(1) collate latin1_general_ci default NULL,
  `CAB_DEM` mediumtext collate latin1_general_ci,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_AGL` varchar(255) collate latin1_general_ci default NULL,
  `NIVEL_AGL` varchar(255) collate latin1_general_ci default NULL,
  `IND_GRP_BAL` varchar(1) collate latin1_general_ci default NULL,
  `DESCR_COD_AGL` varchar(255) collate latin1_general_ci default NULL,
  `VL_CTA` decimal(21,2) default NULL,
  `IND_DC_BAL` varchar(1) collate latin1_general_ci default NULL,
  `VL_CTA_INI` decimal(21,2) default NULL,
  `IND_DC_BAL_INI` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_AGL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j150` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_AGL` varchar(255) collate latin1_general_ci default NULL,
  `NIVEL_AGL` varchar(255) collate latin1_general_ci default NULL,
  `DESCR_COD_AGL` varchar(255) collate latin1_general_ci default NULL,
  `VL_CTA` decimal(21,2) default NULL,
  `IND_VL` varchar(1) collate latin1_general_ci default NULL,
  `VL_CTA_ULT_DRE` decimal(21,2) default NULL,
  `IND_VL_ULT_DRE` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_AGL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_HIST_FAT` varchar(255) collate latin1_general_ci default NULL,
  `DESC_FAT` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_HIST_FAT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j210` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_TIP` varchar(1) collate latin1_general_ci default NULL,
  `COD_AGL` varchar(255) collate latin1_general_ci default NULL,
  `DESCR_COD_AGL` varchar(255) collate latin1_general_ci default NULL,
  `VL_CTA` decimal(21,2) default NULL,
  `IND_DC_CTA` varchar(1) collate latin1_general_ci default NULL,
  `VL_CTA_INI` decimal(21,2) default NULL,
  `IND_DC_CTA_INI` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_AGL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j215` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_HIST_FAT` varchar(255) collate latin1_general_ci default NULL,
  `VL_FAT_CONT` decimal(21,2) default NULL,
  `IND_DC_FAT` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_HIST_FAT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j800` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `ARQ_RTF` varchar(255) collate latin1_general_ci default NULL,
  `IND_FIN_RTF` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j900` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DNRC_ENCER` varchar(21) collate latin1_general_ci default NULL,
  `NUM_ORD` varchar(255) collate latin1_general_ci default NULL,
  `NAT_LIVRO` varchar(80) collate latin1_general_ci default NULL,
  `NOME` varchar(255) collate latin1_general_ci default NULL,
  `QTD_LIN` varchar(255) collate latin1_general_ci default NULL,
  `DT_INI_ESCR` date default NULL,
  `DT_FIN_ESCR` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j930` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IDENT_NOM` varchar(255) collate latin1_general_ci default NULL,
  `IDENT_CPF` varchar(11) collate latin1_general_ci default NULL,
  `IDENT_QUALIF` varchar(255) collate latin1_general_ci default NULL,
  `COD_ASSIN` varchar(3) collate latin1_general_ci default NULL,
  `IND_CRC` varchar(255) collate latin1_general_ci default NULL,
  `EMAIL` varchar(60) collate latin1_general_ci default NULL,
  `FONE` varchar(14) collate latin1_general_ci default NULL,
  `UF_CRC` varchar(2) collate latin1_general_ci default NULL,
  `NUM_SEQ_CRC` varchar(255) collate latin1_general_ci default NULL,
  `DT_CRC` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IDENT_CPF`,`COD_ASSIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j935` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NOME_AUDITOR` varchar(255) collate latin1_general_ci default NULL,
  `COD_CVM_AUDITOR` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_j990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_J` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `temp_i155` (
  `MES` varchar(2) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `SOMA_CRED` decimal(21,2) default NULL,
  `SOMA_DEB` decimal(21,2) default NULL,
  KEY `MES` (`MES`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `temp_i250` (
  `MES` varchar(2) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `SOMA_CRED` decimal(21,2) default NULL,
  `SOMA_DEB` decimal(21,2) default NULL,
  KEY `MES` (`MES`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `temp_i250_res` (
  `DT_RES` date default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `SOMA` decimal(21,2) default NULL,
  KEY `DT_RES` (`DT_RES`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `temp_i355` (
  `DT_RES` date default NULL,
  `COD_CTA` varchar(255) collate latin1_general_ci default NULL,
  `SOMA` decimal(21,2) default NULL,
  KEY `DT_RES` (`DT_RES`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
