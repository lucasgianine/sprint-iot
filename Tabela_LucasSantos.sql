-- Usar o banco de dados LuminusTECH
USE luminustech;

-- -------------------------------- Cadastro de usuários
CREATE TABLE cadastroCPF (
ID_USUARIO INT PRIMARY KEY auto_increment,
NOME_SOCIAL VARCHAR(40), -- Nome Social para inclusão, não obrigatório
NOME_COMPLETO VARCHAR(80) NOT NULL, -- NOT NULL para valor obrigatório
CPF CHAR(11) NOT NULL,
GENERO CHAR(3) NOT NULL, constraint chkGenero CHECK(GENERO in ('MAS', 'FEM', 'OUT')), -- MAS = Masculino, FEM = Feminino e OUT = Outro
DATA_NASCIMENTO DATE NOT NULL,
TELEFONE VARCHAR(20) NOT NULL,
EMAIL VARCHAR(100) NOT NULL,
SENHA VARCHAR(100) NOT NULL
);

INSERT INTO cadastroCPF VALUES
	(null, 'Noá Santana Miglio', 'Noah Miglio Santana', 11111111101, 'MAS', '1999-01-27', '11 911111111', 'noa.miglio@sptech.school', '**************'),
	(null, null, 'Rafael Alves Reis', 22222222202, 'MAS', '2002-05-12', '11 988888888', 'rafael.areis@sptech.school', '*****************'),
	(null, null, 'Murilo Mazzoni', 11111111103, 'MAS', '2005-02-27', '11 977777777', 'murilo.mazzoni@sptech.school', '**********'),
	(null, null, 'Lucas dos Santos', 44444444404, 'MAS', '2003-11-04', '11 966666666', 'lucas.esilva@sptech.school', '*************'),
	(null, null, 'Luís Felipe Barbosa', 55555555505, 'MAS', '2004-04-11', '11 955555555', 'luis.felipeb@sptech.school', '************'),
	(null, null, 'Daniel Rios', 66666666606, 'MAS', '2003-04-24', '11 944444444', 'daniel.rios@sptech.school', '*************'),
	(null, null, 'Vivian Silva', 77777777707, 'FEM', '1990-10-17', '11 933333333', 'vivian.silva@sptech.school', '*****************'),
	(null, null, 'Fernanda Caramico', 88888888808, 'FEM', '1998-09-12', '11 922222222', 'fernanda.caramico@sptech.school', '***************'),
	(null, null, 'Braian Braga', 99999999909, 'MAS', '1999-05-05', '11 900000000', 'braian.braga@sptech.school', '**************'),
	(null, 'Raphael Veiga Palmeiras', 'Raphael Veiga', 12345678901, 'OUT', '2000-07-13', '11 912341234', 'raphael.veiga@sptech.school', '**************');

-- -------------------------------- Cadastro de empresas
CREATE TABLE cadastroCNPJ (
ID_EMPRESA INT PRIMARY KEY auto_increment,
NOME_EMPRESA VARCHAR(40) NOT NULL,
CNPJ CHAR(14) NOT NULL,
ENDERECO VARCHAR(100) NOT NULL,
CEP CHAR(8) NOT NULL,
ESTADO CHAR(2) NOT NULL,
TELEFONE VARCHAR(20) NOT NULL,
TELEFONE2 VARCHAR(20),
EMAIL VARCHAR(100) NOT NULL,
COD_VERIFI VARCHAR(100) NOT NULL
);

INSERT INTO cadastroCNPJ VALUES
	(null, 'SPTech - São Paulo Tech School Ltda', 05312647000172, 'Rua Haddock Lobo, 595', 01414001, 'SP', '11 35894043',null, 'sptech@school', '¨hs8Hla(032xjakasdkmd'),
    (null, 'STAND', 3059216283020, 'Rua Aeroporto Novo, 334', 01178002, 'SP', '11 995630812', '11 921729031', 'stand@contato.com.br', '3*7dsaKSDK¨21SADsdc;'),
    (null, 'Carlinhos - Adegaria', 9234567099212, 'Rua Esquina Redonda, 72', 01112223, 'SP', '11 87540999',null, 'carlos.baresquina@hotmail.com', 'jsa*932Klas9JAS@9456f'),
    (null, 'LogiSpace', 50602977000157, 'Rua Hiderahu Okagawa, 653', 17527220, 'SP', '14 36831575',null, 'logispace@gmail.com', '#Y3wfnHSDFS832@NACd'),
    (null, 'Fish In The Bar', 006820278366, 'Rua Doutor Abelardo de Andrade, 283', 03447120, 'SP', '11 35535511',null, 'fishinthebar@contato.com.br', '@$4afncnx+KSDN_SA34'),
    (null, 'C6Bank Logistic', 77377394000126, 'Rua Antônio Bernardes de Oliveira, 387', 05616040, 'SP', '11 28618758',null, 'logistic@carbon6.bank', '_98aDNn_AKSDas21$445;'),
    (null, 'Ambev', 0172818100010, 'Estrada Gentil Lorenção, 132', 18619232, 'SP', '14 39697934',null, 'contato@ambev.com.br', '@4324((@dsanfcJASKDL3'),
    (null, 'Vicente e Luís Entregas Expressas Ltda', 25630890000146, 'Rua Manoel Raimundo da Silva, 508', 01213253, 'SP', '11 25258292',null, 'fabricacao@vicenteeluisentregasexpressasltda.com.br', 'DSAFHG37ksadj031'),
    (null, 'Renan e Theo Adega ME', 65301170000151, 'Rua Soldado Benedito Patrício, 144', 07031100, 'SP', '11 27364651',null, 'contabilidade@renanetheoadegame.com.br', 'faFKA2++00_32sacncÇ~'),
    (null, 'Julia Locações de Automóveis ME', 48365044000141, 'Rua João Carlos Vieira, 453', 19909030, 'SP', '14 37349424',null, 'fiscal@julialocacoesdeautomoveisme.com.br', 'kasccsJAS*5328)*@k42>');

-- -------------------------------- Tabela de sensores
CREATE TABLE sensores (
ID_SENSOR INT PRIMARY KEY auto_increment,
TIPO_SENSOR CHAR(4) NOT NULL, constraint chkTipo CHECK(tipo_sensor in ('MOVI')), -- MOVI para Movimento
NOME_SENSOR VARCHAR(20) NOT NULL,
DATA_COLETADA DATETIME NOT NULL, -- Data e hora que o dado do sensor foi coletado
-- Pretendemos no futuro colocar chave estrangeira das empresas que coletamos os dados.
LOCALIZACAO VARCHAR(80) NOT NULL, -- Localização do sensor no exato momento que foi coletado
STATUS_SENSOR CHAR(4) NOT NULL, constraint chkStatus CHECK(STATUS_SENSOR in ('ATIV', 'INAT', 'MANU')), -- ATIV para Ativo, INAT para Inativo e MANU para Manutenção
QUANTIDADE DOUBLE NOT NULL
);

INSERT INTO sensores VALUES
	(null, 'MOVI', 'TRC5000', '2023-03-03 15:37:45', 'Galpão de armazenamento (Abaixo do Térreo)', 'ATIV', 8),
	(null, 'MOVI', 'TRC5000', '2023-03-03 16:55:12', 'Galpão de mercadoria', 'MANU', 4),
	(null, 'MOVI', 'TRC5000', '2023-03-05 13:46:11', 'Galpão Logístico', 'ATIV', 3),
	(null, 'MOVI', 'TRC5000', '2023-03-05 14:00:59', 'Galpão Logístico', 'ATIV', 3),
	(null, 'MOVI', 'TRC5000', '2023-03-19 18:01:56', 'Galpão de mercadoria', 'ATIV', 3),
	(null, 'MOVI', 'TRC5000', '2023-03-25 10:17:18', 'Galpão Logístico', 'ATIV', 6),
	(null, 'MOVI', 'TRC5000', '2023-03-25 11:21:18', 'Galpão Logístico', 'INAT', 6),
	(null, 'MOVI', 'TRC5000', '2023-03-25 17:09:26', 'Galpão de mercadoria', 'MANU', 2),
	(null, 'MOVI', 'TRC5000', '2023-03-26 13:07:55', 'Galpão Logístico', 'INAT', 2),
	(null, 'MOVI', 'TRC5000', '2023-03-26 18:22:43', 'Galpão de mercadoria', 'ATIV', 6);
    
-- -------------------------------- Tabela de dados do sensor de movimento
CREATE TABLE dado_movimento (
ID_MOVI INT PRIMARY KEY auto_increment,
NUM_SERIE VARCHAR(15),
STATUS_MOVIM INT, constraint chkStatusMovi CHECK(status_movim in (0, 1)), -- 0 = Não há movimento, 1 = Sim há movimento,
DATA_COLETADA DATETIME
-- Pretendemos no futuro colocar chave estrangeira das empresas que coletamos os dados.
);

INSERT INTO dado_movimento VALUES
	(null, 'T001', 0, '2023-03-06 06:07:35'),
	(null, 'T002', 0, '2023-03-06 06:08:35'),
	(null, 'T003', 0, '2023-03-06 06:09:35'),
	(null, '01A', 1, '2023-03-06 06:10:35'),
	(null, '02B', 1, '2023-03-06 06:11:35'),
	(null, 'T004', 1, '2023-03-06 06:12:35'),
	(null, '03C', 1, '2023-03-06 06:13:35'),
	(null, 'T005', 1, '2023-03-06 06:14:35'),
	(null, '04D', 1, '2023-03-06 06:15:35'),
	(null, 'T006', 1, '2023-03-06 06:16:35');

-- -------------------------------- SELECT
SELECT * FROM cadastroCPF;
SELECT * FROM cadastroCNPJ;
SELECT * FROM sensores;
SELECT * FROM dado_movimento;