-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Nov-2021 às 11:38
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `inter_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `Id_amd` int(11) NOT NULL,
  `Nome_adm` varchar(50) NOT NULL,
  `Sobrenome_adm` varchar(30) NOT NULL,
  `Email_adm` varchar(256) NOT NULL,
  `Senha_adm` varchar(256) NOT NULL,
  `Tel_adm` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`Id_amd`, `Nome_adm`, `Sobrenome_adm`, `Email_adm`, `Senha_adm`, `Tel_adm`) VALUES
(1, 'administrador', 'Admin', 'admin@etec.com', 'CCD4F288CA3A611E37A3EF4122B7965C9CD73AE534864024D19F2B4C19689D912149C99F8E2970382EB3681BC1137207730F3C478DC8BDC1C75F6679CE2ECCD1', '00000000000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `Matricula_al` int(11) NOT NULL,
  `Nome_al` varchar(30) NOT NULL,
  `Sobrenome_al` varchar(30) NOT NULL,
  `Email_al` varchar(250) NOT NULL,
  `Senha_al` varchar(256) NOT NULL,
  `CPF_al` char(11) NOT NULL,
  `RG_al` varchar(12) NOT NULL,
  `Tel_al` char(11) NOT NULL,
  `Dt_nasc_al` date NOT NULL,
  `Img_al` varchar(256) DEFAULT NULL,
  `Sexo_al` varchar(3) NOT NULL,
  `Plano_al` varchar(11) DEFAULT NULL,
  `Plano_id` int(11) DEFAULT NULL,
  `Cod_diet` int(11) DEFAULT NULL,
  `Cod_exame` int(11) DEFAULT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`Matricula_al`, `Nome_al`, `Sobrenome_al`, `Email_al`, `Senha_al`, `CPF_al`, `RG_al`, `Tel_al`, `Dt_nasc_al`, `Img_al`, `Sexo_al`, `Plano_al`, `Plano_id`, `Cod_diet`, `Cod_exame`, `ativo`) VALUES
(1, 'Administrador', 'Admin', 'adminF@etec.com', 'CCD4F288CA3A611E37A3EF4122B7965C9CD73AE534864024D19F2B4C19689D912149C99F8E2970382EB3681BC1137207730F3C478DC8BDC1C75F6679CE2ECCD1', '00000000000', '000000000', '00000000000', '1991-08-09', '81D395749CC44AE4D0A5F8EF48B6E364', 'Mas', NULL, NULL, NULL, NULL, 1),
(8, 'tec tec', 'aaaa', 'tic@etec.com', '91C72671782D1633305760C6C415C4816E3E1921E4F417F6C716042169286AEE3B1C940E2C248991A3D1E53ABF1E387A73C7C8D5F203C3FE7CAC72AE3F6D16B3', '15156151515', '11156451521', '15154611561', '2021-10-28', '', '1', 'Básico', 1, NULL, NULL, 1),
(17, 'MNa', 'nana', 'i000@etec.com', '95CD47A9E65D5E5427F110F0C37D3E939F5F146A6A5022BEA79F8A7B0F2A9A61574F02F853C4BB850E425DDE604BA332291AFD7958CBCD80749FFEFE7DFAE5D8', '11215155100', '115151515', '10000000000', '2021-10-28', '', '1', NULL, NULL, NULL, NULL, 1),
(18, 'Henry', 'Mamani', 'imm@etec.com', 'CC322C9A2980516F3655E6CD4EE990835354013C586724FC4CFDE42559AB2D1152413E28130948E6542DC65E354E5324C96C75C6659E3301E527A0DA7A3E0CB6', '12112111515', '111111111', '12980509454', '2021-10-28', '', '1', NULL, NULL, NULL, NULL, 1),
(19, 'Manuele', 'Silva', 'i444@etec.com', 'C4999FAED371CD7BD30B0F494A54540A5AE7AADF4166637FA02FA03E6F7CD1F4BF5B9B92327FF537383B77272E306E22542B9893C5CB5D99F2A4961CEFB5980F', '12115151515', '151515151', '12121489410', '2021-10-28', '', '0', NULL, NULL, NULL, NULL, 1),
(21, 'Brendon', 'Mamani', 'i@etec.com', '95CD47A9E65D5E5427F110F0C37D3E939F5F146A6A5022BEA79F8A7B0F2A9A61574F02F853C4BB850E425DDE604BA332291AFD7958CBCD80749FFEFE7DFAE5D8', '15151568484', '121579800', '11980498525', '2021-10-28', '', '1', NULL, NULL, NULL, NULL, 1),
(22, 'Emanuelson', 'Pateta', 'Pateta@etec.com', 'C4999FAED371CD7BD30B0F494A54540A5AE7AADF4166637FA02FA03E6F7CD1F4BF5B9B92327FF537383B77272E306E22542B9893C5CB5D99F2A4961CEFB5980F', '12121215151', '151515151', '11515615615', '2021-10-28', '', '1', 'Básico', 1, NULL, NULL, 1),
(23, 'Armando', 'Lozano', 'ar@etec.com', 'CC322C9A2980516F3655E6CD4EE990835354013C586724FC4CFDE42559AB2D1152413E28130948E6542DC65E354E5324C96C75C6659E3301E527A0DA7A3E0CB6', '21215151515', '151515151', '11545484541', '2021-10-28', '', '1', 'basico', NULL, NULL, NULL, 1),
(24, 'Rogerio', 'Alvez', 'Rogerio@etec.com', '6A37B8F5511F0B93B89E98A3618A90EC8F256C6522A31369B1E3C661BB396AE04BDFA61B1422AFFF7AD97819731572BC3DB3982161632BFEEBA1CE62150383E9', '12156151561', '121515152', '11984545748', '1995-06-06', '', '1', 'basico', NULL, NULL, NULL, 1),
(25, 'Marcos', 'aa', 'Marc@etec.com', 'C4999FAED371CD7BD30B0F494A54540A5AE7AADF4166637FA02FA03E6F7CD1F4BF5B9B92327FF537383B77272E306E22542B9893C5CB5D99F2A4961CEFB5980F', '12156156151', '151515151', '01212154854', '1989-05-08', '', '1', 'basico', NULL, NULL, NULL, 1),
(26, 'Testerr', 'aa', 'tistir@etec.com', '2632F69D4C51E31A4F1873132F3EFF790829A740D2443EBAFCAF47E5D93EB9DAA8B794C096801D7A2AA70D94259A6B2B2CE208AEB948A745E992218653BA0EBD', '12121512121', '121212121', '12121212516', '1989-01-02', '', '1', 'basico', NULL, NULL, NULL, 1),
(27, 'aluno', 'teste', 'alunoteste@etec.com', '91C72671782D1633305760C6C415C4816E3E1921E4F417F6C716042169286AEE3B1C940E2C248991A3D1E53ABF1E387A73C7C8D5F203C3FE7CAC72AE3F6D16B3', '11111111111', '111111111', '11111111111', '2021-10-28', '', 'Mas', 'basico', NULL, NULL, NULL, 1),
(29, 'Ale', 'Jamil', 'jamil@etec.com', '64C288C9A5776E571171BCBABFE7A92F435B3363A320286F112061033D4DC1B3C2B567C5AEAE8900FF5B47B10F86A2F9AD6CE0EBF6821146286DB709261EDBB7', '21215156151', '111111111', '15615121545', '1993-05-09', '4D5FD623DF29EC9F5EA9AF7408D286FD', 'Mas', NULL, NULL, NULL, NULL, 1),
(30, 'tester', 'aee', 'njasn@etec.com', 'C3A28A9DA5C404958CFFC672718CD3560BBD28AE60BC9707D62BAACBB9906E9141EC065FDAAC63BC6B60091C08DCC1F600AB91D1DF6F2D2A9EADF7E875E8E965', '12156161515', '121561515', '15151515115', '2021-10-28', NULL, 'Mas', NULL, NULL, NULL, NULL, 1),
(31, 'Meu nome', 'Sobrenome', 'meuemail@etec.com', '78C151C7B8E83921373A713F1AD429B5DAE489D5951EA0AEC8C51DD91B409421167BA1365E4EEBD7675B0B219292404B0E841CA7078B7216B904FD8F67E6988A', '00000000000', '111111111', '22222222222', '2021-10-28', '81D395749CC44AE4D0A5F8EF48B6E364', 'Mas', 'Premiun', NULL, NULL, NULL, 1),
(32, 'bnjhb', 'hjbhbhbh', 'manolo@etec.com', '78C151C7B8E83921373A713F1AD429B5DAE489D5951EA0AEC8C51DD91B409421167BA1365E4EEBD7675B0B219292404B0E841CA7078B7216B904FD8F67E6988A', '12121156151', '156151515', '15615151515', '2021-10-28', NULL, 'Fem', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comp_corp`
--

CREATE TABLE `comp_corp` (
  `Cod_Comp_Corp` int(11) NOT NULL,
  `M_muscular` varchar(9) NOT NULL,
  `M_residual` varchar(9) NOT NULL,
  `M_magra` varchar(9) NOT NULL,
  `M_gorda` varchar(9) NOT NULL,
  `M_ossea` varchar(9) NOT NULL,
  `IMC` varchar(9) NOT NULL,
  `ICQ` varchar(9) NOT NULL,
  `Matricula_al` int(11) NOT NULL,
  `Cod_medida` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comp_corp`
--

INSERT INTO `comp_corp` (`Cod_Comp_Corp`, `M_muscular`, `M_residual`, `M_magra`, `M_gorda`, `M_ossea`, `IMC`, `ICQ`, `Matricula_al`, `Cod_medida`) VALUES
(1, '0', '0', '0', '0', '0', '0', '0', 8, NULL),
(2, '26,48', '13,26', '48,36', '6,64', '8,63', '19,03', '0,16', 27, NULL),
(3, '26,48', '13,26', '48,36', '6,64', '8,63', '19,03', '0,16', 27, NULL),
(4, '50,49', '21,69', '72,87', '17,13', '0,69', '27,78', '1', 27, NULL),
(5, '73,8', '36,15', '110,64', '39,36', '0,69', '46,3', '1', 27, NULL),
(6, '45,07', '25,43', '82,63', '22,87', '12,13', '32,56', '0,91', 27, NULL),
(7, '45,51', '25,43', '82,63', '22,87', '11,69', '32,56', '0,91', 27, NULL),
(8, '38,92', '25,43', '76,19', '29,31', '11,84', '32,56', '0,91', 29, NULL),
(9, '-249903,5', '254,26', '1071,16', '-16,16', '250720,46', '0,03', '0,91', 31, NULL),
(10, '45,36', '25,43', '82,63', '22,87', '11,84', '32,56', '0,91', 31, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `exame_medico`
--

CREATE TABLE `exame_medico` (
  `Cod_exame_pk` int(11) NOT NULL,
  `Matricula_al` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ficha_anamnese`
--

CREATE TABLE `ficha_anamnese` (
  `Cod_ficha` int(11) NOT NULL,
  `Deficiencia` varchar(300) NOT NULL,
  `Objetivo` varchar(60) NOT NULL,
  `Prat_epn` char(3) NOT NULL,
  `Atestado` varchar(256) NOT NULL,
  `Lesões_Cirurgias` varchar(20) NOT NULL,
  `Remedios` varchar(50) NOT NULL,
  `Hr_sono` char(5) NOT NULL,
  `Pat_maternal` varchar(300) NOT NULL,
  `Pat_paternal` varchar(300) NOT NULL,
  `Matricula_al` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ficha_anamnese`
--

INSERT INTO `ficha_anamnese` (`Cod_ficha`, `Deficiencia`, `Objetivo`, `Prat_epn`, `Atestado`, `Lesões_Cirurgias`, `Remedios`, `Hr_sono`, `Pat_maternal`, `Pat_paternal`, `Matricula_al`) VALUES
(1, '', 'aaaaaa', '', '', '', '', '', '', '', NULL),
(2, 'aaa', 'aaa', 'aaa', 'aaa', 'aa', 'aaa', '10', 'aa', 'aaa', NULL),
(4, 'Nenhuma', 'Ganhar Peso', 'Sim', 'Nenhum', 'Nenhuma', 'Nenhum', '10', 'Nenhuma', 'Nenhuma', 8),
(5, 'tourette', 'ganhar peso', 'não', 'não tem', 'nenhuma', 'nenhum', '7', 'nenhuma', 'nenhuma', 27),
(6, 'tourette', 'ganhar peso', 'não', 'não tem', 'nenhuma', 'nenhum', '7', 'nenhuma', 'nenhuma', 27),
(7, 'não sei ', 'não sei ', 'não', 'não sei ', 'não sei ', 'não sei ', 'não s', 'não sei ', 'não sei ', 27),
(8, 'ser corno', 'ser corno', 'cor', 'levou Chifre', 'levou mais um chifre', 'chifre', 'nenhu', 'é corna também', 'outro corno', 27),
(9, 'Nenhuma', 'Perder Peso', 'Sim', 'Nenhum', 'Nenhuma', 'Nenhum', '10', 'Nenhuma', 'Nenhuma', 27),
(10, 'Nenhuma', 'Perder Peso', 'Sim', 'Nenhum', 'Nenhuma', 'Nenhum', '10', 'Nenhuma', 'Nenhuma', 27),
(11, 'Nenhuma', 'Emagrecer', 'Não', 'Nenhum', 'nenhuma', 'Nenhum', '7', 'Nenhuma', 'nenhuma', 29),
(12, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 31),
(13, '0', '0', '0', '0', '0', '0', '0', '0', '0', 31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pag`
--

CREATE TABLE `forma_pag` (
  `Cod_pag` int(11) NOT NULL,
  `Cartao_cred` char(15) NOT NULL,
  `Cartao_deb` char(16) NOT NULL,
  `Matricula_al` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `forma_pag`
--

INSERT INTO `forma_pag` (`Cod_pag`, `Cartao_cred`, `Cartao_deb`, `Matricula_al`) VALUES
(1, 'aa', '', 8),
(2, 'aa', '', 22),
(3, '151516', '', 23),
(4, '1215151', '', 24),
(5, '15165156', '', 25),
(6, '454545', '', 26),
(7, '1111', '', 27),
(8, '121151515151561', '', 29),
(9, '151511515151511', '', 31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(11) NOT NULL,
  `horario_1` varchar(15) NOT NULL,
  `horario_2` varchar(15) NOT NULL,
  `horario_3` varchar(15) NOT NULL,
  `id_modalidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `horario`
--

INSERT INTO `horario` (`id_horario`, `horario_1`, `horario_2`, `horario_3`, `id_modalidade`) VALUES
(1, '08h - 21h', '10h - 22h', '08h - 20h', 3),
(2, '10h - 21h', '14h - 20h', '08h - 20h', 1),
(3, '10h - 19h', '08h - 22h', '11h - 20h', 5),
(4, '07h - 21h', '09h - 18h', '08h - 20h', 6),
(5, '08h - 21h', '08h - 22h', '08h - 20h', 2),
(6, '10h - 21h', '08h - 22h', '11h - 20h', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `Id_matri` int(11) NOT NULL,
  `Matricula_al` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `medidas`
--

CREATE TABLE `medidas` (
  `Cod_exame` int(11) NOT NULL,
  `peri_cintura` varchar(9) NOT NULL,
  `peri_quadril` varchar(9) NOT NULL,
  `diam_femur` varchar(9) NOT NULL,
  `diam_punho` varchar(9) NOT NULL,
  `perna_esq` varchar(9) NOT NULL,
  `perna_dir` varchar(9) NOT NULL,
  `braco_esq` varchar(9) NOT NULL,
  `braco_dir` varchar(9) NOT NULL,
  `peitoral` varchar(9) NOT NULL,
  `Altura` varchar(9) NOT NULL,
  `peso` varchar(9) NOT NULL,
  `Matricula_al` int(11) NOT NULL,
  `Matricula_prof` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medidas`
--

INSERT INTO `medidas` (`Cod_exame`, `peri_cintura`, `peri_quadril`, `diam_femur`, `diam_punho`, `perna_esq`, `perna_dir`, `braco_esq`, `braco_dir`, `peitoral`, `Altura`, `peso`, `Matricula_al`, `Matricula_prof`) VALUES
(1, '0,103', '0,113', '9,0', '5,7', '0,40', '0,40', '0,30', '0,30', '0,25', '', '', 8, NULL),
(2, '0,110', '0,70', '7,0', '5,3', '0,80', '0', '0', '0', '1', '1,70', '55', 27, NULL),
(3, '0,110', '0,70', '7,0', '5,3', '0,80', '0', '0', '0', '1', '1,70', '56', 27, NULL),
(4, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1,70', '66', 27, NULL),
(5, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1,70', '77', 27, NULL),
(6, '0,103', '0,113', '9,0', '5,9', '1,00', '1,00', '0,6', '0,6', '0,5', '1,80', '105,5', 27, NULL),
(7, '0,103', '0,113', '9,0', '5,6', '0,7', '0,7', '0,5', '0,5', '0,5', '1,80', '105,5', 27, NULL),
(8, '0,103', '0,113', '9,0', '5,7', '0,45', '0,45', '0,50', '0,50', '0,48', '1,80', '105,5', 29, NULL),
(9, '103.0', '113.0', '9.0', '5.7', '39.0', '39.0', '37.0', '37.0', '40.0', '1.80', '105.5', 31, NULL),
(10, '103,0', '113,0', '9,0', '5,7', '0', '0', '0', '0', '0', '1,80', '105,5', 31, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modalidade`
--

CREATE TABLE `modalidade` (
  `Matricula_mod` int(11) NOT NULL,
  `Nome_mod` varchar(20) NOT NULL,
  `Img_mod` varchar(256) NOT NULL,
  `Img_mod2` varchar(256) NOT NULL,
  `Vd_mod` varchar(256) NOT NULL,
  `Sobre` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modalidade`
--

INSERT INTO `modalidade` (`Matricula_mod`, `Nome_mod`, `Img_mod`, `Img_mod2`, `Vd_mod`, `Sobre`) VALUES
(1, 'Boxe', '2D2632440EABAB26DB57A94C437EF0FE.png', '61CD452E4AEE6121EE26C182E1B3F450.png', '', 'Boxe ou pugilismo é um esporte de combate no qual os lutadores calçam luvas acolchoadas e utilizam as mãos para atacar e defender. O objetivo no boxe é desferir golpes para pontuar ou nocautear o oponente, seguindo um conjunto de regras predeterminadas'),
(2, 'Judô', '5D2190C6F4CBC2FDFAD49C98CAFD099B.png', 'CAA9F8E0F89B2E30B935574E467BD697.png', '', ' O judô é uma arte marcial japonesa e um esporte olímpico de combate desde 1964. Esse esporte de defesa pessoal tem como objetivos melhorar a coordenação motora, a concentração, a autoconfiança, além de fortalecer o físico, o espírito e a mente.'),
(3, 'Zumba', '6ED2DCCDF61DDED101AA1894FCE025B2.png', '5BDCA712F2BA5823F01CC1F837B6BB3A.png', '', 'A zumba trabalha a Coordenação motora, equilíbrio e memória, todo tipo de dança desenvolve a coordenação motora, o equilíbrio e a memória, e com a zumba não é diferente. Por mais simples que a coreografia seja, a zumba contribui para que todas essas habilidades sejam desenvolvidas.'),
(4, 'Cardio', 'AECF48E962B4A56C7425681F55DB49AD.png', '9258550D35F7A4F556DCECFF486F3F78.png', '', ' O aeróbico é aquele que usa o oxigênio no processo de geração de energia nos músculos. Esse tipo de exercício trabalha uma grande quantidade de grupos musculares de forma rítmica. Andar, correr, nadar, pedalar, dançar, são alguns dos principais exemplos de exercícios aeróbicos. '),
(5, 'Natação', '79ECBC2235879B7F25FF019CA407015C.png', 'C244371CA97CCA932C987690C0369B2B.png', '', 'A natação é uma atividade física praticada na água que pode trazer diversos benefícios para o ser humano. Isso pois a mesma é um esporte que permite movimentar grande parte dos músculos e articulações do corpo. Esta modalidade pode ser praticada por diversos grupos de pessoas, sejam elas crianças ou'),
(6, 'Musculação', '78FB76EF36C55BE7891B56EB81C6FF67.png', '361AE8529C4649FF9D26ED8EC477974A.png', '', 'A musculação é um tipo de exercício realizado com pesos de diversas cargas, amplitude e tempo de contração, o que faz dela uma atividade física indicada para pessoas de diversas idades e com diferentes objetivos. A musculação é diferente do fisiculturismo, levantamento de peso, pois esses são esport');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mod_prof_ensina`
--

CREATE TABLE `mod_prof_ensina` (
  `Cod_prof_ensina` int(11) NOT NULL,
  `Matricula_prof` int(11) NOT NULL,
  `Matricula_mod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `plano`
--

CREATE TABLE `plano` (
  `Plano_id` int(11) NOT NULL,
  `Descricao` varchar(300) NOT NULL,
  `Dt_compra` date NOT NULL,
  `Valor` int(6) NOT NULL,
  `Forma_pag` varchar(20) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Matricula_al` int(11) NOT NULL,
  `Matricula_prof` int(11) NOT NULL,
  `Matricula_mod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `plano`
--

INSERT INTO `plano` (`Plano_id`, `Descricao`, `Dt_compra`, `Valor`, `Forma_pag`, `Tipo`, `Matricula_al`, `Matricula_prof`, `Matricula_mod`) VALUES
(1, 'Bla bla bla', '2002-08-09', 142, 'Cartão', 'cartão', 1, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `plan_form_possui`
--

CREATE TABLE `plan_form_possui` (
  `Cod_plan_form` int(11) NOT NULL,
  `Num_conta` int(11) NOT NULL,
  `Id_plano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `plan_mod_tem`
--

CREATE TABLE `plan_mod_tem` (
  `Cod_mod_tem` int(11) NOT NULL,
  `Id_plano` int(11) NOT NULL,
  `Matricula_mod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `Matricula_prof` int(11) NOT NULL,
  `Nome_prof` varchar(50) NOT NULL,
  `Sobrenome_prof` varchar(30) NOT NULL,
  `Email_prof` varchar(256) NOT NULL,
  `Senha_prof` varchar(256) NOT NULL,
  `CPF_prof` char(11) NOT NULL,
  `RG_prof` varchar(12) NOT NULL,
  `Tel_prof` char(11) NOT NULL,
  `Dt_nasc_prof` date NOT NULL,
  `Sexo_prof` varchar(3) NOT NULL,
  `Salario` int(7) NOT NULL,
  `Matricula_mod` int(11) DEFAULT NULL,
  `Ativo_prof` int(1) NOT NULL,
  `plano_atua` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`Matricula_prof`, `Nome_prof`, `Sobrenome_prof`, `Email_prof`, `Senha_prof`, `CPF_prof`, `RG_prof`, `Tel_prof`, `Dt_nasc_prof`, `Sexo_prof`, `Salario`, `Matricula_mod`, `Ativo_prof`, `plano_atua`) VALUES
(2, 'a', 'a', 'i@etec.com', 'C4999FAED371CD7BD30B0F494A54540A5AE7AADF4166637FA02FA03E6F7CD1F4BF5B9B92327FF537383B77272E306E22542B9893C5CB5D99F2A4961CEFB5980F', '151561151', '155151', '11980487845', '2000-02-01', 'Mas', 10, NULL, 1, '0'),
(3, 'Mané garrincha', 'Guilherme', 'mane@etec.com', '6F5A412025C3258BD68875C07C0671313C6AA43DC0B2FFC88900E385213B9B4A86491A75BA27264D82E9C3CEB9DC1D085341ADE8A3610742DD8A0DBA82380697', '44511111111', '112152151', '11111111111', '2021-11-05', 'Fem', 12, NULL, 1, ''),
(4, 'Cleiton', 'Silva', 'clei@etec.com', '64C288C9A5776E571171BCBABFE7A92F435B3363A320286F112061033D4DC1B3C2B567C5AEAE8900FF5B47B10F86A2F9AD6CE0EBF6821146286DB709261EDBB7', 'cachorroVoa', '11980458525', '10', '1984-11-13', 'Fem', 145415, NULL, 1, ''),
(5, 'Marcos', 'Alvesss', 'Marc@etec.com', 'C4999FAED371CD7BD30B0F494A54540A5AE7AADF4166637FA02FA03E6F7CD1F4BF5B9B92327FF537383B77272E306E22542B9893C5CB5D99F2A4961CEFB5980F', '1415454545', '11897452', '11987455212', '1959-11-19', 'Fem', 15, NULL, 1, ''),
(6, 'Carlos', 'Alle', 'carle@etec.com', '78C151C7B8E83921373A713F1AD429B5DAE489D5951EA0AEC8C51DD91B409421167BA1365E4EEBD7675B0B219292404B0E841CA7078B7216B904FD8F67E6988A', '15151515121', '415641545', '21231561515', '2021-11-23', 'Fem', 1008, NULL, 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `profe_aluno`
--

CREATE TABLE `profe_aluno` (
  `id_profe_aluno` int(11) NOT NULL,
  `matricula_alV` int(11) NOT NULL,
  `matricula_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `profe_aluno`
--

INSERT INTO `profe_aluno` (`id_profe_aluno`, `matricula_alV`, `matricula_prof`) VALUES
(1, 8, 4),
(2, 22, 3),
(3, 23, 3),
(4, 24, 3),
(5, 25, 3),
(6, 26, 3),
(7, 27, 4),
(8, 29, 4),
(9, 31, 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Id_amd`),
  ADD UNIQUE KEY `Email_adm` (`Email_adm`);

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`Matricula_al`),
  ADD UNIQUE KEY `Email_al` (`Email_al`),
  ADD KEY `plano_id_fk` (`Plano_id`),
  ADD KEY `cod_exame_fk` (`Cod_exame`) USING BTREE,
  ADD KEY `cod_diet_fk` (`Cod_diet`) USING BTREE;

--
-- Índices para tabela `comp_corp`
--
ALTER TABLE `comp_corp`
  ADD PRIMARY KEY (`Cod_Comp_Corp`),
  ADD KEY `matricula_prof_fk4` (`Matricula_al`),
  ADD KEY `cod_med_fk` (`Cod_medida`);

--
-- Índices para tabela `exame_medico`
--
ALTER TABLE `exame_medico`
  ADD PRIMARY KEY (`Cod_exame_pk`),
  ADD KEY `matricula_clie_fk6` (`Matricula_al`);

--
-- Índices para tabela `ficha_anamnese`
--
ALTER TABLE `ficha_anamnese`
  ADD PRIMARY KEY (`Cod_ficha`),
  ADD KEY `matricula_clie_fk5` (`Matricula_al`);

--
-- Índices para tabela `forma_pag`
--
ALTER TABLE `forma_pag`
  ADD PRIMARY KEY (`Cod_pag`),
  ADD KEY `matricula_clie_fk2` (`Matricula_al`);

--
-- Índices para tabela `horario`
--
ALTER TABLE `horario`
  ADD KEY `id_modalidade_fk` (`id_modalidade`);

--
-- Índices para tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`Id_matri`),
  ADD KEY `matricula_clie_fk4` (`Matricula_al`);

--
-- Índices para tabela `medidas`
--
ALTER TABLE `medidas`
  ADD PRIMARY KEY (`Cod_exame`),
  ADD KEY `matricula_clie_fk3` (`Matricula_al`) USING BTREE,
  ADD KEY `matricula_prof_fk3` (`Matricula_prof`);

--
-- Índices para tabela `modalidade`
--
ALTER TABLE `modalidade`
  ADD PRIMARY KEY (`Matricula_mod`);

--
-- Índices para tabela `mod_prof_ensina`
--
ALTER TABLE `mod_prof_ensina`
  ADD PRIMARY KEY (`Cod_prof_ensina`),
  ADD KEY `matricula_prof_fk` (`Matricula_prof`),
  ADD KEY `matricula_mod_fk` (`Matricula_prof`),
  ADD KEY `fk_matricula_mod` (`Matricula_mod`);

--
-- Índices para tabela `plano`
--
ALTER TABLE `plano`
  ADD PRIMARY KEY (`Plano_id`),
  ADD KEY `matricula_clie_fk` (`Matricula_al`),
  ADD KEY `matricula_prof_fk` (`Matricula_prof`),
  ADD KEY `modalidade_fk` (`Matricula_mod`);

--
-- Índices para tabela `plan_form_possui`
--
ALTER TABLE `plan_form_possui`
  ADD PRIMARY KEY (`Cod_plan_form`),
  ADD KEY `num_conta_fk` (`Num_conta`),
  ADD KEY `Id_plano_fk_3` (`Num_conta`),
  ADD KEY `fk_id_plano_3` (`Id_plano`);

--
-- Índices para tabela `plan_mod_tem`
--
ALTER TABLE `plan_mod_tem`
  ADD PRIMARY KEY (`Cod_mod_tem`),
  ADD KEY `Id_plano_fk_2` (`Id_plano`),
  ADD KEY `matricula_mod_fk_2` (`Id_plano`),
  ADD KEY `fk_matricula_mod_2` (`Matricula_mod`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Matricula_prof`),
  ADD KEY `matricula_mod_fk` (`Matricula_mod`);

--
-- Índices para tabela `profe_aluno`
--
ALTER TABLE `profe_aluno`
  ADD PRIMARY KEY (`id_profe_aluno`),
  ADD KEY `matricula_prof_fk` (`matricula_prof`) USING BTREE,
  ADD KEY `matricula_al_fk` (`matricula_alV`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `Id_amd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `Matricula_al` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `comp_corp`
--
ALTER TABLE `comp_corp`
  MODIFY `Cod_Comp_Corp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `exame_medico`
--
ALTER TABLE `exame_medico`
  MODIFY `Cod_exame_pk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ficha_anamnese`
--
ALTER TABLE `ficha_anamnese`
  MODIFY `Cod_ficha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `forma_pag`
--
ALTER TABLE `forma_pag`
  MODIFY `Cod_pag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `Id_matri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `medidas`
--
ALTER TABLE `medidas`
  MODIFY `Cod_exame` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modalidade`
--
ALTER TABLE `modalidade`
  MODIFY `Matricula_mod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `mod_prof_ensina`
--
ALTER TABLE `mod_prof_ensina`
  MODIFY `Cod_prof_ensina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `plano`
--
ALTER TABLE `plano`
  MODIFY `Plano_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `plan_form_possui`
--
ALTER TABLE `plan_form_possui`
  MODIFY `Cod_plan_form` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `plan_mod_tem`
--
ALTER TABLE `plan_mod_tem`
  MODIFY `Cod_mod_tem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `Matricula_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `profe_aluno`
--
ALTER TABLE `profe_aluno`
  MODIFY `id_profe_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `fk_cod_diete` FOREIGN KEY (`Cod_diet`) REFERENCES `dieta` (`Cod_diet`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cod_exame` FOREIGN KEY (`Cod_exame`) REFERENCES `exame_medico` (`Cod_exame_pk`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `plano_id_fk` FOREIGN KEY (`Plano_id`) REFERENCES `plano` (`Plano_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `comp_corp`
--
ALTER TABLE `comp_corp`
  ADD CONSTRAINT `cod_med_fk` FOREIGN KEY (`Cod_medida`) REFERENCES `medidas` (`Cod_exame`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `matricula_clie_fk5` FOREIGN KEY (`Matricula_al`) REFERENCES `aluno` (`Matricula_al`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `exame_medico`
--
ALTER TABLE `exame_medico`
  ADD CONSTRAINT `matricula_al_fk7` FOREIGN KEY (`Matricula_al`) REFERENCES `aluno` (`Matricula_al`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `ficha_anamnese`
--
ALTER TABLE `ficha_anamnese`
  ADD CONSTRAINT `matricula_al_fk6` FOREIGN KEY (`Matricula_al`) REFERENCES `aluno` (`Matricula_al`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `forma_pag`
--
ALTER TABLE `forma_pag`
  ADD CONSTRAINT `matricula_clie_fk2` FOREIGN KEY (`Matricula_al`) REFERENCES `aluno` (`Matricula_al`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `id_modalidade_fk` FOREIGN KEY (`id_modalidade`) REFERENCES `modalidade` (`Matricula_mod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_matricula_al` FOREIGN KEY (`Matricula_al`) REFERENCES `matricula` (`Id_matri`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `matricula_al_fk4` FOREIGN KEY (`Matricula_al`) REFERENCES `aluno` (`Matricula_al`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `medidas`
--
ALTER TABLE `medidas`
  ADD CONSTRAINT `matricula_clie_fk4` FOREIGN KEY (`Matricula_al`) REFERENCES `aluno` (`Matricula_al`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `matricula_prof_fk4` FOREIGN KEY (`Matricula_prof`) REFERENCES `professor` (`Matricula_prof`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `mod_prof_ensina`
--
ALTER TABLE `mod_prof_ensina`
  ADD CONSTRAINT `fk_matricula_mod` FOREIGN KEY (`Matricula_mod`) REFERENCES `modalidade` (`Matricula_mod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_matricula_prof_2` FOREIGN KEY (`Matricula_prof`) REFERENCES `professor` (`Matricula_prof`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `plano`
--
ALTER TABLE `plano`
  ADD CONSTRAINT `matricula_clie_fk` FOREIGN KEY (`Matricula_al`) REFERENCES `aluno` (`Matricula_al`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `matricula_prof_fk` FOREIGN KEY (`Matricula_prof`) REFERENCES `professor` (`Matricula_prof`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `modalidade_fk` FOREIGN KEY (`Matricula_mod`) REFERENCES `modalidade` (`Matricula_mod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `profe_aluno`
--
ALTER TABLE `profe_aluno`
  ADD CONSTRAINT `matricula_2` FOREIGN KEY (`matricula_prof`) REFERENCES `professor` (`Matricula_prof`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `matricula_alV` FOREIGN KEY (`matricula_alV`) REFERENCES `aluno` (`Matricula_al`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
