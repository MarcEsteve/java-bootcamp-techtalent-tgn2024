-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `academia`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `academia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `academia`;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `nombre` varchar(255) DEFAULT NULL,
  `apel1` varchar(255) DEFAULT NULL,
  `apel2` varchar(255) DEFAULT NULL,
  `dni` varchar(9) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `nace` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL CHECK (`sexo` in ('H','M')),
  `codalum` int(11) DEFAULT NULL,
  PRIMARY KEY (`dni`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `codalum` (`codalum`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`codalum`) REFERENCES `cursos` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `horas` int(11) NOT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `maxalumn` int(11) DEFAULT NULL,
  `dni` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `dni` (`dni`),
  CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `profesores` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fechacurso` CHECK (`fechainicio` < `fechafin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesores` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apel1` varchar(255) DEFAULT NULL,
  `apel2` varchar(255) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `titulacion` varchar(50) DEFAULT NULL,
  `sueldo` smallint(6) NOT NULL,
  PRIMARY KEY (`dni`),
  UNIQUE KEY `nombre` (`nombre`,`apel1`,`apel2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `almacenes`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `almacenes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `almacenes`;

--
-- Table structure for table `almacenes`
--

DROP TABLE IF EXISTS `almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacenes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `lugar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `capacidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenes`
--

LOCK TABLES `almacenes` WRITE;
/*!40000 ALTER TABLE `almacenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajas` (
  `nref` char(5) NOT NULL,
  `contenido` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `valor` float DEFAULT NULL,
  `almacen` int(11) DEFAULT NULL,
  PRIMARY KEY (`nref`),
  KEY `almacen` (`almacen`),
  CONSTRAINT `cajas_ibfk_1` FOREIGN KEY (`almacen`) REFERENCES `almacenes` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas`
--

LOCK TABLES `cajas` WRITE;
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `biblio`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `biblio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `biblio`;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `claveautor` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`claveautor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Tolkien'),(2,'Autor3'),(3,'MyAdmin'),(4,'AutorConsola'),(5,'jhjh');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editorial` (
  `claveditorial` smallint(6) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`claveditorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'edit1','zzz','6666');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejemplar`
--

DROP TABLE IF EXISTS `ejemplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejemplar` (
  `clavejemplar` int(11) NOT NULL,
  `clavelibro` int(11) NOT NULL,
  `numerorden` smallint(6) NOT NULL,
  `edicion` smallint(6) DEFAULT NULL,
  `ubicacion` varchar(15) DEFAULT NULL,
  `categoria` char(1) DEFAULT NULL,
  PRIMARY KEY (`clavejemplar`) USING BTREE,
  KEY `clavelibro` (`clavelibro`),
  CONSTRAINT `ejemplar_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `libro` (`clavelibro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplar`
--

LOCK TABLES `ejemplar` WRITE;
/*!40000 ALTER TABLE `ejemplar` DISABLE KEYS */;
INSERT INTO `ejemplar` VALUES (1,1,22,111,'cdsf','d');
/*!40000 ALTER TABLE `ejemplar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escritopor`
--

DROP TABLE IF EXISTS `escritopor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escritopor` (
  `clavelibro` int(11) NOT NULL,
  `claveautor` int(11) NOT NULL,
  KEY `clavelibro` (`clavelibro`),
  KEY `claveautor` (`claveautor`),
  CONSTRAINT `escritopor_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `libro` (`clavelibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `escritopor_ibfk_2` FOREIGN KEY (`claveautor`) REFERENCES `autor` (`claveautor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escritopor`
--

LOCK TABLES `escritopor` WRITE;
/*!40000 ALTER TABLE `escritopor` DISABLE KEYS */;
/*!40000 ALTER TABLE `escritopor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `clavelibro` int(11) NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `idioma` varchar(15) DEFAULT NULL,
  `formato` varchar(15) DEFAULT NULL,
  `claveditorial` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`clavelibro`),
  KEY `claveditorial` (`claveditorial`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`claveditorial`) REFERENCES `editorial` (`claveditorial`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'dsadsa','sdsd','dsd',1);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamo` (
  `clavesocio` int(11) DEFAULT NULL,
  `clavejemplar` int(11) DEFAULT NULL,
  `numerorden` smallint(6) DEFAULT NULL,
  `fechaprestamo` date NOT NULL,
  `fechadevolucion` date DEFAULT NULL,
  `notas` blob DEFAULT NULL,
  KEY `clavesocio` (`clavesocio`),
  KEY `clavejemplar` (`clavejemplar`),
  CONSTRAINT `FK_prestamo_ejemplar` FOREIGN KEY (`clavejemplar`) REFERENCES `ejemplar` (`clavejemplar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_prestamo_socio` FOREIGN KEY (`clavesocio`) REFERENCES `socio` (`clavesocio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socio`
--

DROP TABLE IF EXISTS `socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socio` (
  `clavesocio` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(60) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `categoria` char(1) DEFAULT NULL,
  PRIMARY KEY (`clavesocio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socio`
--

LOCK TABLES `socio` WRITE;
/*!40000 ALTER TABLE `socio` DISABLE KEYS */;
INSERT INTO `socio` VALUES (1,'Marc','ddd','666','a');
/*!40000 ALTER TABLE `socio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tema` (
  `clavetema` smallint(6) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`clavetema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratasobre`
--

DROP TABLE IF EXISTS `tratasobre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tratasobre` (
  `clavelibro` int(11) DEFAULT NULL,
  `clavetema` smallint(6) NOT NULL,
  KEY `clavelibro` (`clavelibro`),
  KEY `clavetema` (`clavetema`),
  CONSTRAINT `tratasobre_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `libro` (`clavelibro`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tratasobre_ibfk_2` FOREIGN KEY (`clavetema`) REFERENCES `tema` (`clavetema`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratasobre`
--

LOCK TABLES `tratasobre` WRITE;
/*!40000 ALTER TABLE `tratasobre` DISABLE KEYS */;
/*!40000 ALTER TABLE `tratasobre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `cine`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cine` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `cine`;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peliculas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `caledad` int(11) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `pelicula` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `pelicula` (`pelicula`),
  CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`pelicula`) REFERENCES `peliculas` (`codigo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `directores_despachos`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `directores_despachos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `directores_despachos`;

--
-- Table structure for table `despachos`
--

DROP TABLE IF EXISTS `despachos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `despachos` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad` int(11) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despachos`
--

LOCK TABLES `despachos` WRITE;
/*!40000 ALTER TABLE `despachos` DISABLE KEYS */;
INSERT INTO `despachos` VALUES (1,3),(2,5),(3,8),(4,16),(5,4),(6,7),(7,9),(8,3),(9,11),(10,33);
/*!40000 ALTER TABLE `despachos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directores`
--

DROP TABLE IF EXISTS `directores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directores` (
  `DNI` varchar(9) NOT NULL,
  `NomApels` varchar(255) DEFAULT NULL,
  `DNIJefe` varchar(9) DEFAULT NULL,
  `despacho` int(11) NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `DNIJefe` (`DNIJefe`),
  KEY `despacho` (`despacho`),
  CONSTRAINT `directores_ibfk_1` FOREIGN KEY (`DNIJefe`) REFERENCES `directores` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `directores_ibfk_2` FOREIGN KEY (`despacho`) REFERENCES `despachos` (`num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directores`
--

LOCK TABLES `directores` WRITE;
/*!40000 ALTER TABLE `directores` DISABLE KEYS */;
INSERT INTO `directores` VALUES ('12345','Marc Esteve Garcia',NULL,3),('12345645','Dani',NULL,5),('12376745','Pedro',NULL,9),('2345','Esteve',NULL,4),('3333','Garcia',NULL,2),('444','Mar',NULL,7),('657','Juan',NULL,10),('777','Marcos','444',6),('878787','Pepe',NULL,9),('999','Marquitos',NULL,8);
/*!40000 ALTER TABLE `directores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ecommerce`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `ecommerce`;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `CÓDIGOCLIENTE` varchar(30) NOT NULL,
  `EMPRESA` varchar(30) DEFAULT NULL,
  `DIRECCIÓN` varchar(30) DEFAULT NULL,
  `POBLACIÓN` varchar(30) DEFAULT NULL,
  `TELÉFONO` varchar(30) DEFAULT NULL,
  `RESPONSABLE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CÓDIGOCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('CT01','BELTRÁN E HIJOS','LAS FUENTES 78','MADRID','914456435','ANGEL MARTÍNEZ'),('CT02','LA MODERNA','LA PALOMA 123','OVIEDO','985323434','JUAN GARCÍA'),('CT03','EL ESPAÑOLITO','MOTORES 34','BARCELONA','934565343','ANA FERNÁNDEZ'),('CT04','EXPORTASA','VALLECAS 34','MADRID','913452378','ELVIRA GÓMEZ'),('CT06','CONFECCIONES AMPARO','LOS MOROS 23','GIJÓN','985754332','LUÍS ÁLVAREZ'),('CT07','LA CASA DEL JUGUETE','AMÉRICA 45','MADRID','912649987','ELÍAS PÉREZ'),('CT08','JUGUETERÍA SUÁREZ','PARIS 123','BARCELONA','933457866','JUAN GARCÍA'),('CT09','ALMACÉN POPULAR','LAS FUENTES 124','BILBAO','942347127','JOSÉ ÁLVAREZ'),('CT10','FERETERÍA EL CLAVO','PASEO DE ÁLAMOS 78','MADRID','914354866','MANUEL MENÉNDEZ'),('CT11','JUGUETES MARTÍNEZ','VIA LAYETANA 245','BARCELONA','936628554','FRANCISCO CUEVAS'),('CT12','FERNÁNDEZ SL','PASEO DEL MAR 45','SANTANDER','942049586','ELISA COLLADO'),('CT13','CONFECCIONES ARTÍMEZ','GENERAL PERÓN 45','A CORUÑA','981345239','ESTEBAN PASCUAL'),('CT14','DEPORTES GARCÍA','GUZMÁN EL BUENO 45','MADRID','913299475','ANA JIMÉNEZ'),('CT15','EXCLUSIVAS FERNÁNDEZ','LLOBREGAT 250','BARCELONA','939558365','LUISA FERNÁNDEZ'),('CT16','DEPORTES MORÁN','AUTONOMÍA 45','LUGO','982986944','JOSÉ MANZANO'),('CT17','BAZAR FRANCISCO','CARMEN 45','ZAMORA','980495288','CARLOS BELTRÁN'),('CT18','JUGUETES LA SONRISA','LA BAÑEZA 67','LEÓN','987945368','FAUSTINO PÉREZ'),('CT19','CONFECCIONES GALÁN','FUENCARRAL 78','MADRID','913859234','JUAN GARCÍA'),('CT20','LA CURTIDORA','OLIVARES 3','MÁLAGA','953756259','MARÍA GÓMEZ'),('CT21','LÍNEA JOVEN','SIERPES 78','SEVILLA','953452567','ASUNCIÓN SALADO'),('CT22','BAZAR EL BARAT','DIAGONAL 56','BARCELONA','936692866','ELISA DAPENA'),('CT23','EL PALACIO DE LA MODA','ORTEGA Y GASSET 129','MADRID','927785235','LAURA CARRASCO'),('CT24','SÁEZ Y CÍA','INFANTA MERCEDS 23','SEVILLA','954869234','MANUEL GUERRA'),('CT25','DEPORTES EL MADRILEÑO','CASTILLA 345','ZARAGOZA','976388934','CARLOS GONZÁLEZ'),('CT26','FERRETERÍA LA ESCOBA','ORENSE 7','MADRID','918459346','JOSÉ GARCÍA'),('CT27','JUGUETES EL BARATO','VÍA AUGUSTA 245','BARCELONA','933486984','ELVIRA IGLESIAS'),('CT28','CONFECCIONES HERMINIA','CORRIDA 345','GIJÓN','985597315','ABEL GONZÁLEZ'),('CT30','BAZAR EL ARGENTINO','ATOCHA 55','MADRID','912495973','ADRIÁN ÁLVAREZ'),('CT31','LA TIENDA ELEGANTE','EL COMENDADOR 67','ZARAGOZA','975694035','JOSÉ PASCUAL'),('CT32','DEPORTES NAUTICOS GARCÍA','JUAN FERNÁNDEZ 89','ÁVILA','920268648','JUAN CONRADO'),('CT33','CONFECCIONES RUIZ','LLOBREGAT 345','BARCELONA','934587615','CARLOS SANZ'),('CT34','BAZAR LA FARAONA','CASTILLA Y LEÓN 34','MADRID','915483627','ANGEL SANTAMARÍA'),('CT35','FERRETERÍA EL MARTILLO','CASTELLANOS 205','SALAMANCA','923548965','JOAQUÍN FERNANDEZ'),('CT36','JUGUETES EDUCATIVOS SANZ','ORENSE 89','MADRID','916872354','PEDRO IGLESIAS'),('CT37','ALMACENES FERNANDEZ','ANTÓN 67','TERUEL','978564025','MARIA ARDANZA'),('CT38','CONFECCIONES MÓNICA','MOTORES 67','BARCELONA','935681245','PEDRO SERRANO'),('CT39','FERRETERÍA LIMA','VALLECAS 45','MADRID','913532785','LUIS GARCÍA'),('CT40','DEPORTES EL BRASILEÑO','ABEL MARTÍNEZ 67','SALAMANCA','921548762','CARLOS GÓMEZ');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `NÚMERO_DE_PEDIDO` double NOT NULL,
  `CÓDIGO_CLIENTE` varchar(10) DEFAULT NULL,
  `FECHA_DE_PEDIDO` varchar(10) DEFAULT NULL,
  `FORMA_DE_PAGO` varchar(10) DEFAULT NULL,
  `DESCUENTO` double DEFAULT NULL,
  `ENVIADO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NÚMERO_DE_PEDIDO`),
  KEY `CÓDIGO_CLIENTE` (`CÓDIGO_CLIENTE`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`CÓDIGO_CLIENTE`) REFERENCES `clientes` (`CÓDIGOCLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'CT01','11/03/2000','CONTADO',0.02,'TRUE'),(3,'CT23','18/03/2000','APLAZADO',0.06,'FALSE'),(5,'CT25','31/03/2000','CONTADO',0.09,'FALSE'),(7,'CT12','12/04/2000','CONTADO',0.07,'FALSE'),(8,'CT01','15/04/2000','TARJETA',0.02,'TRUE'),(9,'CT21','21/04/2000','CONTADO',0.04,'FALSE'),(11,'CT04','01/05/2001','CONTADO',0.08,'TRUE'),(12,'CT06','19/05/2001','CONTADO',0.09,'TRUE'),(13,'CT13','30/04/2000','APLAZADO',0.03,'FALSE'),(16,'CT25','11/05/2001','CONTADO',0.12,'FALSE'),(19,'CT10','22/05/2002','CONTADO',0.07,'TRUE'),(21,'CT16','28/05/2001','CONTADO',0.03,'FALSE'),(22,'CT07','31/05/2000','TARJETA',0.05,'TRUE'),(25,'CT18','02/06/2000','CONTADO',0.06,'FALSE'),(26,'CT09','04/06/2001','APLAZADO',0.07,'TRUE'),(27,'CT34','06/06/2000','CONTADO',0.04,'FALSE'),(28,'CT28','08/06/2000','APLAZADO',0.08,'FALSE'),(29,'CT30','02/04/2001','TARJETA',0.06,'FALSE'),(30,'CT02','15/08/2000','CONTADO',0.06,'TRUE'),(31,'CT30','08/06/2000','TARJETA',0.05,'TRUE'),(32,'CT14','20/06/2001','APLAZADO',0.06,'FALSE'),(34,'CT26','23/06/2002','TARJETA',0.05,'FALSE'),(35,'CT26','30/06/2001','CONTADO',0.06,'FALSE'),(37,'CT24','02/07/2001','TARJETA',0.03,'TRUE'),(39,'CT20','08/07/2001','TARJETA',0.06,'TRUE'),(40,'CT04','12/07/2002','CONTADO',0.12,'FALSE'),(42,'CT34','15/07/2002','APLAZADO',0.07,'TRUE'),(43,'CT09','18/07/2001','CONTADO',0.07,'FALSE'),(44,'CT34','20/07/2002','APLAZADO',0.04,'FALSE'),(45,'CT30','22/07/2002','TARJETA',0.07,'FALSE'),(46,'CT31','25/07/2002','CONTADO',0.06,'FALSE'),(47,'CT34','31/07/2000','APLAZADO',0.08,'FALSE'),(48,'CT18','30/08/2002','CONTADO',0.03,'FALSE'),(49,'CT28','02/09/2002','CONTADO',0.03,'FALSE'),(50,'CT09','05/09/2002','APLAZADO',0.08,'FALSE'),(51,'CT09','05/09/2002','CONTADO',0.05,'TRUE'),(63,'CT28','10/09/2000','CONTADO',0.09,'FALSE'),(72,'CT01','18/08/2002','CONTADO',0.05,'TRUE'),(73,'CT01','02/08/2001','CONTADO',0.07,'FALSE'),(74,'CT01','17/09/2002','APLAZADO',0.08,'FALSE'),(75,'CT01','30/09/2002','TARJETA',0.12,'FALSE'),(76,'CT01','19/10/2002','CONTADO',0.04,'TRUE'),(77,'CT01','28/10/2000','CONTADO',0.05,'FALSE'),(79,'CT34','12/12/2000','CONTADO',0.05,'FALSE'),(85,'CT04','23/12/2002','TARJETA',0.04,'FALSE'),(86,'CT09','24/12/2001','APLAZADO',0.03,'FALSE'),(98,'CT01','27/12/2001','CONTADO',0.08,'TRUE'),(102,'CT06','12/01/2001','CONTADO',0.07,'TRUE'),(103,'CT02','24/01/2001','CONTADO',0.04,'FALSE'),(105,'CT30','01/01/2001','APLAZADO',0.09,'FALSE'),(5005,'CT30','10/08/2002','TARJETA',0,'TRUE'),(5050,'CT30','27/03/2002','TARJETA',0,'TRUE');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `CÓDIGOARTÍCULO` varchar(30) NOT NULL,
  `SECCIÓN` varchar(30) DEFAULT NULL,
  `NOMBREARTÍCULO` varchar(30) DEFAULT NULL,
  `PRECIO` double DEFAULT NULL,
  `FECHA` varchar(30) DEFAULT NULL,
  `IMPORTADO` varchar(30) DEFAULT NULL,
  `PAÍSDEORIGEN` varchar(30) DEFAULT NULL,
  `FOTO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CÓDIGOARTÍCULO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('AR01','FERRETERÍA','DESTORNILLADOR',6.628,'22/10/2000','FALSE','ESPAÑA',''),('AR02','CONFECCIÓN','TRAJE CABALLERO',284.5769,'11/03/2002','TRUE','ITALIA',''),('AR03','JUGUETERÍA','COCHE TELEDIRIGIDO',159.4462,'26/05/2002','TRUE','MARRUECOS',''),('AR04','DEPORTES','RAQUETA TENIS',93.4694,'20/03/2000','TRUE','USA',''),('AR06','DEPORTES','MANCUERNAS',60,'13/09/2000','TRUE','USA',''),('AR07','CONFECCIÓN','SERRUCHO',30.2045,'23/03/2001','TRUE','FRANCIA',''),('AR08','JUGUETERÍA','CORREPASILLOS',103.3356,'11/04/2000','TRUE','JAPÓN',''),('AR09','CONFECCIÓN','PANTALÓN SEÑORA',174.231,'10/01/2000','TRUE','MARRUECOS',''),('AR10','JUGUETERÍA','CONSOLA VIDEO',442.5444,'24/09/2002','TRUE','USA',''),('AR11','CERÁMICA','TUBOS',168.4253,'04/02/2000','TRUE','CHINA',''),('AR12','FERRETERÍA','LLAVE INGLESA',24.3986,'23/05/2001','TRUE','USA',''),('AR13','CONFECCIÓN','CAMISA CABALLERO',67.1306,'11/08/2002','FALSE','ESPAÑA',''),('AR14','JUGUETERÍA','TREN ELÉCTRICO',1505.3766,'03/07/2001','TRUE','JAPÓN',''),('AR15','CERÁMICA','PLATO DECORATIVO',54.0911,'07/06/2000','TRUE','CHINA',''),('AR16','FERRETERÍA','ALICATES',6.7362,'17/04/2000','TRUE','ITALIA',''),('AR17','JUGUETERÍA','MUÑECA ANDADORA',105.0593,'04/01/2001','FALSE','ESPAÑA',''),('AR18','DEPORTES','PISTOLA OLÍMPICA',46.7347,'02/02/2001','TRUE','SUECIA',''),('AR19','CONFECCIÓN','BLUSA SRA.',101.0566,'18/03/2000','TRUE','CHINA',''),('AR20','CERÁMICA','JUEGO DE TE',43.2728,'15/01/2001','TRUE','CHINA',''),('AR21','CERÁMICA','CENICERO',19.7468,'02/07/2001','TRUE','JAPÓN',''),('AR22','FERRETERÍA','MARTILLO',11.3952,'04/09/2001','FALSE','ESPAÑA',''),('AR23','CONFECCIÓN','CAZADORA PIEL',522.693,'10/07/2001','TRUE','ITALIA',''),('AR24','DEPORTES','BALÓN RUGBY',111.644,'11/11/2000','TRUE','USA',''),('AR25','DEPORTES','BALÓN BALONCESTO',75.2731,'25/06/2001','TRUE','JAPÓN',''),('AR26','JUGUETERÍA','FUERTE DE SOLDADOS',143.702,'25/11/2000','TRUE','JAPÓN',''),('AR27','CONFECCIÓN','ABRIGO CABALLERO',500000,'05/04/2002','TRUE','ITALIA',''),('AR28','DEPORTES','BALÓN FÚTBOL',43.9147,'04/07/2002','FALSE','ESPAÑA',''),('AR29','CONFECCIÓN','ABRIGO SRA',360.0736,'03/05/2001','TRUE','MARRUECOS',''),('AR30','FERRETERÍA','DESTORNILLADOR',9.0584,'20/02/2002','TRUE','FRANCIA',''),('AR31','JUGUETERÍA','PISTOLA CON SONIDOS',57.25,'15/04/2001','FALSE','ESPAÑA',''),('AR32','DEPORTES','CRONÓMETRO',439.1764,'03/01/2002','TRUE','USA',''),('AR33','CERÁMICA','MACETA',29.0434,'23/02/2000','FALSE','ESPAÑA',''),('AR34','OFICINA','PIE DE LÁMPARA',39.7606,'27/05/2001','TRUE','TURQUÍA',''),('AR35','FERRETERÍA','LIMA GRANDE',22.0692,'10/08/2002','FALSE','ESPAÑA',''),('AR36','FERRETERÍA','JUEGO DE BROCAS',15.095,'04/07/2002','TRUE','TAIWÁN',''),('AR37','CONFECCIÓN','CINTURÓN DE PIEL',4.3273,'12/05/2002','FALSE','ESPAÑA',''),('AR38','DEPORTES','CAÑA DE PESCA',270,'14/02/2000','TRUE','USA',''),('AR39','CERÁMICA','JARRA CHINA',127.7704,'02/09/2002','TRUE','CHINA',''),('AR40','DEPORTES','BOTA ALPINISMO',144,'05/05/2002','FALSE','ESPAÑA',''),('AR41','DEPORTES','PALAS DE PING PONG',21.6,'02/02/2002','FALSE','ESPAÑA','');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_pedidos`
--

DROP TABLE IF EXISTS `productos_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos_pedidos` (
  `NÚMERO_DE_PEDIDO` double DEFAULT NULL,
  `CÓDIGO_ARTÍCULO` varchar(10) DEFAULT NULL,
  `UNIDADES` double DEFAULT NULL,
  KEY `NÚMERO_DE_PEDIDO` (`NÚMERO_DE_PEDIDO`,`CÓDIGO_ARTÍCULO`),
  KEY `CÓDIGO_ARTÍCULO` (`CÓDIGO_ARTÍCULO`),
  CONSTRAINT `productos_pedidos_ibfk_1` FOREIGN KEY (`CÓDIGO_ARTÍCULO`) REFERENCES `productos` (`CÓDIGOARTÍCULO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `productos_pedidos_ibfk_2` FOREIGN KEY (`NÚMERO_DE_PEDIDO`) REFERENCES `pedidos` (`NÚMERO_DE_PEDIDO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_pedidos`
--

LOCK TABLES `productos_pedidos` WRITE;
/*!40000 ALTER TABLE `productos_pedidos` DISABLE KEYS */;
INSERT INTO `productos_pedidos` VALUES (1,'AR01',11),(1,'AR04',10),(1,'AR15',4),(1,'AR22',18),(3,'AR02',20),(3,'AR22',3),(5,'AR04',16),(7,'AR06',16),(8,'AR02',6),(8,'AR06',5),(8,'AR07',6),(8,'AR10',2),(8,'AR12',30),(8,'AR15',15),(8,'AR18',20),(8,'AR19',18),(8,'AR25',5),(8,'AR32',15),(8,'AR33',18),(8,'AR34',5),(8,'AR35',24),(9,'AR06',14),(11,'AR08',1),(12,'AR08',12),(13,'AR08',8),(16,'AR10',17),(19,'AR13',4),(21,'AR15',11),(22,'AR17',6),(22,'AR26',4),(22,'AR28',21),(25,'AR19',12),(26,'AR19',12),(27,'AR21',11),(28,'AR21',22),(29,'AR22',12),(30,'AR23',33),(31,'AR24',31),(32,'AR25',11),(34,'AR22',7),(34,'AR27',3),(35,'AR22',9),(35,'AR27',12),(37,'AR27',11),(39,'AR29',22),(40,'AR30',1),(42,'AR31',21),(43,'AR32',3),(44,'AR22',22),(45,'AR36',21),(46,'AR37',8),(47,'AR38',12),(48,'AR38',13),(49,'AR39',13),(50,'AR39',1);
/*!40000 ALTER TABLE `productos_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productosnuevos`
--

DROP TABLE IF EXISTS `productosnuevos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productosnuevos` (
  `CÓDIGOARTÍCULO` varchar(50) DEFAULT NULL,
  `SECCIÓN` varchar(50) DEFAULT NULL,
  `NOMBREARTÍCULO` varchar(50) DEFAULT NULL,
  `PRECIO` double DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `IMPORTADO` varchar(50) DEFAULT NULL,
  `PAÍSDEORIGEN` varchar(50) DEFAULT NULL,
  `FOTO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productosnuevos`
--

LOCK TABLES `productosnuevos` WRITE;
/*!40000 ALTER TABLE `productosnuevos` DISABLE KEYS */;
INSERT INTO `productosnuevos` VALUES ('AR50','ALTA COSTURA','TRAJE CABALLERO',1284.5769,'2002-03-11','TRUE','ITALIA',''),('AR51','DEPORTES DE RIESGO','RAQUETA TENIS',1093.4694,'2000-03-20','TRUE','USA',''),('AR52','DEPORTES DE RIESGO','MANCUERNAS',1060,'2000-09-13','TRUE','USA',''),('AR53','ALTA COSTURA','SERRUCHO',1030.2045,'2001-03-23','TRUE','FRANCIA',''),('AR54','ALTA COSTURA','PANTALÓN SEÑORA',1174.231,'2000-01-10','TRUE','MARRUECOS',''),('AR55','ALTA COSTURA','CAMISA CABALLERO',1067.1306,'2002-08-11','FALSE','ESPAÑA',''),('AR56','DEPORTES DE RIESGO','PISTOLA OLÍMPICA',1046.7347,'2001-02-02','TRUE','SUECIA',''),('AR57','ALTA COSTURA','BLUSA SRA.',1101.0566,'2000-03-18','TRUE','CHINA',''),('AR58','ALTA COSTURA','CAZADORA PIEL',1522.693,'2001-07-10','TRUE','ITALIA',''),('AR59','DEPORTES DE RIESGO','BALÓN RUGBY',1111.644,'2000-11-11','TRUE','USA',''),('AR60','DEPORTES DE RIESGO','BALÓN BALONCESTO',1075.2731,'2001-06-25','TRUE','JAPÓN',''),('AR61','ALTA COSTURA','ABRIGO CABALLERO',1500,'2002-04-05','TRUE','ITALIA',''),('AR62','DEPORTES DE RIESGO','BALÓN FÚTBOL',1043.9147,'2002-07-04','FALSE','ESPAÑA',''),('AR63','ALTA COSTURA','ABRIGO SRA',1360.0736,'2001-05-03','TRUE','MARRUECOS',''),('AR64','DEPORTES DE RIESGO','CRONÓMETRO',1439.1764,'2002-01-03','TRUE','USA',''),('AR65','ALTA COSTURA','CINTURÓN DE PIEL',1004.3273,'2002-05-12','FALSE','ESPAÑA',''),('AR66','DEPORTES DE RIESGO','CAÑA DE PESCA',1270,'2000-02-14','TRUE','USA',''),('AR67','DEPORTES DE RIESGO','BOTA ALPINISMO',1144,'2002-05-05','FALSE','ESPAÑA',''),('AR68','DEPORTES DE RIESGO','PALAS DE PING PONG',1021.6,'2002-02-02','FALSE','ESPAÑA','');
/*!40000 ALTER TABLE `productosnuevos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ejemplos_test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ejemplos_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `ejemplos_test`;

--
-- Table structure for table `ciudad2`
--

DROP TABLE IF EXISTS `ciudad2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad2` (
  `clave` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `población` int(11) DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad2`
--

LOCK TABLES `ciudad2` WRITE;
/*!40000 ALTER TABLE `ciudad2` DISABLE KEYS */;
INSERT INTO `ciudad2` VALUES (1,'Juanito',7920000),(3,'Paris',9583200),(4,'Barlín',7920000),(5,'Roma',7920000),(7,'Pekin',7920000),(8,'prueba',7920000);
/*!40000 ALTER TABLE `ciudad2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `empleadosdepartamentos`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `empleadosdepartamentos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `empleadosdepartamentos`;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `presupuesto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellidos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `departamento` (`departamento`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `gestion_pedidos`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gestion_pedidos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `gestion_pedidos`;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `CÓDIGOCLIENTE` varchar(30) NOT NULL,
  `EMPRESA` varchar(30) DEFAULT NULL,
  `DIRECCIÓN` varchar(30) DEFAULT NULL,
  `POBLACIÓN` varchar(30) DEFAULT NULL,
  `TELÉFONO` varchar(30) DEFAULT NULL,
  `RESPONSABLE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CÓDIGOCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('CT01','BELTRÁN E HIJOS','LAS FUENTES 78','MADRID','914456435','ANGEL MARTÍNEZ'),('CT02','LA MODERNA','LA PALOMA 123','OVIEDO','985323434','JUAN GARCÍA'),('CT03','EL ESPAÑOLITO','MOTORES 34','BARCELONA','934565343','ANA FERNÁNDEZ'),('CT04','EXPORTASA','VALLECAS 34','MADRID','913452378','ELVIRA GÓMEZ'),('CT06','CONFECCIONES AMPARO','LOS MOROS 23','GIJÓN','985754332','LUÍS ÁLVAREZ'),('CT07','LA CASA DEL JUGUETE','AMÉRICA 45','MADRID','912649987','ELÍAS PÉREZ'),('CT08','JUGUETERÍA SUÁREZ','PARIS 123','BARCELONA','933457866','JUAN GARCÍA'),('CT09','ALMACÉN POPULAR','LAS FUENTES 124','BILBAO','942347127','JOSÉ ÁLVAREZ'),('CT10','FERETERÍA EL CLAVO','PASEO DE ÁLAMOS 78','MADRID','914354866','MANUEL MENÉNDEZ'),('CT11','JUGUETES MARTÍNEZ','VIA LAYETANA 245','BARCELONA','936628554','FRANCISCO CUEVAS'),('CT12','FERNÁNDEZ SL','PASEO DEL MAR 45','SANTANDER','942049586','ELISA COLLADO'),('CT13','CONFECCIONES ARTÍMEZ','GENERAL PERÓN 45','A CORUÑA','981345239','ESTEBAN PASCUAL'),('CT14','DEPORTES GARCÍA','GUZMÁN EL BUENO 45','MADRID','913299475','ANA JIMÉNEZ'),('CT15','EXCLUSIVAS FERNÁNDEZ','LLOBREGAT 250','BARCELONA','939558365','LUISA FERNÁNDEZ'),('CT16','DEPORTES MORÁN','AUTONOMÍA 45','LUGO','982986944','JOSÉ MANZANO'),('CT17','BAZAR FRANCISCO','CARMEN 45','ZAMORA','980495288','CARLOS BELTRÁN'),('CT18','JUGUETES LA SONRISA','LA BAÑEZA 67','LEÓN','987945368','FAUSTINO PÉREZ'),('CT19','CONFECCIONES GALÁN','FUENCARRAL 78','MADRID','913859234','JUAN GARCÍA'),('CT20','LA CURTIDORA','OLIVARES 3','MÁLAGA','953756259','MARÍA GÓMEZ'),('CT21','LÍNEA JOVEN','SIERPES 78','SEVILLA','953452567','ASUNCIÓN SALADO'),('CT22','BAZAR EL BARAT','DIAGONAL 56','BARCELONA','936692866','ELISA DAPENA'),('CT23','EL PALACIO DE LA MODA','ORTEGA Y GASSET 129','MADRID','927785235','LAURA CARRASCO'),('CT24','SÁEZ Y CÍA','INFANTA MERCEDS 23','SEVILLA','954869234','MANUEL GUERRA'),('CT25','DEPORTES EL MADRILEÑO','CASTILLA 345','ZARAGOZA','976388934','CARLOS GONZÁLEZ'),('CT26','FERRETERÍA LA ESCOBA','ORENSE 7','MADRID','918459346','JOSÉ GARCÍA'),('CT27','JUGUETES EL BARATO','VÍA AUGUSTA 245','BARCELONA','933486984','ELVIRA IGLESIAS'),('CT28','CONFECCIONES HERMINIA','CORRIDA 345','GIJÓN','985597315','ABEL GONZÁLEZ'),('CT30','BAZAR EL ARGENTINO','ATOCHA 55','MADRID','912495973','ADRIÁN ÁLVAREZ'),('CT31','LA TIENDA ELEGANTE','EL COMENDADOR 67','ZARAGOZA','975694035','JOSÉ PASCUAL'),('CT32','DEPORTES NAUTICOS GARCÍA','JUAN FERNÁNDEZ 89','ÁVILA','920268648','JUAN CONRADO'),('CT33','CONFECCIONES RUIZ','LLOBREGAT 345','BARCELONA','934587615','CARLOS SANZ'),('CT34','BAZAR LA FARAONA','CASTILLA Y LEÓN 34','MADRID','915483627','ANGEL SANTAMARÍA'),('CT35','FERRETERÍA EL MARTILLO','CASTELLANOS 205','SALAMANCA','923548965','JOAQUÍN FERNANDEZ'),('CT36','JUGUETES EDUCATIVOS SANZ','ORENSE 89','MADRID','916872354','PEDRO IGLESIAS'),('CT37','ALMACENES FERNANDEZ','ANTÓN 67','TERUEL','978564025','MARIA ARDANZA'),('CT38','CONFECCIONES MÓNICA','MOTORES 67','BARCELONA','935681245','PEDRO SERRANO'),('CT39','FERRETERÍA LIMA','VALLECAS 45','MADRID','913532785','LUIS GARCÍA'),('CT40','DEPORTES EL BRASILEÑO','ABEL MARTÍNEZ 67','SALAMANCA','921548762','CARLOS GÓMEZ');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `grandalma`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `grandalma` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `grandalma`;

--
-- Table structure for table `cajeros`
--

DROP TABLE IF EXISTS `cajeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajeros` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nomapels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajeros`
--

LOCK TABLES `cajeros` WRITE;
/*!40000 ALTER TABLE `cajeros` DISABLE KEYS */;
INSERT INTO `cajeros` VALUES (1,'Juan Pérez'),(2,'María García'),(3,'Pedro Rodríguez'),(4,'Ana Martínez'),(5,'Luis González'),(6,'Laura Sánchez'),(7,'Carlos Fernández'),(8,'Sofía López'),(9,'Pablo Ruiz'),(10,'Elena Martín');
/*!40000 ALTER TABLE `cajeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maquinas`
--

DROP TABLE IF EXISTS `maquinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maquinas` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `piso` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maquinas`
--

LOCK TABLES `maquinas` WRITE;
/*!40000 ALTER TABLE `maquinas` DISABLE KEYS */;
INSERT INTO `maquinas` VALUES (1,1),(2,2),(3,1),(4,3),(5,2),(6,1),(7,3),(8,2),(9,1),(10,3);
/*!40000 ALTER TABLE `maquinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Producto A',10),(2,'Producto B',20),(3,'Producto C',15),(4,'Producto D',30),(5,'Producto E',25),(6,'Producto F',18),(7,'Producto G',22),(8,'Producto H',35),(9,'Producto I',28),(10,'Producto J',40);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `cajero` int(11) NOT NULL,
  `maquina` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  PRIMARY KEY (`cajero`,`maquina`,`producto`),
  KEY `maquina` (`maquina`),
  KEY `producto` (`producto`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`cajero`) REFERENCES `cajeros` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`maquina`) REFERENCES `productos` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`producto`) REFERENCES `maquinas` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `investigadores_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `investigadores_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `investigadores_db`;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipos` (
  `numserie` char(4) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `codfac` int(11) DEFAULT NULL,
  PRIMARY KEY (`numserie`),
  KEY `codfac` (`codfac`),
  CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`codfac`) REFERENCES `facultades` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES ('E01','Equipo de Investigación en Ciencias de la Salud',1),('E02','Equipo de Investigación en Ciencias de la Tierra',2),('E03','Equipo de Investigación en Ciencias de la Vida',3),('E04','Equipo de Investigación en Ingeniería',4),('E05','Equipo de Investigación en Economía',5),('E06','Equipo de Investigación en Derecho',6),('E07','Equipo de Investigación en Ciencias Sociales',7),('E08','Equipo de Investigación en Ciencias de la Salud',8),('E09','Equipo de Investigación en Ciencias de la Tierra',9),('E10','Equipo de Investigación en Ciencias de la Vida',10);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultades`
--

DROP TABLE IF EXISTS `facultades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facultades` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultades`
--

LOCK TABLES `facultades` WRITE;
/*!40000 ALTER TABLE `facultades` DISABLE KEYS */;
INSERT INTO `facultades` VALUES (1,'Facultad de Ciencias'),(2,'Facultad de Humanidades'),(3,'Facultad de Ciencias Sociales'),(4,'Facultad de Medicina'),(5,'Facultad de Ingeniería'),(6,'Facultad de Economía'),(7,'Facultad de Derecho'),(8,'Facultad de Ciencias de la Salud'),(9,'Facultad de Ciencias de la Tierra'),(10,'Facultad de Ciencias de la Vida');
/*!40000 ALTER TABLE `facultades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigadores`
--

DROP TABLE IF EXISTS `investigadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investigadores` (
  `dni` varchar(9) NOT NULL,
  `nomapels` varchar(255) NOT NULL,
  `codfac` int(11) DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `codfac` (`codfac`),
  CONSTRAINT `investigadores_ibfk_1` FOREIGN KEY (`codfac`) REFERENCES `facultades` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigadores`
--

LOCK TABLES `investigadores` WRITE;
/*!40000 ALTER TABLE `investigadores` DISABLE KEYS */;
INSERT INTO `investigadores` VALUES ('01234567','Francisco Moreno',10),('12345678','Juan Pérez',1),('23456789','María González',2),('34567890','Pedro Sánchez',3),('45678901','Ana López',4),('56789012','José Martínez',5),('67890123','Luis Hernández',6),('78901234','Eva García',7),('89012345','Carlos Díaz',8),('90123456','Sofía Rodríguez',9);
/*!40000 ALTER TABLE `investigadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserva` (
  `dni` varchar(8) NOT NULL,
  `numserie` char(4) NOT NULL,
  `comienzo` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  PRIMARY KEY (`dni`,`numserie`),
  KEY `numserie` (`numserie`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `investigadores` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`numserie`) REFERENCES `equipos` (`numserie`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES ('01234567','E10','2022-10-01','2022-10-31'),('12345678','E01','2022-01-01','2022-01-31'),('23456789','E02','2022-02-01','2022-02-28'),('34567890','E03','2022-03-01','2022-03-31'),('45678901','E04','2022-04-01','2022-04-30'),('56789012','E05','2022-05-01','2022-05-31'),('67890123','E06','2022-06-01','2022-06-30'),('78901234','E07','2022-07-01','2022-07-31'),('89012345','E08','2022-08-01','2022-08-31'),('90123456','E09','2022-09-01','2022-09-30');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `laraveldb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `laraveldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `laraveldb`;
