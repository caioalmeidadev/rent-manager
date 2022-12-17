-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.33 - MySQL Community Server (GPL)
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para vando
CREATE DATABASE IF NOT EXISTS `vando` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vando`;

-- Copiando estrutura para tabela vando.tb_auditoria
CREATE TABLE IF NOT EXISTS `tb_auditoria` (
  `id_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `dt_lancamento` date DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `tipo_operacao` varchar(100) DEFAULT NULL,
  `info_adcionais` text,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_bairros
CREATE TABLE IF NOT EXISTS `tb_bairros` (
  `id_bairro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `obs` varchar(120) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bairro`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_clientes
CREATE TABLE IF NOT EXISTS `tb_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome_razao` varchar(120) DEFAULT NULL,
  `apelido_fantasia` varchar(120) DEFAULT NULL,
  `telefone1` varchar(14) DEFAULT NULL,
  `telefone2` varchar(14) DEFAULT NULL,
  `cpf_cnpj` varchar(14) DEFAULT NULL,
  `fl_tipo_pessoa` char(1) DEFAULT NULL,
  `rg` varchar(12) DEFAULT NULL,
  `rg_uf` varchar(2) DEFAULT NULL,
  `rg_orgao_emisor` varchar(45) DEFAULT NULL,
  `cnh` varchar(45) DEFAULT NULL,
  `ref_nome_1` varchar(120) DEFAULT NULL,
  `ref_contato_1` varchar(14) DEFAULT NULL,
  `ref_nome_2` varchar(120) DEFAULT NULL,
  `ref_contato_2` varchar(14) DEFAULT NULL,
  `endereco` varchar(160) DEFAULT NULL,
  `nu_endereco` varchar(8) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `obs` varchar(160) DEFAULT NULL,
  `fl_status` char(1) DEFAULT 'A',
  `estado_id` int(11) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  `bairro_id` int(11) DEFAULT NULL,
  `insc_est` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_contas_receber
CREATE TABLE IF NOT EXISTS `tb_contas_receber` (
  `id_conta_receber` int(11) NOT NULL AUTO_INCREMENT,
  `id_locacao` int(11) DEFAULT NULL,
  `vl_total` decimal(10,2) DEFAULT NULL,
  `vl_recebido` decimal(10,2) DEFAULT NULL,
  `dt_pagamento` date DEFAULT NULL,
  PRIMARY KEY (`id_conta_receber`)
) ENGINE=InnoDB AUTO_INCREMENT=1094 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_empresa
CREATE TABLE IF NOT EXISTS `tb_empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `razao_social` varchar(120) DEFAULT NULL,
  `nome_fantasia` varchar(80) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `ins_est` varchar(14) DEFAULT NULL,
  `endereco` varchar(160) DEFAULT NULL,
  `nu_endereco` varchar(8) DEFAULT NULL,
  `bairro` varchar(80) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `telefone1` varchar(12) DEFAULT NULL,
  `telefone2` varchar(12) DEFAULT NULL,
  `municipio` varchar(80) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_estados
CREATE TABLE IF NOT EXISTS `tb_estados` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `obs` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_locacao
CREATE TABLE IF NOT EXISTS `tb_locacao` (
  `id_locacao` int(11) NOT NULL AUTO_INCREMENT,
  `data_abertura` date DEFAULT NULL,
  `data_retorno` date DEFAULT NULL,
  `fl_situacao` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `cliente_fone` varchar(14) DEFAULT NULL,
  `veiculo_id` int(11) DEFAULT NULL,
  `km_abertura` varchar(10) DEFAULT NULL,
  `km_fechamento` varchar(10) DEFAULT NULL,
  `vl_diaria` decimal(12,2) DEFAULT NULL,
  `vl_desconto` decimal(12,2) DEFAULT NULL,
  `vl_subtotal` decimal(12,2) DEFAULT NULL,
  `vl_total` decimal(12,2) DEFAULT NULL,
  `obs` text,
  `pc_desconto` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_locacao`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_municipios
CREATE TABLE IF NOT EXISTS `tb_municipios` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `sigla` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_parametros
CREATE TABLE IF NOT EXISTS `tb_parametros` (
  `id_paramentros` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) DEFAULT NULL,
  `img_fundo` blob,
  `img_locacao` blob,
  PRIMARY KEY (`id_paramentros`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_usuarios
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  `empresa_id` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_usuario_acesso
CREATE TABLE IF NOT EXISTS `tb_usuario_acesso` (
  `id_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_acesso` varchar(50) DEFAULT 'N',
  `cad_usuario` char(1) DEFAULT 'N',
  `cad_veiculo` char(1) DEFAULT 'N',
  `cad_cliente` char(1) DEFAULT 'N',
  `cad_bairro` char(1) DEFAULT 'N',
  `cad_municipio` char(1) DEFAULT 'N',
  `cad_estado` char(1) DEFAULT 'N',
  `nova_locacao` char(1) DEFAULT 'N',
  `cancela_locacao` char(1) DEFAULT 'N',
  `finaliza_locacao` char(1) DEFAULT 'N',
  `rel_clientes` char(1) DEFAULT 'N',
  `rel_recibo` char(1) DEFAULT 'N',
  `rel_contrato` char(1) DEFAULT 'N',
  `config` char(1) DEFAULT 'N',
  `cad_empresa` char(1) DEFAULT 'N',
  `cad_parametros` char(1) DEFAULT 'N',
  `cad_acesso_usuario` char(1) DEFAULT 'N',
  `rel_veiculos` char(1) DEFAULT 'N',
  `rel_locacoes` char(1) DEFAULT 'N',
  `dar_desconto_locacao` char(1) DEFAULT 'N',
  `prc_desconto_locacao` decimal(10,2) DEFAULT '0.00',
  `altera_vl_diaria` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_acesso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela vando.tb_veiculos
CREATE TABLE IF NOT EXISTS `tb_veiculos` (
  `id_veiculo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(150) DEFAULT NULL,
  `fl_combustivel` varchar(15) DEFAULT NULL,
  `ano_veiculo` varchar(10) DEFAULT NULL,
  `cor_veiculo` varchar(45) DEFAULT NULL,
  `marca_veiculo` varchar(45) DEFAULT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `chassis` varchar(45) DEFAULT NULL,
  `valor_veiculo` decimal(10,2) DEFAULT NULL,
  `km_compra` varchar(45) DEFAULT NULL,
  `km_atual` varchar(45) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `fl_tipo_veiculo` varchar(45) DEFAULT NULL,
  `fl_locacao` char(1) DEFAULT 'N',
  `fl_status_veiculo` varchar(45) DEFAULT NULL,
  `vl_diaria` decimal(10,2) DEFAULT NULL,
  `modelo_veiculo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_veiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
