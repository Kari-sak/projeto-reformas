-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Abr-2023 às 23:29
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `reforminha`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `prestadores`
--

CREATE TABLE `prestadores` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `TELEFONE` varchar(20) NOT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `ESPECIALIDADE` varchar(50) NOT NULL,
  `LOGRADOURO` varchar(100) NOT NULL,
  `BAIRRO` varchar(100) NOT NULL,
  `CEP` varchar(100) NOT NULL,
  `CIDADE` varchar(100) NOT NULL,
  `UF` varchar(100) NOT NULL,
  `NUMERO` varchar(5) DEFAULT NULL,
  `COMPLEMENTO` varchar(100) DEFAULT NULL,
  `ATIVO` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `prestadores`
--

INSERT INTO `prestadores` (`ID`, `NOME`, `EMAIL`, `TELEFONE`, `CNPJ`, `ESPECIALIDADE`, `LOGRADOURO`, `BAIRRO`, `CEP`, `CIDADE`, `UF`, `NUMERO`, `COMPLEMENTO`, `ATIVO`) VALUES
(1, 'Pedro Manobrista', 'pedrinho@reformas.com.br', '1156156070', '11222333/0001-02', 'PEDREIRO', 'Rua Tijolos de Ouro', 'Vila Reboco', '12233001', 'São Paulo', 'SP', '1000', 'Apto 2', 0),
(2, 'Berisvaldo Pereira', 'beri@reformas.com.br', '1156156080', '11222333/0001-03', 'PINTOR', 'Avenida da Aquarela', 'Jardim Suvinil', '12233001', 'São Paulo', 'SP', '15', NULL, 1),
(3, 'Gumercindo Dias', 'guma@reformas.com.br', '1156156070', '11222333/0001-04', 'PEDREIRO', 'Rua do Cimento', 'Vila Reboco', '12233001', 'São Paulo', 'SP', '750', 'Apto 5B', 1),
(4, 'Estevão Entendido', 'cap@reformas.com.br', '1156156070', '21222333/0001-05', 'ENCANADOR', 'Rua Tigre', 'Vila Água Branca', '12233005', 'Rio de Janeiro', 'RJ', 's/n', NULL, 1),
(5, 'Bruno Letreiro', 'smash@reformas.com.br', '1156156090', '11222333/0001-06', 'ELETRICISTA', 'Rua das Luzes', 'Jardim das Ideias', '12233001', 'São Paulo', 'SP', '800', 'Casa 3', 1),
(6, 'Bruce Wayne', 'batemail@reformas.com.br', '1156156011', '21222333/0001-07', 'DECORADOR', 'Rua do Beco', 'Vila dos Órfãos', '12233003', 'Rio de Janeiro', 'RJ', '10', 'Subsolo 2', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `prestadores`
--
ALTER TABLE `prestadores`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `prestadores`
--
ALTER TABLE `prestadores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
