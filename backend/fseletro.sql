-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `idprodutos` int NOT NULL AUTO_INCREMENT,
  `categorias` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagens` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idprodutos`,`categorias`),
  UNIQUE KEY `imagens_UNIQUE` (`imagens`),
  KEY `pedidos_idx` (`categorias`),
  CONSTRAINT `categorias` FOREIGN KEY (`idprodutos`) REFERENCES `pedidos` (`idpedidos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'geladeira','Geladeira frost free brastemp side inverse 540 litros',6389.00,5019.00,'imagens/brastemp%20side.jpg'),(2,'geladeira','Geladeira Frost Free Brastemp Branca 375 Litros',2068.60,1910.90,'imagens/branstemp%20branca.webp'),(3,'geladeira','Geladeira Frost Free Consul Prata 340 Litros',2199.90,2069.00,'imagens/geladeira%20consul.webp'),(4,'fogao','Fogão 4 Bocas Consul Inox com Mesa de Vidro',1209.90,1129.00,'imagens/fogao%20consul.jpeg'),(5,'fogao','Fogão de Piso 4 Bocas Atlas Monaco com Acendimento Automático',609.90,519.70,'imagens/atlas%20fogao.jpg'),(6,'microondas','Micro-ondas Consul 32 Litros Inox 220V',580.90,409.88,'imagens/micro%20consul%20inox.webp'),(7,'microondas','Micro-ondas 25L Espelhado Philco 220V',508.70,464.53,'imagens/microondas%20philco.webp'),(8,'microondas','Forno de Micro-ondas Eletrolux 20 Litros Branco 220V',459.90,436.05,'imagens/micro%20eletrolux.jpeg'),(9,'lavalouca','Lava-Louças Inox com 10 Serviços, 06 Programas de lavagem e Painel Blue Touch',3599.00,2799.90,'imagens/lava%20eletro.webp'),(10,'lavalouca','Lava-Louças Compacta 8 Serviços branca 127V Brastemp',1970.50,1730.61,'imagens/lava%20louca%20brastemp.jpeg'),(11,'lavaroupa','Lavadora de Roupas Brastemp 11kg com Turbo Performance Branca',1699.00,1214.10,'imagens/lavaroupasbrastemp.jpeg'),(12,'lavaroupa','Lavadora de Roupas Philco Inverter 12kg',2399.90,2399.90,'imagens/lavaroupasphilco.jpeg');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-23 19:01:24



-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `idpedidos` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `n_casa` int NOT NULL,
  `telefone` bigint NOT NULL,
  `email` varchar(45) NOT NULL,
  `produto` varchar(300) NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `quantidade` int NOT NULL,
  `precototal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idpedidos`,`email`),
  KEY `idprodutos_idx` (`idpedidos`),
  KEY `idcategorias_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Regina Santos','Rua das FLores',40,56098970,'regina@santos.com','Geladeira Frost Free Brastemp Side Inverse 540 Litros',5019.00,1,5019.00),(2,'João Nunes','Rua Severino Costa',104,50793578,'joaon@gmail.com','Micro-ondas Consul 32 Litros Inox 220V',409.88,2,819.00),(3,'Jasmine Kim','Av. Ataliba',23,72340986,'jaskim@outlook.com','Lavadora de Roupas Philco Inverter 12kg',2179.90,1,2179.90),(4,'Mariana Andrade','Rua Prado',249,61239124,'mariandra@globo.com','Fogão de Piso 4 Bocas Atlas Monaco',519.70,2,1039.40),(5,'Juliana Melo','Av. Penha Brasil',780,37651234,'jumelo@gmail.com','Forno de Micro-ondas Eletrolux 20 Litros Branco 220V',436.05,1,436.05),(6,'Rafael Dias','Av. Itaberaba',78,25437654,'rafa123@gmail.com','Lava-Louças Inox com 10 Serviços, 06 Programas de lavagem e Painel Blue Touch',2799.90,1,2799.90),(7,'Sofia Marques','Rua João Crudo',3,12651243,'sofimarques@outlook.com','Lava-Louças Compacta 8 Serviços branca 127V Brastemp',1730.61,1,1730.61),(8,'Roberto Silva','Rua Altino',50,77653423,'robert@gmail.com','Geladeira Frost Free Consul Prata 340 Litros',2069.00,1,2069.00),(9,'Vitor Santos','Rua Expedito',267,17853853,'vitor453@bol.com','Geladeira Frost Free Brastemp Branca 375 Litros',1910.90,1,1910.90),(10,'Helena Brito','Av. Pq Novo Mundo',356,92648638,'helenabrito123@gmail.com','Micro-ondas 25L Espelhado Philco 220V',464.53,1,464.53),(11,'Eliane da Cruz','Rua Itatiba do Sul',9,41829554,'elicruz@gmail.com','Micro-ondas Consul 32 Litros Inox 220V',409.88,1,409.88),(12,'Evandro Akira','Rua Maria José',765,12763345,'evandro@outlook.com','Geladeira Frost Free Consul Prata 340 Litros',2069.00,1,2069.00),(13,'Ana Rita Silva','Rua São Pedro',90,55447788,'anarita@uol.com','Geladeira Frost Free Brastemp Branca 375 Litros',1910.00,3,5732.70);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-23 19:01:27

-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,'Ana','Site com preços incriveis','2020-10-23 00:47:19'),(2,'Ana Rita','Adoro compra nesse site, os descontos são ótimos','2020-10-23 00:51:43'),(3,'Ana Rita','Adoro compra nesse site, os descontos são ótimos','2020-10-23 01:06:12'),(4,'Ana Rita','Adoro compra nesse site, os descontos são ótimos','2020-10-23 01:09:12'),(5,'Roberto Dias','Qual o horário de funcionamento da loja? ','2020-10-23 01:10:24'),(6,'Eliane da Cruz','Não estou conseguindo enviar meus pedidos','2020-10-25 17:03:49'),(7,'Benedita Maria','Quando vai entrar novos pedidos?','2020-10-31 19:25:13'),(8,'Benedita Maria','Quando vai entrar novos pedidos?','2020-10-31 19:25:50'),(9,'Benedita Maria','Quando vai entrar novos pedidos?','2020-10-31 19:26:10'),(10,'Bia Kim','Amo esse site','2020-12-20 18:56:51'),(11,'Bia Kim','Amo esse site','2020-12-20 18:57:00');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-23 19:01:25
