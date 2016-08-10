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
  `TIPO_ESCRIT` varchar(1) collate latin1_general_ci default NULL,
  `IND_SIT_ESP` varchar(1) collate latin1_general_ci default NULL,
  `NUM_REC_ANTERIOR` varchar(41) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIN` date default NULL,
  `NOME` varchar(100) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  `SUFRAMA` varchar(9) collate latin1_general_ci default NULL,
  `IND_NAT_PJ` varchar(2) collate latin1_general_ci default NULL,
  `IND_ATIV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
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


CREATE TABLE IF NOT EXISTS `reg_0035` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_SCP` varchar(14) collate latin1_general_ci default NULL,
  `NOME_SCP` varchar(255) collate latin1_general_ci default NULL,
  `INF_COMP` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_SCP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NOME` varchar(100) collate latin1_general_ci default NULL,
  `CPF` varchar(11) collate latin1_general_ci default NULL,
  `CRC` varchar(15) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `CEP` varchar(8) collate latin1_general_ci default NULL,
  `END` varchar(60) collate latin1_general_ci default NULL,
  `NUM` varchar(255) collate latin1_general_ci default NULL,
  `COMPL` varchar(60) collate latin1_general_ci default NULL,
  `BAIRRO` varchar(60) collate latin1_general_ci default NULL,
  `FONE` varchar(11) collate latin1_general_ci default NULL,
  `FAX` varchar(11) collate latin1_general_ci default NULL,
  `EMAIL` varchar(255) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0110` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_INC_TRIB` varchar(1) collate latin1_general_ci default NULL,
  `IND_APRO_CRED` varchar(1) collate latin1_general_ci default NULL,
  `COD_TIPO_CONT` varchar(1) collate latin1_general_ci default NULL,
  `IND_REG_CUM` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0111` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `REC_BRU_NCUM_TRIB_MI` decimal(21,2) default NULL,
  `REC_BRU_NCUM_NT_MI` decimal(21,2) default NULL,
  `REC_BRU_NCUM_EXP` decimal(21,2) default NULL,
  `REC_BRU_CUM` decimal(21,2) default NULL,
  `REC_BRU_TOTAL` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0120` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `MES_DISPENSA` varchar(6) collate latin1_general_ci default NULL,
  `INF_COMP` varchar(90) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`MES_DISPENSA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0140` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_EST` varchar(60) collate latin1_general_ci default NULL,
  `NOME` varchar(100) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `UF` varchar(2) collate latin1_general_ci default NULL,
  `IE` varchar(14) collate latin1_general_ci default NULL,
  `COD_MUN` varchar(7) collate latin1_general_ci default NULL,
  `IM` varchar(255) collate latin1_general_ci default NULL,
  `SUFRAMA` varchar(9) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_0145` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_INC_TRIB` varchar(1) collate latin1_general_ci default NULL,
  `VL_REC_TOT` decimal(21,2) default NULL,
  `VL_REC_ATIV` decimal(21,2) default NULL,
  `VL_REC_DEMAIS_ATIV` decimal(21,2) default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
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
  `END` varchar(60) collate latin1_general_ci default NULL,
  `NUM` varchar(255) collate latin1_general_ci default NULL,
  `COMPL` varchar(60) collate latin1_general_ci default NULL,
  `BAIRRO` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_PART`)
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
  `COD_BARRA` varchar(255) collate latin1_general_ci default NULL,
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
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_INI`,`DT_FIM`)
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


CREATE TABLE IF NOT EXISTS `reg_0208` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_TAB` varchar(2) collate latin1_general_ci default NULL,
  `COD_GRU` varchar(2) collate latin1_general_ci default NULL,
  `MARCA_COM` varchar(60) collate latin1_general_ci default NULL,
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
  `COD_CTA_REF` varchar(60) collate latin1_general_ci default NULL,
  `CNPJ_EST` varchar(14) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CTA`,`DT_ALT`,`COD_CTA_REF`,`CNPJ_EST`)
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
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CCUS`,`DT_ALT`)
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
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `ID_SEC_JUD` varchar(255) collate latin1_general_ci default NULL,
  `ID_VARA` varchar(2) collate latin1_general_ci default NULL,
  `IND_NAT_ACAO` varchar(2) collate latin1_general_ci default NULL,
  `DESC_DEC_JUD` varchar(100) collate latin1_general_ci default NULL,
  `DT_SENT_JUD` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`,`ID_SEC_JUD`,`ID_VARA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1020` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_NAT_ACAO` varchar(2) collate latin1_general_ci default NULL,
  `DT_DEC_ADM` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `PER_APU_CRED` varchar(6) collate latin1_general_ci default NULL,
  `ORIG_CRED` varchar(2) collate latin1_general_ci default NULL,
  `CNPJ_SUC` varchar(14) collate latin1_general_ci default NULL,
  `COD_CRED` varchar(3) collate latin1_general_ci default NULL,
  `VL_CRED_APU` decimal(21,2) default NULL,
  `VL_CRED_EXT_APU` decimal(21,2) default NULL,
  `VL_TOT_CRED_APU` decimal(21,2) default NULL,
  `VL_CRED_DESC_PA_ANT` decimal(21,2) default NULL,
  `VL_CRED_PER_PA_ANT` decimal(21,2) default NULL,
  `VL_CRED_DCOMP_PA_ANT` decimal(21,2) default NULL,
  `SD_CRED_DISP_EFD` decimal(21,2) default NULL,
  `VL_CRED_DESC_EFD` decimal(21,2) default NULL,
  `VL_CRED_PER_EFD` decimal(21,2) default NULL,
  `VL_CRED_DCOMP_EFD` decimal(21,2) default NULL,
  `VL_CRED_TRANS` decimal(21,2) default NULL,
  `VL_CRED_OUT` decimal(21,2) default NULL,
  `SLD_CRED_FIM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`PER_APU_CRED`,`ORIG_CRED`,`CNPJ_SUC`,`COD_CRED`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1300` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_NAT_RET` varchar(2) collate latin1_general_ci default NULL,
  `PR_REC_RET` varchar(6) collate latin1_general_ci default NULL,
  `VL_RET_APU` decimal(21,2) default NULL,
  `VL_RET_DED` decimal(21,2) default NULL,
  `VL_RET_PER` decimal(21,2) default NULL,
  `VL_RET_DCOMP` decimal(21,2) default NULL,
  `SLD_RET` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_NAT_RET`,`PR_REC_RET`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1500` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `PER_APU_CRED` varchar(6) collate latin1_general_ci default NULL,
  `ORIG_CRED` varchar(2) collate latin1_general_ci default NULL,
  `CNPJ_SUC` varchar(14) collate latin1_general_ci default NULL,
  `COD_CRED` varchar(3) collate latin1_general_ci default NULL,
  `VL_CRED_APU` decimal(21,2) default NULL,
  `VL_CRED_EXT_APU` decimal(21,2) default NULL,
  `VL_TOT_CRED_APU` decimal(21,2) default NULL,
  `VL_CRED_DESC_PA_ANT` decimal(21,2) default NULL,
  `VL_CRED_PER_PA_ANT` decimal(21,2) default NULL,
  `VL_CRED_DCOMP_PA_ANT` decimal(21,2) default NULL,
  `SD_CRED_DISP_EFD` decimal(21,2) default NULL,
  `VL_CRED_DESC_EFD` decimal(21,2) default NULL,
  `VL_CRED_PER_EFD` decimal(21,2) default NULL,
  `VL_CRED_DCOMP_EFD` decimal(21,2) default NULL,
  `VL_CRED_TRANS` decimal(21,2) default NULL,
  `VL_CRED_OUT` decimal(21,2) default NULL,
  `SLD_CRED_FIM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`PER_APU_CRED`,`ORIG_CRED`,`CNPJ_SUC`,`COD_CRED`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1700` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_NAT_RET` varchar(2) collate latin1_general_ci default NULL,
  `PR_REC_RET` varchar(6) collate latin1_general_ci default NULL,
  `VL_RET_APU` decimal(21,2) default NULL,
  `VL_RET_DED` decimal(21,2) default NULL,
  `VL_RET_PER` decimal(21,2) default NULL,
  `VL_RET_DCOMP` decimal(21,2) default NULL,
  `SLD_RET` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_NAT_RET`,`PR_REC_RET`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1800` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `INC_IMOB` varchar(90) collate latin1_general_ci default NULL,
  `REC_RECEB_RET` decimal(21,2) default NULL,
  `REC_FIN_RET` decimal(21,2) default NULL,
  `BC_RET` decimal(21,2) default NULL,
  `ALIQ_RET` decimal(8,2) default NULL,
  `VL_REC_UNI` decimal(21,2) default NULL,
  `DT_REC_UNI` date default NULL,
  `COD_REC` varchar(4) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`INC_IMOB`,`ALIQ_RET`,`COD_REC`,`DT_REC_UNI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1809` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_1900` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB_SER` varchar(20) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `VL_TOT_REC` decimal(21,2) default NULL,
  `QUANT_DOC` varchar(255) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ`,`COD_MOD`,`SER`,`SUB_SER`,`COD_SIT`,`CST_PIS`,`CST_COFINS`,`CFOP`,`INFO_COMPL`,`COD_CTA`)
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


CREATE TABLE IF NOT EXISTS `reg_a001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_a010` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_a100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_OPER` varchar(1) collate latin1_general_ci default NULL,
  `IND_EMIT` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(20) collate latin1_general_ci default NULL,
  `SUB` varchar(20) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(128) collate latin1_general_ci default NULL,
  `CHV_NFSE` varchar(128) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `DT_EXE_SERV` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `IND_PGTO` varchar(1) collate latin1_general_ci default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `VL_PIS_RET` decimal(21,2) default NULL,
  `VL_COFINS_RET` decimal(21,2) default NULL,
  `VL_ISS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_EMIT`,`NUM_DOC`,`SER`,`SUB`,`COD_PART`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_a110` (
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


CREATE TABLE IF NOT EXISTS `reg_a111` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_a120` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_TOT_SERV` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `VL_PIS_IMP` decimal(21,2) default NULL,
  `DT_PAG_PIS` date default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `VL_COFINS_IMP` decimal(21,2) default NULL,
  `DT_PAG_COFINS` date default NULL,
  `LOC_EXE_SERV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_a170` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_ITEM` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `DESCR_COMPL` varchar(255) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `IND_ORIG_CRED` varchar(1) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(21,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(8,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_a990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_A` varchar(255) collate latin1_general_ci default NULL,
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


CREATE TABLE IF NOT EXISTS `reg_c010` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `IND_ESCRI` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ`)
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
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_EMIT`,`NUM_DOC`,`COD_MOD`,`SER`,`COD_PART`,`IND_OPER`,`COD_SIT`)
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
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c120` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_DOC_IMP` varchar(1) collate latin1_general_ci default NULL,
  `NUM_DOC_IMP` varchar(10) collate latin1_general_ci default NULL,
  `VL_PIS_IMP` decimal(21,2) default NULL,
  `VL_COFINS_IMP` decimal(21,2) default NULL,
  `NUM_ACDRAW` varchar(20) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_DOC_IMP`,`NUM_ACDRAW`)
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
  `ALIQ_PIS` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c175` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_OPER` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CFOP`,`CST_PIS`,`ALIQ_PIS`,`CST_COFINS`,`ALIQ_COFINS`,`ALIQ_PIS_QUANT`,`ALIQ_COFINS_QUANT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c180` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `DT_DOC_INI` date default NULL,
  `DT_DOC_FIN` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `COD_NCM` varchar(8) collate latin1_general_ci default NULL,
  `EX_IPI` varchar(3) collate latin1_general_ci default NULL,
  `VL_TOT_ITEM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`COD_ITEM`,`COD_NCM`,`EX_IPI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c181` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`CFOP`,`ALIQ_PIS`,`ALIQ_PIS_QUANT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c185` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_COFINS`,`CFOP`,`ALIQ_COFINS`,`ALIQ_COFINS_QUANT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c188` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c190` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `DT_REF_INI` date default NULL,
  `DT_REF_FIN` date default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `COD_NCM` varchar(8) collate latin1_general_ci default NULL,
  `EX_IPI` varchar(3) collate latin1_general_ci default NULL,
  `VL_TOT_ITEM` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`COD_ITEM`,`COD_NCM`,`EX_IPI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c191` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ_CPF_PART` varchar(14) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ_CPF_PART`,`CST_PIS`,`CFOP`,`ALIQ_PIS`,`ALIQ_PIS_QUANT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c195` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ_CPF_PART` varchar(14) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ_CPF_PART`,`CST_COFINS`,`CFOP`,`ALIQ_COFINS`,`ALIQ_COFINS_QUANT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c198` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c199` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_DOC_IMP` varchar(1) collate latin1_general_ci default NULL,
  `NUM_DOC_IMP` varchar(10) collate latin1_general_ci default NULL,
  `VL_PIS_IMP` decimal(21,2) default NULL,
  `VL_COFINS_IMP` decimal(21,2) default NULL,
  `NUM_ACDRAW` varchar(20) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_DOC_IMP`,`NUM_ACDRAW`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c380` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `DT_DOC_INI` date default NULL,
  `DT_DOC_FIN` date default NULL,
  `NUM_DOC_INI` varchar(6) collate latin1_general_ci default NULL,
  `NUM_DOC_FIN` varchar(6) collate latin1_general_ci default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DOC_CANC` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`DT_DOC_INI`,`DT_DOC_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c381` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`COD_ITEM`,`ALIQ_PIS`,`ALIQ_PIS_QUANT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c385` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_COFINS`,`COD_ITEM`,`ALIQ_COFINS`,`ALIQ_COFINS_QUANT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c395` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `SER` varchar(3) collate latin1_general_ci default NULL,
  `SUB_SER` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(44) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`COD_PART`,`SER`,`SUB_SER`,`NUM_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c396` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`,`NAT_BC_CRED`,`CST_PIS`,`ALIQ_PIS`,`CST_COFINS`,`ALIQ_COFINS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c400` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `ECF_MOD` varchar(20) collate latin1_general_ci default NULL,
  `ECF_FAB` varchar(20) collate latin1_general_ci default NULL,
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
  `NUM_COO_FIN` varchar(6) collate latin1_general_ci default NULL,
  `GT_FIN` decimal(21,2) default NULL,
  `VL_BRT` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_DOC`,`CRO`,`CRZ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c481` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`ALIQ_PIS`,`ALIQ_PIS_QUANT`,`COD_ITEM`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c485` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_COFINS`,`ALIQ_COFINS`,`ALIQ_COFINS_QUANT`,`COD_ITEM`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c489` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c490` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_DOC_INI` date default NULL,
  `DT_DOC_FIN` date default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_DOC_INI`,`DT_DOC_FIN`,`COD_MOD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c491` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`,`CST_PIS`,`CFOP`,`ALIQ_PIS`,`ALIQ_PIS_QUANT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c495` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`,`CST_COFINS`,`CFOP`,`ALIQ_COFINS`,`ALIQ_COFINS_QUANT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c499` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c500` (
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
  `NUM_DOC` varchar(60) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `DT_E_S` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `COD_INF` varchar(6) collate latin1_general_ci default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_PART`,`COD_MOD`,`COD_SIT`,`SER`,`SUB`,`NUM_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c501` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`NAT_BC_CRED`,`ALIQ_PIS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c505` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_COFINS`,`NAT_BC_CRED`,`ALIQ_COFINS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c509` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
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
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`ALIQ_PIS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c605` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_COFINS`,`ALIQ_COFINS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c609` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
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
  `DOC_INI` varchar(9) collate latin1_general_ci default NULL,
  `DOC_FIM` varchar(9) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`NR_SAT`,`DT_DOC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c870` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`,`CFOP`,`CST_PIS`,`ALIQ_PIS`,`CST_COFINS`,`ALIQ_COFINS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c880` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_ITEM`,`CFOP`,`CST_PIS`,`ALIQ_PIS_QUANT`,`CST_COFINS`,`ALIQ_COFINS_QUANT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_c890` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
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


CREATE TABLE IF NOT EXISTS `reg_d010` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ`)
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
  `TP_CTE` varchar(1) collate latin1_general_ci default NULL,
  `CHV_CTE_REF` varchar(44) collate latin1_general_ci default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `IND_FRT` varchar(1) collate latin1_general_ci default NULL,
  `VL_SERV` decimal(21,2) default NULL,
  `VL_BC_ICMS` decimal(21,2) default NULL,
  `VL_ICMS` decimal(21,2) default NULL,
  `VL_NT` decimal(21,2) default NULL,
  `COD_INF` varchar(6) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_EMIT`,`NUM_DOC`,`COD_MOD`,`SER`,`SUB`,`COD_PART`,`COD_SIT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d101` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_NAT_FRT` varchar(1) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_NAT_FRT`,`CST_PIS`,`NAT_BC_CRED`,`ALIQ_PIS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d105` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_NAT_FRT` varchar(1) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_NAT_FRT`,`CST_COFINS`,`NAT_BC_CRED`,`ALIQ_COFINS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d111` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `COD_SIT` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC_INI` varchar(9) collate latin1_general_ci default NULL,
  `NUM_DOC_FIN` varchar(9) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `DT_REF` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`COD_SIT`,`SER`,`SUB`,`CFOP`,`DT_REF`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d201` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`ALIQ_PIS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d205` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_COFINS`,`ALIQ_COFINS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d209` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d300` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `SER` varchar(4) collate latin1_general_ci default NULL,
  `SUB` varchar(3) collate latin1_general_ci default NULL,
  `NUM_DOC_INI` varchar(6) collate latin1_general_ci default NULL,
  `NUM_DOC_FIN` varchar(255) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `DT_REF` date default NULL,
  `VL_DOC` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`SER`,`SUB`,`NUM_DOC_INI`,`NUM_DOC_FIN`,`CFOP`,`DT_REF`,`CST_PIS`,`ALIQ_PIS`,`CST_COFINS`,`ALIQ_COFINS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d309` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d350` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `ECF_MOD` varchar(20) collate latin1_general_ci default NULL,
  `ECF_FAB` varchar(20) collate latin1_general_ci default NULL,
  `DT_DOC` date default NULL,
  `CRO` varchar(3) collate latin1_general_ci default NULL,
  `CRZ` varchar(6) collate latin1_general_ci default NULL,
  `NUM_COO_FIN` varchar(6) collate latin1_general_ci default NULL,
  `GT_FIN` decimal(21,2) default NULL,
  `VL_BRT` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`ECF_MOD`,`ECF_FAB`,`DT_DOC`,`CRO`,`CRZ`,`CST_PIS`,`ALIQ_PIS`,`ALIQ_PIS_QUANT`,`CST_COFINS`,`ALIQ_COFINS`,`ALIQ_COFINS_QUANT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d359` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
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
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_EMIT`,`NUM_DOC`,`COD_MOD`,`SER`,`SUB`,`COD_PART`,`COD_SIT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d501` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`NAT_BC_CRED`,`ALIQ_PIS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d505` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_COFINS`,`NAT_BC_CRED`,`ALIQ_COFINS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d509` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
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
  `IND_REC` varchar(1) collate latin1_general_ci default NULL,
  `QTD_CONS` varchar(255) collate latin1_general_ci default NULL,
  `DT_DOC_INI` date default NULL,
  `DT_DOC_FIN` date default NULL,
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
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_MOD`,`COD_MUN`,`SER`,`SUB`,`IND_REC`,`DT_DOC_INI`,`DT_DOC_FIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d601` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CLASS` varchar(4) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CLASS`,`CST_PIS`,`ALIQ_PIS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d605` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CLASS` varchar(4) collate latin1_general_ci default NULL,
  `VL_ITEM` decimal(21,2) default NULL,
  `VL_DESC` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CLASS`,`CST_COFINS`,`ALIQ_COFINS`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_d609` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
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


CREATE TABLE IF NOT EXISTS `reg_f001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f010` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_OPER` varchar(1) collate latin1_general_ci default NULL,
  `COD_PART` varchar(60) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `DT_OPER` date default NULL,
  `VL_OPER` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(23,4) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(23,4) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `IND_ORIG_CRED` varchar(1) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(60) collate latin1_general_ci default NULL,
  `DESC_DOC_OPER` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f111` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f120` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `IDENT_BEM_IMOB` varchar(2) collate latin1_general_ci default NULL,
  `IND_ORIG_CRED` varchar(1) collate latin1_general_ci default NULL,
  `IND_UTIL_BEM_IMOB` varchar(1) collate latin1_general_ci default NULL,
  `VL_OPER_DEP` decimal(21,2) default NULL,
  `PARC_OPER_NAO_BC_CRED` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(60) collate latin1_general_ci default NULL,
  `DESC_BEM_IMOB` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f129` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f130` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `IDENT_BEM_IMOB` varchar(2) collate latin1_general_ci default NULL,
  `IND_ORIG_CRED` varchar(1) collate latin1_general_ci default NULL,
  `IND_UTIL_BEM_IMOB` varchar(1) collate latin1_general_ci default NULL,
  `MES_OPER_AQUIS` varchar(6) collate latin1_general_ci default NULL,
  `VL_OPER_AQUIS` decimal(21,2) default NULL,
  `PARC_OPER_NAO_BC_CRED` decimal(21,2) default NULL,
  `VL_BC_CRED` decimal(21,2) default NULL,
  `IND_NR_PARC` varchar(1) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `COD_CCUS` varchar(60) collate latin1_general_ci default NULL,
  `DESC_BEM_IMOB` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f139` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f150` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `VL_TOT_EST` decimal(21,2) default NULL,
  `EST_IMP` decimal(21,2) default NULL,
  `VL_BC_EST` decimal(21,2) default NULL,
  `VL_BC_MEN_EST` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_CRED_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_CRED_COFINS` decimal(21,2) default NULL,
  `DESC_EST` varchar(100) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NAT_BC_CRED`,`CST_PIS`,`ALIQ_PIS`,`CST_COFINS`,`ALIQ_COFINS`,`DESC_EST`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_OPER` varchar(2) collate latin1_general_ci default NULL,
  `UNID_IMOB` varchar(2) collate latin1_general_ci default NULL,
  `IDENT_EMP` varchar(255) collate latin1_general_ci default NULL,
  `DESC_UNID_IMOB` varchar(90) collate latin1_general_ci default NULL,
  `NUM_CONT` varchar(90) collate latin1_general_ci default NULL,
  `CPF_CNPJ_ADQU` varchar(14) collate latin1_general_ci default NULL,
  `DT_OPER` date default NULL,
  `VL_TOT_VEND` decimal(21,2) default NULL,
  `VL_REC_ACUM` decimal(21,2) default NULL,
  `VL_TOT_REC` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `PERC_REC_RECEB` decimal(8,2) default NULL,
  `IND_NAT_EMP` varchar(1) collate latin1_general_ci default NULL,
  `INF_COMP` varchar(90) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_OPER`,`UNID_IMOB`,`IDENT_EMP`,`DESC_UNID_IMOB`,`CPF_CNPJ_ADQU`,`DT_OPER`,`CST_PIS`,`CST_COFINS`,`ALIQ_PIS`,`ALIQ_COFINS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f205` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_CUS_INC_ACUM_ANT` decimal(21,2) default NULL,
  `VL_CUS_INC_PER_ESC` decimal(21,2) default NULL,
  `VL_CUS_INC_ACUM` decimal(21,2) default NULL,
  `VL_EXC_BC_CUS_INC_ACUM` decimal(21,2) default NULL,
  `VL_BC_CUS_INC` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_CRED_PIS_ACUM` decimal(21,2) default NULL,
  `VL_CRED_PIS_DESC_ANT` decimal(21,2) default NULL,
  `VL_CRED_PIS_DESC` decimal(21,2) default NULL,
  `VL_CRED_PIS_DESC_FUT` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_CRED_COFINS_ACUM` decimal(21,2) default NULL,
  `VL_CRED_COFINS_DESC_ANT` decimal(21,2) default NULL,
  `VL_CRED_COFINS_DESC` decimal(21,2) default NULL,
  `VL_CRED_COFINS_DESC_FUT` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f210` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_CUS_ORC` decimal(21,2) default NULL,
  `VL_EXC` decimal(21,2) default NULL,
  `VL_CUS_ORC_AJU` decimal(21,2) default NULL,
  `VL_BC_CRED` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_CRED_PIS_UTIL` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_CRED_COFINS_UTIL` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`ALIQ_PIS`,`CST_COFINS`,`ALIQ_COFINS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f211` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f500` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_REC_CAIXA` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_DESC_PIS` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_DESC_COFINS` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`ALIQ_PIS`,`CST_COFINS`,`ALIQ_COFINS`,`COD_MOD`,`CFOP`,`COD_CTA`,`INFO_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f509` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f510` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_REC_CAIXA` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_DESC_PIS` decimal(21,2) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_DESC_COFINS` decimal(21,2) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`ALIQ_PIS_QUANT`,`CST_COFINS`,`ALIQ_COFINS_QUANT`,`COD_MOD`,`CFOP`,`COD_CTA`,`INFO_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f519` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f525` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_REC` decimal(21,2) default NULL,
  `IND_REC` varchar(2) collate latin1_general_ci default NULL,
  `CNPJ_CPF` varchar(14) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(60) collate latin1_general_ci default NULL,
  `COD_ITEM` varchar(60) collate latin1_general_ci default NULL,
  `VL_REC_DET` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_REC`,`CNPJ_CPF`,`NUM_DOC`,`COD_ITEM`,`CST_PIS`,`CST_COFINS`,`INFO_COMPL`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f550` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_REC_COMP` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_DESC_PIS` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_DESC_COFINS` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`ALIQ_PIS`,`CST_COFINS`,`ALIQ_COFINS`,`COD_MOD`,`CFOP`,`COD_CTA`,`INFO_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f559` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f560` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_REC_COMP` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_DESC_PIS` decimal(21,2) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(12,4) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_DESC_COFINS` decimal(21,2) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(12,4) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `COD_MOD` varchar(2) collate latin1_general_ci default NULL,
  `CFOP` varchar(4) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`ALIQ_PIS_QUANT`,`CST_COFINS`,`ALIQ_COFINS_QUANT`,`COD_MOD`,`CFOP`,`COD_CTA`,`INFO_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f569` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f600` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_NAT_RET` varchar(2) collate latin1_general_ci default NULL,
  `DT_RET` date default NULL,
  `VL_BC_RET` decimal(23,4) default NULL,
  `VL_RET` decimal(21,2) default NULL,
  `COD_REC` varchar(4) collate latin1_general_ci default NULL,
  `IND_NAT_REC` varchar(1) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `VL_RET_PIS` decimal(21,2) default NULL,
  `VL_RET_COFINS` decimal(21,2) default NULL,
  `IND_DEC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_NAT_RET`,`DT_RET`,`COD_REC`,`IND_NAT_REC`,`CNPJ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f700` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_ORI_DED` varchar(2) collate latin1_general_ci default NULL,
  `IND_NAT_DED` varchar(1) collate latin1_general_ci default NULL,
  `VL_DED_PIS` decimal(21,2) default NULL,
  `VL_DED_COFINS` decimal(21,2) default NULL,
  `VL_BC_OPER` decimal(21,2) default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `INF_COMP` varchar(90) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_ORI_DED`,`IND_NAT_DED`,`CNPJ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f800` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_NAT_EVEN` varchar(2) collate latin1_general_ci default NULL,
  `DT_EVEN` date default NULL,
  `CNPJ_SUCED` varchar(14) collate latin1_general_ci default NULL,
  `PA_CONT_CRED` varchar(6) collate latin1_general_ci default NULL,
  `COD_CRED` varchar(3) collate latin1_general_ci default NULL,
  `VL_CRED_PIS` decimal(21,2) default NULL,
  `VL_CRED_COFINS` decimal(21,2) default NULL,
  `PER_CRED_CIS` decimal(8,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_NAT_EVEN`,`CNPJ_SUCED`,`PA_CONT_CRED`,`COD_CRED`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_f990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_F` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i010` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `IND_ATIV` varchar(2) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ`,`IND_ATIV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_REC_FIN` decimal(21,2) default NULL,
  `CST` varchar(2) collate latin1_general_ci default NULL,
  `VL_TOT_DED_GER` decimal(21,2) default NULL,
  `VL_TOT_DED_ESP` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(10,2) default NULL,
  `VL_PIS` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(10,2) default NULL,
  `VL_COFINS` decimal(21,2) default NULL,
  `INF_COMP` varchar(90) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST`,`ALIQ_PIS`,`ALIQ_COFINS`,`INF_COMP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i199` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_CAMPO` varchar(2) collate latin1_general_ci default NULL,
  `COD_DET` varchar(5) collate latin1_general_ci default NULL,
  `VL_DET` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INF_COMP` varchar(90) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_CAMPO`,`COD_DET`,`COD_CTA`,`INF_COMP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i299` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i300` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_COMP` varchar(8) collate latin1_general_ci default NULL,
  `VL_COMP` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INF_COMP` varchar(90) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_COMP`,`COD_CTA`,`INF_COMP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_i399` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_PROC`)
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CRED` varchar(3) collate latin1_general_ci default NULL,
  `IND_CRED_ORI` varchar(1) collate latin1_general_ci default NULL,
  `VL_BC_CRED` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_CRED` decimal(21,2) default NULL,
  `VL_AJUS_ACRES` decimal(21,2) default NULL,
  `VL_AJUS_REDUC` decimal(21,2) default NULL,
  `VL_CRED_DIF` decimal(21,2) default NULL,
  `VL_CRED_DISP` decimal(21,2) default NULL,
  `IND_DESC_CRED` varchar(1) collate latin1_general_ci default NULL,
  `VL_CRED_DESC` decimal(21,2) default NULL,
  `SLD_CRED` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CRED`,`IND_CRED_ORI`,`ALIQ_PIS`,`ALIQ_PIS_QUANT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m105` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_PIS_TOT` decimal(21,2) default NULL,
  `VL_BC_PIS_CUM` decimal(21,2) default NULL,
  `VL_BC_PIS_NC` decimal(21,2) default NULL,
  `VL_BC_PIS` decimal(21,2) default NULL,
  `QUANT_BC_PIS_TOT` decimal(22,3) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `DESC_CRED` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NAT_BC_CRED`,`CST_PIS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m110` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_AJ` varchar(1) collate latin1_general_ci default NULL,
  `VL_AJ` decimal(21,2) default NULL,
  `COD_AJ` varchar(2) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(255) collate latin1_general_ci default NULL,
  `DESCR_AJ` varchar(255) collate latin1_general_ci default NULL,
  `DT_REF` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_AJ`,`COD_AJ`,`NUM_DOC`,`DESCR_AJ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m115` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DET_VALOR_AJ` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `DET_BC_CRED` decimal(22,3) default NULL,
  `DET_ALIQ` decimal(12,4) default NULL,
  `DT_OPER_AJ` date default NULL,
  `DESC_AJ` varchar(255) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`DET_ALIQ`,`DESC_AJ`,`COD_CTA`,`INFO_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_TOT_CONT_NC_PER` decimal(21,2) default NULL,
  `VL_TOT_CRED_DESC` decimal(21,2) default NULL,
  `VL_TOT_CRED_DESC_ANT` decimal(21,2) default NULL,
  `VL_TOT_CONT_NC_DEV` decimal(21,2) default NULL,
  `VL_RET_NC` decimal(21,2) default NULL,
  `VL_OUT_DED_NC` decimal(21,2) default NULL,
  `VL_CONT_NC_REC` decimal(21,2) default NULL,
  `VL_TOT_CONT_CUM_PER` decimal(21,2) default NULL,
  `VL_RET_CUM` decimal(21,2) default NULL,
  `VL_OUT_DED_CUM` decimal(21,2) default NULL,
  `VL_CONT_CUM_REC` decimal(21,2) default NULL,
  `VL_TOT_CONT_REC` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m205` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_CAMPO` varchar(2) collate latin1_general_ci default NULL,
  `COD_REC` varchar(6) collate latin1_general_ci default NULL,
  `VL_DEBITO` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_CAMPO`,`COD_REC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m210` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CONT` varchar(2) collate latin1_general_ci default NULL,
  `VL_REC_BRT` decimal(21,2) default NULL,
  `VL_BC_CONT` decimal(21,2) default NULL,
  `ALIQ_PIS` decimal(12,4) default NULL,
  `QUANT_BC_PIS` decimal(22,3) default NULL,
  `ALIQ_PIS_QUANT` decimal(23,4) default NULL,
  `VL_CONT_APUR` decimal(21,2) default NULL,
  `VL_AJUS_ACRES` decimal(21,2) default NULL,
  `VL_AJUS_REDUC` decimal(21,2) default NULL,
  `VL_CONT_DIFER` decimal(21,2) default NULL,
  `VL_CONT_DIFER_ANT` decimal(21,2) default NULL,
  `VL_CONT_PER` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CONT`,`ALIQ_PIS_QUANT`,`ALIQ_PIS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m211` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_TIP_COOP` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_CONT_ANT_EXC_COOP` decimal(21,2) default NULL,
  `VL_EXC_COOP_GER` decimal(21,2) default NULL,
  `VL_EXC_ESP_COOP` decimal(21,2) default NULL,
  `VL_BC_CONT` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m220` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_AJ` varchar(1) collate latin1_general_ci default NULL,
  `VL_AJ` decimal(21,2) default NULL,
  `COD_AJ` varchar(2) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(255) collate latin1_general_ci default NULL,
  `DESCR_AJ` varchar(255) collate latin1_general_ci default NULL,
  `DT_REF` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_AJ`,`COD_AJ`,`NUM_DOC`,`DESCR_AJ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m225` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DET_VALOR_AJ` decimal(21,2) default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `DET_BC_CRED` decimal(22,3) default NULL,
  `DET_ALIQ` decimal(12,4) default NULL,
  `DT_OPER_AJ` date default NULL,
  `DESC_AJ` varchar(255) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`DET_ALIQ`,`DESC_AJ`,`COD_CTA`,`INFO_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m230` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `VL_VEND` decimal(21,2) default NULL,
  `VL_NAO_RECEB` decimal(21,2) default NULL,
  `VL_CONT_DIF` decimal(21,2) default NULL,
  `VL_CRED_DIF` decimal(21,2) default NULL,
  `COD_CRED` varchar(3) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ`,`COD_CRED`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m300` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CONT` varchar(2) collate latin1_general_ci default NULL,
  `VL_CONT_APUR_DIFER` decimal(21,2) default NULL,
  `NAT_CRED_DESC` varchar(2) collate latin1_general_ci default NULL,
  `VL_CRED_DESC_DIFER` decimal(21,2) default NULL,
  `VL_CONT_DIFER_ANT` decimal(21,2) default NULL,
  `PER_APUR` varchar(6) collate latin1_general_ci default NULL,
  `DT_RECEB` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CONT`,`NAT_CRED_DESC`,`PER_APUR`,`DT_RECEB`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m350` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_TOT_FOL` decimal(21,2) default NULL,
  `VL_EXC_BC` decimal(21,2) default NULL,
  `VL_TOT_BC` decimal(21,2) default NULL,
  `ALIQ_PIS_FOL` decimal(8,2) default NULL,
  `VL_TOT_CONT_FOL` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m400` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_PIS` varchar(2) collate latin1_general_ci default NULL,
  `VL_TOT_REC` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `DESC_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_PIS`,`COD_CTA`,`DESC_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m410` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NAT_REC` varchar(3) collate latin1_general_ci default NULL,
  `VL_REC` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `DESC_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NAT_REC`,`COD_CTA`,`DESC_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m500` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CRED` varchar(3) collate latin1_general_ci default NULL,
  `IND_CRED_ORI` varchar(1) collate latin1_general_ci default NULL,
  `VL_BC_CRED` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_CRED` decimal(21,2) default NULL,
  `VL_AJUS_ACRES` decimal(21,2) default NULL,
  `VL_AJUS_REDUC` decimal(21,2) default NULL,
  `VL_CRED_DIF` decimal(21,2) default NULL,
  `VL_CRED_DISP` decimal(21,2) default NULL,
  `IND_DESC_CRED` varchar(1) collate latin1_general_ci default NULL,
  `VL_CRED_DESC` decimal(21,2) default NULL,
  `SLD_CRED` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CRED`,`IND_CRED_ORI`,`ALIQ_COFINS`,`ALIQ_COFINS_QUANT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m505` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NAT_BC_CRED` varchar(2) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_COFINS_TOT` decimal(21,2) default NULL,
  `VL_BC_COFINS_CUM` decimal(21,2) default NULL,
  `VL_BC_COFINS_NC` decimal(21,2) default NULL,
  `VL_BC_COFINS` decimal(21,2) default NULL,
  `QUANT_BC_COFINS_TOT` decimal(22,3) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `DESC_CRED` varchar(60) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NAT_BC_CRED`,`CST_COFINS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m510` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_AJ` varchar(1) collate latin1_general_ci default NULL,
  `VL_AJ` decimal(21,2) default NULL,
  `COD_AJ` varchar(2) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(255) collate latin1_general_ci default NULL,
  `DESCR_AJ` varchar(255) collate latin1_general_ci default NULL,
  `DT_REF` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_AJ`,`COD_AJ`,`NUM_DOC`,`DESCR_AJ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m515` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DET_VALOR_AJ` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `DET_BC_CRED` decimal(22,3) default NULL,
  `DET_ALIQ` decimal(12,4) default NULL,
  `DT_OPER_AJ` date default NULL,
  `DESC_AJ` varchar(255) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_COFINS`,`DET_ALIQ`,`DESC_AJ`,`COD_CTA`,`INFO_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m600` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `VL_TOT_CONT_NC_PER` decimal(21,2) default NULL,
  `VL_TOT_CRED_DESC` decimal(21,2) default NULL,
  `VL_TOT_CRED_DESC_ANT` decimal(21,2) default NULL,
  `VL_TOT_CONT_NC_DEV` decimal(21,2) default NULL,
  `VL_RET_NC` decimal(21,2) default NULL,
  `VL_OUT_DED_NC` decimal(21,2) default NULL,
  `VL_CONT_NC_REC` decimal(21,2) default NULL,
  `VL_TOT_CONT_CUM_PER` decimal(21,2) default NULL,
  `VL_RET_CUM` decimal(21,2) default NULL,
  `VL_OUT_DED_CUM` decimal(21,2) default NULL,
  `VL_CONT_CUM_REC` decimal(21,2) default NULL,
  `VL_TOT_CONT_REC` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m605` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_CAMPO` varchar(2) collate latin1_general_ci default NULL,
  `COD_REC` varchar(6) collate latin1_general_ci default NULL,
  `VL_DEBITO` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NUM_CAMPO`,`COD_REC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m610` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CONT` varchar(2) collate latin1_general_ci default NULL,
  `VL_REC_BRT` decimal(21,2) default NULL,
  `VL_BC_CONT` decimal(21,2) default NULL,
  `ALIQ_COFINS` decimal(12,4) default NULL,
  `QUANT_BC_COFINS` decimal(22,3) default NULL,
  `ALIQ_COFINS_QUANT` decimal(23,4) default NULL,
  `VL_CONT_APUR` decimal(21,2) default NULL,
  `VL_AJUS_ACRES` decimal(21,2) default NULL,
  `VL_AJUS_REDUC` decimal(21,2) default NULL,
  `VL_CONT_DIFER` decimal(21,2) default NULL,
  `VL_CONT_DIFER_ANT` decimal(21,2) default NULL,
  `VL_CONT_PER` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CONT`,`ALIQ_COFINS_QUANT`,`ALIQ_COFINS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m611` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_TIP_COOP` varchar(2) collate latin1_general_ci default NULL,
  `VL_BC_CONT_ANT_EXC_COOP` decimal(21,2) default NULL,
  `VL_EXC_COOP_GER` decimal(21,2) default NULL,
  `VL_EXC_ESP_COOP` decimal(21,2) default NULL,
  `VL_BC_CONT` decimal(21,2) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m620` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_AJ` varchar(1) collate latin1_general_ci default NULL,
  `VL_AJ` decimal(21,2) default NULL,
  `COD_AJ` varchar(2) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(255) collate latin1_general_ci default NULL,
  `DESCR_AJ` varchar(255) collate latin1_general_ci default NULL,
  `DT_REF` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`IND_AJ`,`COD_AJ`,`NUM_DOC`,`DESCR_AJ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m625` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DET_VALOR_AJ` decimal(21,2) default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `DET_BC_CRED` decimal(22,3) default NULL,
  `DET_ALIQ` decimal(12,4) default NULL,
  `DT_OPER_AJ` date default NULL,
  `DESC_AJ` varchar(255) collate latin1_general_ci default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_COFINS`,`DET_ALIQ`,`DESC_AJ`,`COD_CTA`,`INFO_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m630` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  `VL_VEND` decimal(21,2) default NULL,
  `VL_NAO_RECEB` decimal(21,2) default NULL,
  `VL_CONT_DIF` decimal(21,2) default NULL,
  `VL_CRED_DIF` decimal(21,2) default NULL,
  `COD_CRED` varchar(3) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ`,`COD_CRED`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m700` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `COD_CONT` varchar(2) collate latin1_general_ci default NULL,
  `VL_CONT_APUR_DIFER` decimal(21,2) default NULL,
  `NAT_BC_CRED_DESC` varchar(2) collate latin1_general_ci default NULL,
  `VL_CRED_DESC_DIFER` decimal(21,2) default NULL,
  `VL_CONT_DIFER_ANT` decimal(21,2) default NULL,
  `PER_APUR` varchar(6) collate latin1_general_ci default NULL,
  `DT_RECEB` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`COD_CONT`,`NAT_BC_CRED_DESC`,`PER_APUR`,`DT_RECEB`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m800` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CST_COFINS` varchar(2) collate latin1_general_ci default NULL,
  `VL_TOT_REC` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `DESC_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CST_COFINS`,`COD_CTA`,`DESC_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m810` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NAT_REC` varchar(3) collate latin1_general_ci default NULL,
  `VL_REC` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `DESC_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`NAT_REC`,`COD_CTA`,`DESC_COMPL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_m990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_M` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_p001` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_MOV` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_p010` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `CNPJ` varchar(14) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`CNPJ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_p100` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `DT_INI` date default NULL,
  `DT_FIM` date default NULL,
  `VL_REC_TOT_EST` decimal(21,2) default NULL,
  `COD_ATIV_ECON` varchar(8) collate latin1_general_ci default NULL,
  `VL_REC_ATIV_ESTAB` decimal(21,2) default NULL,
  `VL_EXC` decimal(21,2) default NULL,
  `VL_BC_CONT` decimal(21,2) default NULL,
  `ALIQ_CONT` decimal(12,4) default NULL,
  `VL_CONT_APU` decimal(21,2) default NULL,
  `COD_CTA` varchar(60) collate latin1_general_ci default NULL,
  `INFO_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`DT_INI`,`DT_FIM`,`COD_ATIV_ECON`,`ALIQ_CONT`,`COD_CTA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_p110` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_CAMPO` varchar(2) collate latin1_general_ci default NULL,
  `COD_DET` varchar(8) collate latin1_general_ci default NULL,
  `DET_VALOR` decimal(21,2) default NULL,
  `INF_COMPL` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_p199` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `NUM_PROC` varchar(20) collate latin1_general_ci default NULL,
  `IND_PROC` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_p200` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `PER_REF` varchar(6) collate latin1_general_ci default NULL,
  `VL_TOT_CONT_APU` decimal(21,2) default NULL,
  `VL_TOT_AJ_REDUC` decimal(21,2) default NULL,
  `VL_TOT_AJ_ACRES` decimal(21,2) default NULL,
  `VL_TOT_CONT_DEV` decimal(21,2) default NULL,
  `COD_REC` varchar(6) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`),
  KEY `IDX_CHAVE_DUPLICIDADE` (`PER_REF`,`COD_REC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_p210` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `IND_AJ` varchar(1) collate latin1_general_ci default NULL,
  `VL_AJ` decimal(21,2) default NULL,
  `COD_AJ` varchar(2) collate latin1_general_ci default NULL,
  `NUM_DOC` varchar(255) collate latin1_general_ci default NULL,
  `DESCR_AJ` varchar(255) collate latin1_general_ci default NULL,
  `DT_REF` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `reg_p990` (
  `ID` bigint(20) NOT NULL,
  `ID_PAI` bigint(20) NOT NULL,
  `LINHA` bigint(20) NOT NULL,
  `HASH` bigint(20) NOT NULL,
  `REG` varchar(4) collate latin1_general_ci default NULL,
  `QTD_LIN_P` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ID_PAI` (`ID_PAI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


CREATE TABLE IF NOT EXISTS `tabelaexternareferenciada` (
  `id` bigint(15) NOT NULL auto_increment,
  `tipo` varchar(255) collate latin1_general_ci NOT NULL,
  `versao` int(11) NOT NULL,
  `hash` bigint(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
