-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- ------------------------------------------------------
-- Server version	10.2.40-MariaDB-log
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `category`
--
DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 8 DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `category`
--
LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */
;
INSERT INTO `category`
VALUES (1, 'bebida energetica'),
  (2, 'pisco'),
  (3, 'ron'),
  (4, 'bebida'),
  (5, 'snack'),
  (6, 'cerveza'),
  (7, 'vodka');
/*!40000 ALTER TABLE `category` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `product`
--
DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_name` (`name`),
  KEY `product_price` (`price`),
  KEY `product_discount` (`discount`),
  KEY `product_category` (`category`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 105 DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `product`
--
LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */
;
INSERT INTO `product`
VALUES (
    5,
    'ENERGETICA MR BIG',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/misterbig3308256.jpg',
    1490,
    20,
    1
  ),
  (
    6,
    'ENERGETICA RED BULL',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/redbull8381.jpg',
    1490,
    0,
    1
  ),
  (
    7,
    'ENERGETICA SCORE',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/logo7698.png',
    1290,
    0,
    1
  ),
  (
    8,
    'PISCO ALTO DEL CARMEN 35º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/alto8532.jpg',
    7990,
    10,
    2
  ),
  (
    9,
    'PISCO ALTO DEL CARMEN 40º ',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/alto408581.jpg',
    5990,
    0,
    2
  ),
  (
    10,
    'PISCO ARTESANOS 35º ',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/artesanos8818.jpg',
    3990,
    0,
    2
  ),
  (
    11,
    'PISCO BAUZA 40º ',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/bauza408831.jpg',
    4990,
    0,
    2
  ),
  (
    12,
    'PISCO CAMPANARIO 35º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/campanario8845.jpg',
    2990,
    20,
    2
  ),
  (
    13,
    'PISCO CAMPANARIO 40º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/campanario408881.jpg',
    3990,
    20,
    2
  ),
  (
    14,
    'PISCO ESPIRITU DEL ELQUI 40º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/espiritu8936.jpg',
    5990,
    20,
    2
  ),
  (
    15,
    'PISCO ESPIRITU DEL ELQUI 45º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/espiritu8957.jpg',
    6990,
    5,
    2
  ),
  (
    16,
    'PISCO HORCON QUEMADO 35º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/horcon359049.jpg',
    6990,
    20,
    2
  ),
  (
    17,
    'PISCO HORCON QUEMADO 40º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/horcon409062.jpg',
    7990,
    20,
    2
  ),
  (
    18,
    'PISCO HORCON QUEMADO 46º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/horcon469075.jpg',
    8990,
    20,
    2
  ),
  (
    19,
    'PISCO MISTRAL 35º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/mistral359200.jpg',
    4990,
    20,
    2
  ),
  (
    20,
    'PISCO MISTRAL 40º ',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/mistral409215.jpg',
    4990,
    20,
    2
  ),
  (
    21,
    'PISCO TRES ERRES 35º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/rrr359305.jpg',
    4590,
    20,
    2
  ),
  (
    22,
    'PISCO TRES ERRES 40º',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/rrr409319.jpg',
    4990,
    20,
    2
  ),
  (
    23,
    'RON BACARDI AÑEJO',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/bacardi9450.jpg',
    4990,
    0,
    3
  ),
  (
    24,
    'RON BACARDI 8 AÑOS',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/bacardianejo9463.jpg',
    5990,
    0,
    3
  ),
  (
    25,
    'RON ABUELO',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/abuelo9475.jpg',
    3990,
    0,
    3
  ),
  (
    26,
    'RON BARCELO AÑEJO',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/barceloanejo9553.jpg',
    4990,
    0,
    3
  ),
  (
    27,
    'RON BARCELO DORADO',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/barcelodorado9567.jpg',
    3990,
    0,
    3
  ),
  (
    28,
    'RON FLOR DE CAÑA 4 AÑOS',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/flor49664.jpg',
    3990,
    0,
    3
  ),
  (
    29,
    'RON FLOR DE CAÑA 5 AÑOS',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/flor59677.jpg',
    4590,
    0,
    3
  ),
  (
    30,
    'RON HAVANA AÑEJO RESERVA',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/havanaan-ejo9750.jpg',
    6990,
    0,
    3
  ),
  (
    31,
    'RON HAVANA ESPECIAL',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/havanaespecial9768.jpg',
    5990,
    20,
    3
  ),
  (
    32,
    'RON PAMPERO',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/pampero-especial0296.jpg',
    5490,
    20,
    3
  ),
  (
    33,
    'RON PAMPERO ANIVERSARIO',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/ron_pampero_aniversario0311.jpg',
    20000,
    15,
    3
  ),
  (
    34,
    'ENERGETICA MONSTER RIPPER',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/mosterriper0436.jpg',
    1990,
    0,
    1
  ),
  (
    35,
    'ENERGETICA MAKKA DRINKS',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/makka-drinks-250ml0455.jpg',
    1190,
    0,
    1
  ),
  (
    36,
    'ENERGETICA MONSTER VERDE',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/monsterverde0476.jpg',
    1990,
    0,
    1
  ),
  (
    37,
    'COCA COLA ZERO DESECHABLE',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/cocazero9766.jpg',
    1490,
    0,
    4
  ),
  (
    38,
    'RON BOTRAN AÑEJO 5 AÑOS',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/ronbotran9337.jpg',
    4990,
    0,
    3
  ),
  (
    39,
    'RON MITJANS',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/mitjan6396.jpg',
    2990,
    0,
    3
  ),
  (
    47,
    'Maní salado',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/manisaladomp4415.jpg',
    600,
    0,
    5
  ),
  (
    48,
    'SPRITE 1 1/2 Lts',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/sprite-lata-33cl5575.jpg',
    1500,
    0,
    4
  ),
  (
    50,
    'SPRITE 2 Lt',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/sprite-2lt4365.jpg',
    1800,
    0,
    4
  ),
  (
    52,
    'Fanta',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/fanta_2lt5236.jpg',
    1500,
    0,
    4
  ),
  (
    53,
    'Mani Sin Sal',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/manisinsalmp6988.jpg',
    500,
    0,
    5
  ),
  (
    54,
    'Papas Fritas Lisas Bolsa Grande',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/papaslisasgrande7128.jpg',
    1490,
    0,
    5
  ),
  (
    55,
    'Papas Fritas Bolsa Pequeña',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/papaslisas7271.jpg',
    500,
    0,
    5
  ),
  (
    56,
    'Papas Fritas Tarro',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/78028005335657432.jpg',
    1990,
    0,
    5
  ),
  (
    57,
    'COCA COLA NORMAL DESECHABLE 1500cc',
    NULL,
    1500,
    0,
    4
  ),
  (
    58,
    'COCA COLA LIGHT DESECHABLE',
    NULL,
    1500,
    0,
    4
  ),
  (68, 'Bebida Sprite 1 Lt', NULL, 1250, 10, 4),
  (77, 'ENERGETICA MONSTER RIPPER', '', 1990, 0, 1),
  (79, 'ENERGETICA MONSTER VERDE', '', 1990, 0, 1),
  (
    87,
    'PISCO MISTRAL 35°',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/358978.jpg',
    4990,
    0,
    2
  ),
  (
    88,
    'PISCO MISTRAL GRAN NOBEL 40°',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/grannobel9104.jpg',
    19900,
    0,
    2
  ),
  (
    89,
    'PISCO MISTRAL 40°',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/409346.jpg',
    4990,
    0,
    2
  ),
  (
    90,
    'PISCO MISTRAL 46°',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/469463.jpg',
    7890,
    0,
    2
  ),
  (
    91,
    'PISCO MISTRAL NOBEL 40°',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/nobel409551.jpg',
    19990,
    0,
    2
  ),
  (
    92,
    'PISCO MISTRAL NOBEL 46',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/nobelanejado9639.jpg',
    15990,
    15,
    2
  ),
  (
    98,
    'Cerveza Escudo Normal LATA 350CC',
    '',
    600,
    0,
    6
  ),
  (
    99,
    'Cerveza Escudo Sin Filtrar LATA 350CC',
    '',
    800,
    0,
    6
  ),
  (
    104,
    'ABSOLUT',
    'https://dojiw2m9tvv09.cloudfront.net/11132/product/absolut21381.png',
    8990,
    30,
    7
  );
/*!40000 ALTER TABLE `product` ENABLE KEYS */
;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2022-09-01 20:41:00
