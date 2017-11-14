-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10-Set-2017 às 00:54
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keygame`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(32) NOT NULL,
  `email` varchar(65) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `nascimento` date NOT NULL,
  `avatar` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Estrutura da tabela `conquistas` @GuilhermeOliveira
--

CREATE TABLE conquistas (
    id_conquistas INT(11) NOT NULL AUTO_INCREMENT,
    nome_torneio VARCHAR(32) NOT NULL,
    data_torneio DATE NOT NULL,
    posicao_torneio VARCHAR(2) NOT NULL,
    descricao TEXT NULL,
    id_usuario INT(11) UNSIGNED NOT NULL,
PRIMARY KEY (id_conquistas)); 

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `email`, `senha`, `nascimento`, `avatar`) VALUES
(1, 'Salvatory', 'luckvalente@gmail.com', '12345678', '1997-10-04', NULL);

--
-- Extraindo dados da tabela `conquistas` @GuilhermeOliveira
--

INSERT INTO conquista (id_conquistas, nome_torneio, data_torneio, posicao_torneio, descricao, id_usuario) VALUES(1,  'Mack', '2017-10-25', 1, 'Apenas um teste do sistema', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
