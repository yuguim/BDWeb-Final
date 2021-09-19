-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Set-2021 às 05:01
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_form`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_role`
--

CREATE TABLE `adm_role` (
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` text NOT NULL,
  `sobrenome` text NOT NULL,
  `admID` int(11) NOT NULL,
  `orgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `prodID` int(11) NOT NULL,
  `endereco` text DEFAULT NULL,
  `valor` double(5,2) DEFAULT NULL,
  `tipo` text NOT NULL,
  `status` text NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `categoria1` text DEFAULT NULL,
  `categoria2` text NOT NULL,
  `categoria3` text NOT NULL,
  `categoria4` text NOT NULL,
  `categoria5` text NOT NULL,
  `orgID` int(11) NOT NULL,
  `Nome_Evento` text NOT NULL,
  `CriadorAdm` int(11) NOT NULL,
  `Descricao` text NOT NULL,
  `criador` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `evento`
--

INSERT INTO `evento` (`prodID`, `endereco`, `valor`, `tipo`, `status`, `data`, `hora`, `categoria1`, `categoria2`, `categoria3`, `categoria4`, `categoria5`, `orgID`, `Nome_Evento`, `CriadorAdm`, `Descricao`, `criador`) VALUES
(3, 'Pipa', 50.00, '', '', '2021-09-19', '19:00:00', 'voley', '', '', '', '', 2, 'voley', 0, 'asdf', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritos`
--

CREATE TABLE `favoritos` (
  `favID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `prodID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `dataPag` date NOT NULL,
  `dataEvento` date NOT NULL,
  `status` text NOT NULL,
  `payFinal` int(11) NOT NULL,
  `payValue` double(5,2) NOT NULL,
  `ID_Ass` int(11) NOT NULL,
  `Nome_Evento` text NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Status_Evento` text NOT NULL,
  `Status_Pay` text NOT NULL,
  `Historico_ID` int(11) NOT NULL,
  `PayID` int(11) NOT NULL,
  `ProdID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `infos`
--

CREATE TABLE `infos` (
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `primeironome` text NOT NULL,
  `ultimonome` text NOT NULL,
  `aniversario` date NOT NULL,
  `joindate` date NOT NULL DEFAULT current_timestamp(),
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `infos`
--

INSERT INTO `infos` (`email`, `senha`, `primeironome`, `ultimonome`, `aniversario`, `joindate`, `id`) VALUES
('', '$2y$10$jwNld7mYv22FQGfPp89jc.XieLtF48d35TLOi7d6IsCbJJ76zUDTW', 'Yugui', 'Mesquita', '2021-08-12', '2021-08-14', 1061),
('asmonfsk@afb.com', '$2y$10$vYixeZSxbsiz8ivBC71ynukrFU/5wt5JQFM.4DOf/yV0BzbyA.63S', 'Ol[a', 'oioioio', '2021-09-16', '2021-09-18', 1065),
('yago@cetl.com.br', '$2y$10$lVD3ETnmDwviBTOcTvTcK.dHjNoE9oEc7ZQO32hPmRP8bXgE8stRu', 'Yago', 'Mesquita', '2021-08-11', '2021-08-14', 1062);

-- --------------------------------------------------------

--
-- Estrutura da tabela `organizador`
--

CREATE TABLE `organizador` (
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` text NOT NULL,
  `sobrenome` text NOT NULL,
  `fantasia` text NOT NULL,
  `inscricao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `orgID` int(11) NOT NULL,
  `CPF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `organizador`
--

INSERT INTO `organizador` (`email`, `senha`, `nome`, `sobrenome`, `fantasia`, `inscricao`, `orgID`, `CPF`) VALUES
('yuguimesquita@gmail.com', '$2y$10$nCk1njRe6d8C.D2lyTzej.7k95YKoi6K8oXjWxcdaZSLU9fLrW4NW', 'Yugui', 'Mesquita', 'Bartzao Evento', '2021-09-18 18:12:05', 2, 123456789),
('yugui@gmail.com', '$2y$10$Qjdulp6qgQF7b7ZtUrA6nusBZqjSDzJ/MSIK6f6pUVuu6IqFdu8Lm', 'Yugui', 'Mesquita', 'UFRN NEWs', '2021-09-19 02:02:51', 3, 2147483647),
('yugui.mesquita@gmail.com', '$2y$10$DrBY5655KyJnkFcEUzQpD.Kge3USEPnbZoI0d8mayL1vN9bIeNrCC', 'yugui', 'mesquita', 'BCT', '2021-09-19 02:07:24', 5, 12345679),
('yugui.mesquita.094@ufrn.edu.br', '$2y$10$nDPbtzqp5NXt1bd5pZxTFOt2j2d20Ab73dtt9rUEDtYLox3zpBmWm', 'Yugui', 'Mesquita', 'BCT', '2021-09-19 02:12:46', 6, 123456789);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `pay` varchar(255) NOT NULL,
  `payFinal` int(11) NOT NULL,
  `expData` date NOT NULL,
  `secCode` varchar(255) NOT NULL,
  `prePaid` double(5,2) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `NomePay` text NOT NULL,
  `PayID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` text NOT NULL,
  `sobrenome` text NOT NULL,
  `aniversario` date NOT NULL,
  `inscricao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_evento`
--

CREATE TABLE `usuario_evento` (
  `ID_Ass` int(11) NOT NULL,
  `prodID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `PayInfo` int(11) NOT NULL,
  `Valor` double(5,2) NOT NULL,
  `Nome_Evento` text NOT NULL,
  `Data_Ass` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `VaultID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vault`
--

CREATE TABLE `vault` (
  `Vault_ID` int(11) NOT NULL,
  `OrgID` int(11) NOT NULL,
  `Saldo` double(6,2) NOT NULL,
  `Ag` int(11) NOT NULL,
  `Conta` int(11) NOT NULL,
  `NomeBanco` varchar(40) NOT NULL,
  `Cod` int(11) NOT NULL,
  `CPF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `adm_role`
--
ALTER TABLE `adm_role`
  ADD PRIMARY KEY (`admID`),
  ADD KEY `adm_role_organizador` (`orgID`);

--
-- Índices para tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`prodID`),
  ADD KEY `evento_ibfk_1` (`orgID`);

--
-- Índices para tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`favID`),
  ADD KEY `favoritos_evento` (`prodID`),
  ADD KEY `favoritos_usuario` (`User_ID`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`Historico_ID`),
  ADD KEY `evento_historico` (`ProdID`),
  ADD KEY `historico_usuario_evento` (`ID_Ass`),
  ADD KEY `pagamento_historico` (`PayID`);

--
-- Índices para tabela `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Índices para tabela `organizador`
--
ALTER TABLE `organizador`
  ADD PRIMARY KEY (`orgID`);

--
-- Índices para tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`PayID`),
  ADD KEY `pagamento_usuario` (`User_ID`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario_evento`
--
ALTER TABLE `usuario_evento`
  ADD PRIMARY KEY (`ID_Ass`),
  ADD KEY `usuario_evento_Vault` (`VaultID`),
  ADD KEY `usuario_evento_evento` (`prodID`),
  ADD KEY `usuario_evento_pagamento` (`PayInfo`),
  ADD KEY `usuario_evento_usuario` (`User_ID`);

--
-- Índices para tabela `vault`
--
ALTER TABLE `vault`
  ADD PRIMARY KEY (`Vault_ID`),
  ADD KEY `Vault_organizador` (`OrgID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `evento`
--
ALTER TABLE `evento`
  MODIFY `prodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `favID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1067;

--
-- AUTO_INCREMENT de tabela `organizador`
--
ALTER TABLE `organizador`
  MODIFY `orgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario_evento`
--
ALTER TABLE `usuario_evento`
  MODIFY `ID_Ass` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `adm_role`
--
ALTER TABLE `adm_role`
  ADD CONSTRAINT `adm_role_organizador` FOREIGN KEY (`orgID`) REFERENCES `organizador` (`orgID`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`orgID`) REFERENCES `organizador` (`orgID`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_evento` FOREIGN KEY (`prodID`) REFERENCES `evento` (`prodID`),
  ADD CONSTRAINT `favoritos_usuario` FOREIGN KEY (`User_ID`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `evento_historico` FOREIGN KEY (`ProdID`) REFERENCES `evento` (`prodID`),
  ADD CONSTRAINT `historico_usuario_evento` FOREIGN KEY (`ID_Ass`) REFERENCES `usuario_evento` (`ID_Ass`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pagamento_historico` FOREIGN KEY (`PayID`) REFERENCES `pagamento` (`PayID`);

--
-- Limitadores para a tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `pagamento_usuario` FOREIGN KEY (`User_ID`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `usuario_evento`
--
ALTER TABLE `usuario_evento`
  ADD CONSTRAINT `usuario_evento_Vault` FOREIGN KEY (`VaultID`) REFERENCES `vault` (`Vault_ID`),
  ADD CONSTRAINT `usuario_evento_evento` FOREIGN KEY (`prodID`) REFERENCES `evento` (`prodID`),
  ADD CONSTRAINT `usuario_evento_pagamento` FOREIGN KEY (`PayInfo`) REFERENCES `pagamento` (`PayID`),
  ADD CONSTRAINT `usuario_evento_usuario` FOREIGN KEY (`User_ID`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `vault`
--
ALTER TABLE `vault`
  ADD CONSTRAINT `Vault_organizador` FOREIGN KEY (`OrgID`) REFERENCES `organizador` (`orgID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
