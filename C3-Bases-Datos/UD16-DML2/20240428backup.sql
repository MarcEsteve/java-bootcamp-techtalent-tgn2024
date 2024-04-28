-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2024 a las 19:01:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academia`
--
CREATE DATABASE IF NOT EXISTS `academia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `academia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `nombre` varchar(255) DEFAULT NULL,
  `apel1` varchar(255) DEFAULT NULL,
  `apel2` varchar(255) DEFAULT NULL,
  `dni` varchar(9) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `nace` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL CHECK (`sexo` in ('H','M')),
  `codalum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `horas` int(11) NOT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `maxalumn` int(11) DEFAULT NULL,
  `dni` varchar(9) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apel1` varchar(255) DEFAULT NULL,
  `apel2` varchar(255) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `titulacion` varchar(50) DEFAULT NULL,
  `sueldo` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`dni`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `codalum` (`codalum`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cod`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `dni` (`dni`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`dni`),
  ADD UNIQUE KEY `nombre` (`nombre`,`apel1`,`apel2`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`codalum`) REFERENCES `cursos` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `profesores` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `almacenes`
--
CREATE DATABASE IF NOT EXISTS `almacenes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `almacenes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE `almacenes` (
  `codigo` int(11) NOT NULL,
  `lugar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `capacidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `nref` char(5) NOT NULL,
  `contenido` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `valor` float DEFAULT NULL,
  `almacen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`nref`),
  ADD KEY `almacen` (`almacen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD CONSTRAINT `cajas_ibfk_1` FOREIGN KEY (`almacen`) REFERENCES `almacenes` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `biblio`
--
CREATE DATABASE IF NOT EXISTS `biblio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblio`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `claveautor` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`claveautor`, `nombre`) VALUES
(1, 'Tolkien'),
(2, 'Autor3'),
(3, 'MyAdmin'),
(4, 'AutorConsola'),
(5, 'jhjh');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `claveditorial` smallint(6) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`claveditorial`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'edit1', 'zzz', '6666');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar`
--

CREATE TABLE `ejemplar` (
  `clavejemplar` int(11) NOT NULL,
  `clavelibro` int(11) NOT NULL,
  `numerorden` smallint(6) NOT NULL,
  `edicion` smallint(6) DEFAULT NULL,
  `ubicacion` varchar(15) DEFAULT NULL,
  `categoria` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ejemplar`
--

INSERT INTO `ejemplar` (`clavejemplar`, `clavelibro`, `numerorden`, `edicion`, `ubicacion`, `categoria`) VALUES
(1, 1, 22, 111, 'cdsf', 'd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escritopor`
--

CREATE TABLE `escritopor` (
  `clavelibro` int(11) NOT NULL,
  `claveautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `clavelibro` int(11) NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `idioma` varchar(15) DEFAULT NULL,
  `formato` varchar(15) DEFAULT NULL,
  `claveditorial` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`clavelibro`, `titulo`, `idioma`, `formato`, `claveditorial`) VALUES
(1, 'dsadsa', 'sdsd', 'dsd', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `clavesocio` int(11) DEFAULT NULL,
  `clavejemplar` int(11) DEFAULT NULL,
  `numerorden` smallint(6) DEFAULT NULL,
  `fechaprestamo` date NOT NULL,
  `fechadevolucion` date DEFAULT NULL,
  `notas` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE `socio` (
  `clavesocio` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(60) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `categoria` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `socio`
--

INSERT INTO `socio` (`clavesocio`, `nombre`, `direccion`, `telefono`, `categoria`) VALUES
(1, 'Marc', 'ddd', '666', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `clavetema` smallint(6) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratasobre`
--

CREATE TABLE `tratasobre` (
  `clavelibro` int(11) DEFAULT NULL,
  `clavetema` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`claveautor`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`claveditorial`);

--
-- Indices de la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD PRIMARY KEY (`clavejemplar`) USING BTREE,
  ADD KEY `clavelibro` (`clavelibro`);

--
-- Indices de la tabla `escritopor`
--
ALTER TABLE `escritopor`
  ADD KEY `clavelibro` (`clavelibro`),
  ADD KEY `claveautor` (`claveautor`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`clavelibro`),
  ADD KEY `claveditorial` (`claveditorial`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD KEY `clavesocio` (`clavesocio`),
  ADD KEY `clavejemplar` (`clavejemplar`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`clavesocio`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`clavetema`);

--
-- Indices de la tabla `tratasobre`
--
ALTER TABLE `tratasobre`
  ADD KEY `clavelibro` (`clavelibro`),
  ADD KEY `clavetema` (`clavetema`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD CONSTRAINT `ejemplar_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `libro` (`clavelibro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `escritopor`
--
ALTER TABLE `escritopor`
  ADD CONSTRAINT `escritopor_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `libro` (`clavelibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `escritopor_ibfk_2` FOREIGN KEY (`claveautor`) REFERENCES `autor` (`claveautor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`claveditorial`) REFERENCES `editorial` (`claveditorial`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `FK_prestamo_ejemplar` FOREIGN KEY (`clavejemplar`) REFERENCES `ejemplar` (`clavejemplar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_prestamo_socio` FOREIGN KEY (`clavesocio`) REFERENCES `socio` (`clavesocio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tratasobre`
--
ALTER TABLE `tratasobre`
  ADD CONSTRAINT `tratasobre_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `libro` (`clavelibro`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tratasobre_ibfk_2` FOREIGN KEY (`clavetema`) REFERENCES `tema` (`clavetema`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `cine`
--
CREATE DATABASE IF NOT EXISTS `cine` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cine`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `caledad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pelicula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `pelicula` (`pelicula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `salas`
--
ALTER TABLE `salas`
  ADD CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`pelicula`) REFERENCES `peliculas` (`codigo`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Base de datos: `directores_despachos`
--
CREATE DATABASE IF NOT EXISTS `directores_despachos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `directores_despachos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despachos`
--

CREATE TABLE `despachos` (
  `num` int(11) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `despachos`
--

INSERT INTO `despachos` (`num`, `capacidad`) VALUES
(1, 3),
(2, 5),
(3, 8),
(4, 16),
(5, 4),
(6, 7),
(7, 9),
(8, 3),
(9, 11),
(10, 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

CREATE TABLE `directores` (
  `DNI` varchar(9) NOT NULL,
  `NomApels` varchar(255) DEFAULT NULL,
  `DNIJefe` varchar(9) DEFAULT NULL,
  `despacho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`DNI`, `NomApels`, `DNIJefe`, `despacho`) VALUES
('12345', 'Marc Esteve Garcia', NULL, 3),
('12345645', 'Dani', NULL, 5),
('12376745', 'Pedro', NULL, 9),
('2345', 'Esteve', NULL, 4),
('3333', 'Garcia', NULL, 2),
('444', 'Mar', NULL, 7),
('657', 'Juan', NULL, 10),
('777', 'Marcos', '444', 6),
('878787', 'Pepe', NULL, 9),
('999', 'Marquitos', NULL, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `despachos`
--
ALTER TABLE `despachos`
  ADD PRIMARY KEY (`num`);

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`DNI`),
  ADD KEY `DNIJefe` (`DNIJefe`),
  ADD KEY `despacho` (`despacho`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `despachos`
--
ALTER TABLE `despachos`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `directores`
--
ALTER TABLE `directores`
  ADD CONSTRAINT `directores_ibfk_1` FOREIGN KEY (`DNIJefe`) REFERENCES `directores` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directores_ibfk_2` FOREIGN KEY (`despacho`) REFERENCES `despachos` (`num`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `CÓDIGOCLIENTE` varchar(30) NOT NULL,
  `EMPRESA` varchar(30) DEFAULT NULL,
  `DIRECCIÓN` varchar(30) DEFAULT NULL,
  `POBLACIÓN` varchar(30) DEFAULT NULL,
  `TELÉFONO` varchar(30) DEFAULT NULL,
  `RESPONSABLE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`CÓDIGOCLIENTE`, `EMPRESA`, `DIRECCIÓN`, `POBLACIÓN`, `TELÉFONO`, `RESPONSABLE`) VALUES
('CT01', 'BELTRÁN E HIJOS', 'LAS FUENTES 78', 'MADRID', '914456435', 'ANGEL MARTÍNEZ'),
('CT02', 'LA MODERNA', 'LA PALOMA 123', 'OVIEDO', '985323434', 'JUAN GARCÍA'),
('CT03', 'EL ESPAÑOLITO', 'MOTORES 34', 'BARCELONA', '934565343', 'ANA FERNÁNDEZ'),
('CT04', 'EXPORTASA', 'VALLECAS 34', 'MADRID', '913452378', 'ELVIRA GÓMEZ'),
('CT06', 'CONFECCIONES AMPARO', 'LOS MOROS 23', 'GIJÓN', '985754332', 'LUÍS ÁLVAREZ'),
('CT07', 'LA CASA DEL JUGUETE', 'AMÉRICA 45', 'MADRID', '912649987', 'ELÍAS PÉREZ'),
('CT08', 'JUGUETERÍA SUÁREZ', 'PARIS 123', 'BARCELONA', '933457866', 'JUAN GARCÍA'),
('CT09', 'ALMACÉN POPULAR', 'LAS FUENTES 124', 'BILBAO', '942347127', 'JOSÉ ÁLVAREZ'),
('CT10', 'FERETERÍA EL CLAVO', 'PASEO DE ÁLAMOS 78', 'MADRID', '914354866', 'MANUEL MENÉNDEZ'),
('CT11', 'JUGUETES MARTÍNEZ', 'VIA LAYETANA 245', 'BARCELONA', '936628554', 'FRANCISCO CUEVAS'),
('CT12', 'FERNÁNDEZ SL', 'PASEO DEL MAR 45', 'SANTANDER', '942049586', 'ELISA COLLADO'),
('CT13', 'CONFECCIONES ARTÍMEZ', 'GENERAL PERÓN 45', 'A CORUÑA', '981345239', 'ESTEBAN PASCUAL'),
('CT14', 'DEPORTES GARCÍA', 'GUZMÁN EL BUENO 45', 'MADRID', '913299475', 'ANA JIMÉNEZ'),
('CT15', 'EXCLUSIVAS FERNÁNDEZ', 'LLOBREGAT 250', 'BARCELONA', '939558365', 'LUISA FERNÁNDEZ'),
('CT16', 'DEPORTES MORÁN', 'AUTONOMÍA 45', 'LUGO', '982986944', 'JOSÉ MANZANO'),
('CT17', 'BAZAR FRANCISCO', 'CARMEN 45', 'ZAMORA', '980495288', 'CARLOS BELTRÁN'),
('CT18', 'JUGUETES LA SONRISA', 'LA BAÑEZA 67', 'LEÓN', '987945368', 'FAUSTINO PÉREZ'),
('CT19', 'CONFECCIONES GALÁN', 'FUENCARRAL 78', 'MADRID', '913859234', 'JUAN GARCÍA'),
('CT20', 'LA CURTIDORA', 'OLIVARES 3', 'MÁLAGA', '953756259', 'MARÍA GÓMEZ'),
('CT21', 'LÍNEA JOVEN', 'SIERPES 78', 'SEVILLA', '953452567', 'ASUNCIÓN SALADO'),
('CT22', 'BAZAR EL BARAT', 'DIAGONAL 56', 'BARCELONA', '936692866', 'ELISA DAPENA'),
('CT23', 'EL PALACIO DE LA MODA', 'ORTEGA Y GASSET 129', 'MADRID', '927785235', 'LAURA CARRASCO'),
('CT24', 'SÁEZ Y CÍA', 'INFANTA MERCEDS 23', 'SEVILLA', '954869234', 'MANUEL GUERRA'),
('CT25', 'DEPORTES EL MADRILEÑO', 'CASTILLA 345', 'ZARAGOZA', '976388934', 'CARLOS GONZÁLEZ'),
('CT26', 'FERRETERÍA LA ESCOBA', 'ORENSE 7', 'MADRID', '918459346', 'JOSÉ GARCÍA'),
('CT27', 'JUGUETES EL BARATO', 'VÍA AUGUSTA 245', 'BARCELONA', '933486984', 'ELVIRA IGLESIAS'),
('CT28', 'CONFECCIONES HERMINIA', 'CORRIDA 345', 'GIJÓN', '985597315', 'ABEL GONZÁLEZ'),
('CT30', 'BAZAR EL ARGENTINO', 'ATOCHA 55', 'MADRID', '912495973', 'ADRIÁN ÁLVAREZ'),
('CT31', 'LA TIENDA ELEGANTE', 'EL COMENDADOR 67', 'ZARAGOZA', '975694035', 'JOSÉ PASCUAL'),
('CT32', 'DEPORTES NAUTICOS GARCÍA', 'JUAN FERNÁNDEZ 89', 'ÁVILA', '920268648', 'JUAN CONRADO'),
('CT33', 'CONFECCIONES RUIZ', 'LLOBREGAT 345', 'BARCELONA', '934587615', 'CARLOS SANZ'),
('CT34', 'BAZAR LA FARAONA', 'CASTILLA Y LEÓN 34', 'MADRID', '915483627', 'ANGEL SANTAMARÍA'),
('CT35', 'FERRETERÍA EL MARTILLO', 'CASTELLANOS 205', 'SALAMANCA', '923548965', 'JOAQUÍN FERNANDEZ'),
('CT36', 'JUGUETES EDUCATIVOS SANZ', 'ORENSE 89', 'MADRID', '916872354', 'PEDRO IGLESIAS'),
('CT37', 'ALMACENES FERNANDEZ', 'ANTÓN 67', 'TERUEL', '978564025', 'MARIA ARDANZA'),
('CT38', 'CONFECCIONES MÓNICA', 'MOTORES 67', 'BARCELONA', '935681245', 'PEDRO SERRANO'),
('CT39', 'FERRETERÍA LIMA', 'VALLECAS 45', 'MADRID', '913532785', 'LUIS GARCÍA'),
('CT40', 'DEPORTES EL BRASILEÑO', 'ABEL MARTÍNEZ 67', 'SALAMANCA', '921548762', 'CARLOS GÓMEZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `NÚMERO_DE_PEDIDO` double NOT NULL,
  `CÓDIGO_CLIENTE` varchar(10) DEFAULT NULL,
  `FECHA_DE_PEDIDO` varchar(10) DEFAULT NULL,
  `FORMA_DE_PAGO` varchar(10) DEFAULT NULL,
  `DESCUENTO` double DEFAULT NULL,
  `ENVIADO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`NÚMERO_DE_PEDIDO`, `CÓDIGO_CLIENTE`, `FECHA_DE_PEDIDO`, `FORMA_DE_PAGO`, `DESCUENTO`, `ENVIADO`) VALUES
(1, 'CT01', '11/03/2000', 'CONTADO', 0.02, 'TRUE'),
(3, 'CT23', '18/03/2000', 'APLAZADO', 0.06, 'FALSE'),
(5, 'CT25', '31/03/2000', 'CONTADO', 0.09, 'FALSE'),
(7, 'CT12', '12/04/2000', 'CONTADO', 0.07, 'FALSE'),
(8, 'CT01', '15/04/2000', 'TARJETA', 0.02, 'TRUE'),
(9, 'CT21', '21/04/2000', 'CONTADO', 0.04, 'FALSE'),
(11, 'CT04', '01/05/2001', 'CONTADO', 0.08, 'TRUE'),
(12, 'CT06', '19/05/2001', 'CONTADO', 0.09, 'TRUE'),
(13, 'CT13', '30/04/2000', 'APLAZADO', 0.03, 'FALSE'),
(16, 'CT25', '11/05/2001', 'CONTADO', 0.12, 'FALSE'),
(19, 'CT10', '22/05/2002', 'CONTADO', 0.07, 'TRUE'),
(21, 'CT16', '28/05/2001', 'CONTADO', 0.03, 'FALSE'),
(22, 'CT07', '31/05/2000', 'TARJETA', 0.05, 'TRUE'),
(25, 'CT18', '02/06/2000', 'CONTADO', 0.06, 'FALSE'),
(26, 'CT09', '04/06/2001', 'APLAZADO', 0.07, 'TRUE'),
(27, 'CT34', '06/06/2000', 'CONTADO', 0.04, 'FALSE'),
(28, 'CT28', '08/06/2000', 'APLAZADO', 0.08, 'FALSE'),
(29, 'CT30', '02/04/2001', 'TARJETA', 0.06, 'FALSE'),
(30, 'CT02', '15/08/2000', 'CONTADO', 0.06, 'TRUE'),
(31, 'CT30', '08/06/2000', 'TARJETA', 0.05, 'TRUE'),
(32, 'CT14', '20/06/2001', 'APLAZADO', 0.06, 'FALSE'),
(34, 'CT26', '23/06/2002', 'TARJETA', 0.05, 'FALSE'),
(35, 'CT26', '30/06/2001', 'CONTADO', 0.06, 'FALSE'),
(37, 'CT24', '02/07/2001', 'TARJETA', 0.03, 'TRUE'),
(39, 'CT20', '08/07/2001', 'TARJETA', 0.06, 'TRUE'),
(40, 'CT04', '12/07/2002', 'CONTADO', 0.12, 'FALSE'),
(42, 'CT34', '15/07/2002', 'APLAZADO', 0.07, 'TRUE'),
(43, 'CT09', '18/07/2001', 'CONTADO', 0.07, 'FALSE'),
(44, 'CT34', '20/07/2002', 'APLAZADO', 0.04, 'FALSE'),
(45, 'CT30', '22/07/2002', 'TARJETA', 0.07, 'FALSE'),
(46, 'CT31', '25/07/2002', 'CONTADO', 0.06, 'FALSE'),
(47, 'CT34', '31/07/2000', 'APLAZADO', 0.08, 'FALSE'),
(48, 'CT18', '30/08/2002', 'CONTADO', 0.03, 'FALSE'),
(49, 'CT28', '02/09/2002', 'CONTADO', 0.03, 'FALSE'),
(50, 'CT09', '05/09/2002', 'APLAZADO', 0.08, 'FALSE'),
(51, 'CT09', '05/09/2002', 'CONTADO', 0.05, 'TRUE'),
(63, 'CT28', '10/09/2000', 'CONTADO', 0.09, 'FALSE'),
(72, 'CT01', '18/08/2002', 'CONTADO', 0.05, 'TRUE'),
(73, 'CT01', '02/08/2001', 'CONTADO', 0.07, 'FALSE'),
(74, 'CT01', '17/09/2002', 'APLAZADO', 0.08, 'FALSE'),
(75, 'CT01', '30/09/2002', 'TARJETA', 0.12, 'FALSE'),
(76, 'CT01', '19/10/2002', 'CONTADO', 0.04, 'TRUE'),
(77, 'CT01', '28/10/2000', 'CONTADO', 0.05, 'FALSE'),
(79, 'CT34', '12/12/2000', 'CONTADO', 0.05, 'FALSE'),
(85, 'CT04', '23/12/2002', 'TARJETA', 0.04, 'FALSE'),
(86, 'CT09', '24/12/2001', 'APLAZADO', 0.03, 'FALSE'),
(98, 'CT01', '27/12/2001', 'CONTADO', 0.08, 'TRUE'),
(102, 'CT06', '12/01/2001', 'CONTADO', 0.07, 'TRUE'),
(103, 'CT02', '24/01/2001', 'CONTADO', 0.04, 'FALSE'),
(105, 'CT30', '01/01/2001', 'APLAZADO', 0.09, 'FALSE'),
(5005, 'CT30', '10/08/2002', 'TARJETA', 0, 'TRUE'),
(5050, 'CT30', '27/03/2002', 'TARJETA', 0, 'TRUE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `CÓDIGOARTÍCULO` varchar(30) NOT NULL,
  `SECCIÓN` varchar(30) DEFAULT NULL,
  `NOMBREARTÍCULO` varchar(30) DEFAULT NULL,
  `PRECIO` double DEFAULT NULL,
  `FECHA` varchar(30) DEFAULT NULL,
  `IMPORTADO` varchar(30) DEFAULT NULL,
  `PAÍSDEORIGEN` varchar(30) DEFAULT NULL,
  `FOTO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`CÓDIGOARTÍCULO`, `SECCIÓN`, `NOMBREARTÍCULO`, `PRECIO`, `FECHA`, `IMPORTADO`, `PAÍSDEORIGEN`, `FOTO`) VALUES
('AR01', 'FERRETERÍA', 'DESTORNILLADOR', 6.628, '22/10/2000', 'FALSE', 'ESPAÑA', ''),
('AR02', 'CONFECCIÓN', 'TRAJE CABALLERO', 284.5769, '11/03/2002', 'TRUE', 'ITALIA', ''),
('AR03', 'JUGUETERÍA', 'COCHE TELEDIRIGIDO', 159.4462, '26/05/2002', 'TRUE', 'MARRUECOS', ''),
('AR04', 'DEPORTES', 'RAQUETA TENIS', 93.4694, '20/03/2000', 'TRUE', 'USA', ''),
('AR06', 'DEPORTES', 'MANCUERNAS', 60, '13/09/2000', 'TRUE', 'USA', ''),
('AR07', 'CONFECCIÓN', 'SERRUCHO', 30.2045, '23/03/2001', 'TRUE', 'FRANCIA', ''),
('AR08', 'JUGUETERÍA', 'CORREPASILLOS', 103.3356, '11/04/2000', 'TRUE', 'JAPÓN', ''),
('AR09', 'CONFECCIÓN', 'PANTALÓN SEÑORA', 174.231, '10/01/2000', 'TRUE', 'MARRUECOS', ''),
('AR10', 'JUGUETERÍA', 'CONSOLA VIDEO', 442.5444, '24/09/2002', 'TRUE', 'USA', ''),
('AR11', 'CERÁMICA', 'TUBOS', 168.4253, '04/02/2000', 'TRUE', 'CHINA', ''),
('AR12', 'FERRETERÍA', 'LLAVE INGLESA', 24.3986, '23/05/2001', 'TRUE', 'USA', ''),
('AR13', 'CONFECCIÓN', 'CAMISA CABALLERO', 67.1306, '11/08/2002', 'FALSE', 'ESPAÑA', ''),
('AR14', 'JUGUETERÍA', 'TREN ELÉCTRICO', 1505.3766, '03/07/2001', 'TRUE', 'JAPÓN', ''),
('AR15', 'CERÁMICA', 'PLATO DECORATIVO', 54.0911, '07/06/2000', 'TRUE', 'CHINA', ''),
('AR16', 'FERRETERÍA', 'ALICATES', 6.7362, '17/04/2000', 'TRUE', 'ITALIA', ''),
('AR17', 'JUGUETERÍA', 'MUÑECA ANDADORA', 105.0593, '04/01/2001', 'FALSE', 'ESPAÑA', ''),
('AR18', 'DEPORTES', 'PISTOLA OLÍMPICA', 46.7347, '02/02/2001', 'TRUE', 'SUECIA', ''),
('AR19', 'CONFECCIÓN', 'BLUSA SRA.', 101.0566, '18/03/2000', 'TRUE', 'CHINA', ''),
('AR20', 'CERÁMICA', 'JUEGO DE TE', 43.2728, '15/01/2001', 'TRUE', 'CHINA', ''),
('AR21', 'CERÁMICA', 'CENICERO', 19.7468, '02/07/2001', 'TRUE', 'JAPÓN', ''),
('AR22', 'FERRETERÍA', 'MARTILLO', 11.3952, '04/09/2001', 'FALSE', 'ESPAÑA', ''),
('AR23', 'CONFECCIÓN', 'CAZADORA PIEL', 522.693, '10/07/2001', 'TRUE', 'ITALIA', ''),
('AR24', 'DEPORTES', 'BALÓN RUGBY', 111.644, '11/11/2000', 'TRUE', 'USA', ''),
('AR25', 'DEPORTES', 'BALÓN BALONCESTO', 75.2731, '25/06/2001', 'TRUE', 'JAPÓN', ''),
('AR26', 'JUGUETERÍA', 'FUERTE DE SOLDADOS', 143.702, '25/11/2000', 'TRUE', 'JAPÓN', ''),
('AR27', 'CONFECCIÓN', 'ABRIGO CABALLERO', 500000, '05/04/2002', 'TRUE', 'ITALIA', ''),
('AR28', 'DEPORTES', 'BALÓN FÚTBOL', 43.9147, '04/07/2002', 'FALSE', 'ESPAÑA', ''),
('AR29', 'CONFECCIÓN', 'ABRIGO SRA', 360.0736, '03/05/2001', 'TRUE', 'MARRUECOS', ''),
('AR30', 'FERRETERÍA', 'DESTORNILLADOR', 9.0584, '20/02/2002', 'TRUE', 'FRANCIA', ''),
('AR31', 'JUGUETERÍA', 'PISTOLA CON SONIDOS', 57.25, '15/04/2001', 'FALSE', 'ESPAÑA', ''),
('AR32', 'DEPORTES', 'CRONÓMETRO', 439.1764, '03/01/2002', 'TRUE', 'USA', ''),
('AR33', 'CERÁMICA', 'MACETA', 29.0434, '23/02/2000', 'FALSE', 'ESPAÑA', ''),
('AR34', 'OFICINA', 'PIE DE LÁMPARA', 39.7606, '27/05/2001', 'TRUE', 'TURQUÍA', ''),
('AR35', 'FERRETERÍA', 'LIMA GRANDE', 22.0692, '10/08/2002', 'FALSE', 'ESPAÑA', ''),
('AR36', 'FERRETERÍA', 'JUEGO DE BROCAS', 15.095, '04/07/2002', 'TRUE', 'TAIWÁN', ''),
('AR37', 'CONFECCIÓN', 'CINTURÓN DE PIEL', 4.3273, '12/05/2002', 'FALSE', 'ESPAÑA', ''),
('AR38', 'DEPORTES', 'CAÑA DE PESCA', 270, '14/02/2000', 'TRUE', 'USA', ''),
('AR39', 'CERÁMICA', 'JARRA CHINA', 127.7704, '02/09/2002', 'TRUE', 'CHINA', ''),
('AR40', 'DEPORTES', 'BOTA ALPINISMO', 144, '05/05/2002', 'FALSE', 'ESPAÑA', ''),
('AR41', 'DEPORTES', 'PALAS DE PING PONG', 21.6, '02/02/2002', 'FALSE', 'ESPAÑA', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productosnuevos`
--

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

--
-- Volcado de datos para la tabla `productosnuevos`
--

INSERT INTO `productosnuevos` (`CÓDIGOARTÍCULO`, `SECCIÓN`, `NOMBREARTÍCULO`, `PRECIO`, `FECHA`, `IMPORTADO`, `PAÍSDEORIGEN`, `FOTO`) VALUES
('AR50', 'ALTA COSTURA', 'TRAJE CABALLERO', 1284.5769, '2002-03-11', 'TRUE', 'ITALIA', ''),
('AR51', 'DEPORTES DE RIESGO', 'RAQUETA TENIS', 1093.4694, '2000-03-20', 'TRUE', 'USA', ''),
('AR52', 'DEPORTES DE RIESGO', 'MANCUERNAS', 1060, '2000-09-13', 'TRUE', 'USA', ''),
('AR53', 'ALTA COSTURA', 'SERRUCHO', 1030.2045, '2001-03-23', 'TRUE', 'FRANCIA', ''),
('AR54', 'ALTA COSTURA', 'PANTALÓN SEÑORA', 1174.231, '2000-01-10', 'TRUE', 'MARRUECOS', ''),
('AR55', 'ALTA COSTURA', 'CAMISA CABALLERO', 1067.1306, '2002-08-11', 'FALSE', 'ESPAÑA', ''),
('AR56', 'DEPORTES DE RIESGO', 'PISTOLA OLÍMPICA', 1046.7347, '2001-02-02', 'TRUE', 'SUECIA', ''),
('AR57', 'ALTA COSTURA', 'BLUSA SRA.', 1101.0566, '2000-03-18', 'TRUE', 'CHINA', ''),
('AR58', 'ALTA COSTURA', 'CAZADORA PIEL', 1522.693, '2001-07-10', 'TRUE', 'ITALIA', ''),
('AR59', 'DEPORTES DE RIESGO', 'BALÓN RUGBY', 1111.644, '2000-11-11', 'TRUE', 'USA', ''),
('AR60', 'DEPORTES DE RIESGO', 'BALÓN BALONCESTO', 1075.2731, '2001-06-25', 'TRUE', 'JAPÓN', ''),
('AR61', 'ALTA COSTURA', 'ABRIGO CABALLERO', 1500, '2002-04-05', 'TRUE', 'ITALIA', ''),
('AR62', 'DEPORTES DE RIESGO', 'BALÓN FÚTBOL', 1043.9147, '2002-07-04', 'FALSE', 'ESPAÑA', ''),
('AR63', 'ALTA COSTURA', 'ABRIGO SRA', 1360.0736, '2001-05-03', 'TRUE', 'MARRUECOS', ''),
('AR64', 'DEPORTES DE RIESGO', 'CRONÓMETRO', 1439.1764, '2002-01-03', 'TRUE', 'USA', ''),
('AR65', 'ALTA COSTURA', 'CINTURÓN DE PIEL', 1004.3273, '2002-05-12', 'FALSE', 'ESPAÑA', ''),
('AR66', 'DEPORTES DE RIESGO', 'CAÑA DE PESCA', 1270, '2000-02-14', 'TRUE', 'USA', ''),
('AR67', 'DEPORTES DE RIESGO', 'BOTA ALPINISMO', 1144, '2002-05-05', 'FALSE', 'ESPAÑA', ''),
('AR68', 'DEPORTES DE RIESGO', 'PALAS DE PING PONG', 1021.6, '2002-02-02', 'FALSE', 'ESPAÑA', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_pedidos`
--

CREATE TABLE `productos_pedidos` (
  `NÚMERO_DE_PEDIDO` double DEFAULT NULL,
  `CÓDIGO_ARTÍCULO` varchar(10) DEFAULT NULL,
  `UNIDADES` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_pedidos`
--

INSERT INTO `productos_pedidos` (`NÚMERO_DE_PEDIDO`, `CÓDIGO_ARTÍCULO`, `UNIDADES`) VALUES
(1, 'AR01', 11),
(1, 'AR04', 10),
(1, 'AR15', 4),
(1, 'AR22', 18),
(3, 'AR02', 20),
(3, 'AR22', 3),
(5, 'AR04', 16),
(7, 'AR06', 16),
(8, 'AR02', 6),
(8, 'AR06', 5),
(8, 'AR07', 6),
(8, 'AR10', 2),
(8, 'AR12', 30),
(8, 'AR15', 15),
(8, 'AR18', 20),
(8, 'AR19', 18),
(8, 'AR25', 5),
(8, 'AR32', 15),
(8, 'AR33', 18),
(8, 'AR34', 5),
(8, 'AR35', 24),
(9, 'AR06', 14),
(11, 'AR08', 1),
(12, 'AR08', 12),
(13, 'AR08', 8),
(16, 'AR10', 17),
(19, 'AR13', 4),
(21, 'AR15', 11),
(22, 'AR17', 6),
(22, 'AR26', 4),
(22, 'AR28', 21),
(25, 'AR19', 12),
(26, 'AR19', 12),
(27, 'AR21', 11),
(28, 'AR21', 22),
(29, 'AR22', 12),
(30, 'AR23', 33),
(31, 'AR24', 31),
(32, 'AR25', 11),
(34, 'AR22', 7),
(34, 'AR27', 3),
(35, 'AR22', 9),
(35, 'AR27', 12),
(37, 'AR27', 11),
(39, 'AR29', 22),
(40, 'AR30', 1),
(42, 'AR31', 21),
(43, 'AR32', 3),
(44, 'AR22', 22),
(45, 'AR36', 21),
(46, 'AR37', 8),
(47, 'AR38', 12),
(48, 'AR38', 13),
(49, 'AR39', 13),
(50, 'AR39', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`CÓDIGOCLIENTE`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`NÚMERO_DE_PEDIDO`),
  ADD KEY `CÓDIGO_CLIENTE` (`CÓDIGO_CLIENTE`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`CÓDIGOARTÍCULO`);

--
-- Indices de la tabla `productos_pedidos`
--
ALTER TABLE `productos_pedidos`
  ADD KEY `NÚMERO_DE_PEDIDO` (`NÚMERO_DE_PEDIDO`,`CÓDIGO_ARTÍCULO`),
  ADD KEY `CÓDIGO_ARTÍCULO` (`CÓDIGO_ARTÍCULO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`CÓDIGO_CLIENTE`) REFERENCES `clientes` (`CÓDIGOCLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_pedidos`
--
ALTER TABLE `productos_pedidos`
  ADD CONSTRAINT `productos_pedidos_ibfk_1` FOREIGN KEY (`CÓDIGO_ARTÍCULO`) REFERENCES `productos` (`CÓDIGOARTÍCULO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_pedidos_ibfk_2` FOREIGN KEY (`NÚMERO_DE_PEDIDO`) REFERENCES `pedidos` (`NÚMERO_DE_PEDIDO`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `ejemplos_test`
--
CREATE DATABASE IF NOT EXISTS `ejemplos_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejemplos_test`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad2`
--

CREATE TABLE `ciudad2` (
  `clave` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `población` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudad2`
--

INSERT INTO `ciudad2` (`clave`, `nombre`, `población`) VALUES
(1, 'Juanito', 7920000),
(3, 'Paris', 9583200),
(4, 'Barlín', 7920000),
(5, 'Roma', 7920000),
(7, 'Pekin', 7920000),
(8, 'prueba', 7920000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad2`
--
ALTER TABLE `ciudad2`
  ADD PRIMARY KEY (`clave`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad2`
--
ALTER TABLE `ciudad2`
  MODIFY `clave` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Base de datos: `empleadosdepartamentos`
--
CREATE DATABASE IF NOT EXISTS `empleadosdepartamentos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `empleadosdepartamentos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `presupuesto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellidos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `departamento` (`departamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `gestion_pedidos`
--
CREATE DATABASE IF NOT EXISTS `gestion_pedidos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestion_pedidos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `CÓDIGOCLIENTE` varchar(30) NOT NULL,
  `EMPRESA` varchar(30) DEFAULT NULL,
  `DIRECCIÓN` varchar(30) DEFAULT NULL,
  `POBLACIÓN` varchar(30) DEFAULT NULL,
  `TELÉFONO` varchar(30) DEFAULT NULL,
  `RESPONSABLE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`CÓDIGOCLIENTE`, `EMPRESA`, `DIRECCIÓN`, `POBLACIÓN`, `TELÉFONO`, `RESPONSABLE`) VALUES
('CT01', 'BELTRÁN E HIJOS', 'LAS FUENTES 78', 'MADRID', '914456435', 'ANGEL MARTÍNEZ'),
('CT02', 'LA MODERNA', 'LA PALOMA 123', 'OVIEDO', '985323434', 'JUAN GARCÍA'),
('CT03', 'EL ESPAÑOLITO', 'MOTORES 34', 'BARCELONA', '934565343', 'ANA FERNÁNDEZ'),
('CT04', 'EXPORTASA', 'VALLECAS 34', 'MADRID', '913452378', 'ELVIRA GÓMEZ'),
('CT06', 'CONFECCIONES AMPARO', 'LOS MOROS 23', 'GIJÓN', '985754332', 'LUÍS ÁLVAREZ'),
('CT07', 'LA CASA DEL JUGUETE', 'AMÉRICA 45', 'MADRID', '912649987', 'ELÍAS PÉREZ'),
('CT08', 'JUGUETERÍA SUÁREZ', 'PARIS 123', 'BARCELONA', '933457866', 'JUAN GARCÍA'),
('CT09', 'ALMACÉN POPULAR', 'LAS FUENTES 124', 'BILBAO', '942347127', 'JOSÉ ÁLVAREZ'),
('CT10', 'FERETERÍA EL CLAVO', 'PASEO DE ÁLAMOS 78', 'MADRID', '914354866', 'MANUEL MENÉNDEZ'),
('CT11', 'JUGUETES MARTÍNEZ', 'VIA LAYETANA 245', 'BARCELONA', '936628554', 'FRANCISCO CUEVAS'),
('CT12', 'FERNÁNDEZ SL', 'PASEO DEL MAR 45', 'SANTANDER', '942049586', 'ELISA COLLADO'),
('CT13', 'CONFECCIONES ARTÍMEZ', 'GENERAL PERÓN 45', 'A CORUÑA', '981345239', 'ESTEBAN PASCUAL'),
('CT14', 'DEPORTES GARCÍA', 'GUZMÁN EL BUENO 45', 'MADRID', '913299475', 'ANA JIMÉNEZ'),
('CT15', 'EXCLUSIVAS FERNÁNDEZ', 'LLOBREGAT 250', 'BARCELONA', '939558365', 'LUISA FERNÁNDEZ'),
('CT16', 'DEPORTES MORÁN', 'AUTONOMÍA 45', 'LUGO', '982986944', 'JOSÉ MANZANO'),
('CT17', 'BAZAR FRANCISCO', 'CARMEN 45', 'ZAMORA', '980495288', 'CARLOS BELTRÁN'),
('CT18', 'JUGUETES LA SONRISA', 'LA BAÑEZA 67', 'LEÓN', '987945368', 'FAUSTINO PÉREZ'),
('CT19', 'CONFECCIONES GALÁN', 'FUENCARRAL 78', 'MADRID', '913859234', 'JUAN GARCÍA'),
('CT20', 'LA CURTIDORA', 'OLIVARES 3', 'MÁLAGA', '953756259', 'MARÍA GÓMEZ'),
('CT21', 'LÍNEA JOVEN', 'SIERPES 78', 'SEVILLA', '953452567', 'ASUNCIÓN SALADO'),
('CT22', 'BAZAR EL BARAT', 'DIAGONAL 56', 'BARCELONA', '936692866', 'ELISA DAPENA'),
('CT23', 'EL PALACIO DE LA MODA', 'ORTEGA Y GASSET 129', 'MADRID', '927785235', 'LAURA CARRASCO'),
('CT24', 'SÁEZ Y CÍA', 'INFANTA MERCEDS 23', 'SEVILLA', '954869234', 'MANUEL GUERRA'),
('CT25', 'DEPORTES EL MADRILEÑO', 'CASTILLA 345', 'ZARAGOZA', '976388934', 'CARLOS GONZÁLEZ'),
('CT26', 'FERRETERÍA LA ESCOBA', 'ORENSE 7', 'MADRID', '918459346', 'JOSÉ GARCÍA'),
('CT27', 'JUGUETES EL BARATO', 'VÍA AUGUSTA 245', 'BARCELONA', '933486984', 'ELVIRA IGLESIAS'),
('CT28', 'CONFECCIONES HERMINIA', 'CORRIDA 345', 'GIJÓN', '985597315', 'ABEL GONZÁLEZ'),
('CT30', 'BAZAR EL ARGENTINO', 'ATOCHA 55', 'MADRID', '912495973', 'ADRIÁN ÁLVAREZ'),
('CT31', 'LA TIENDA ELEGANTE', 'EL COMENDADOR 67', 'ZARAGOZA', '975694035', 'JOSÉ PASCUAL'),
('CT32', 'DEPORTES NAUTICOS GARCÍA', 'JUAN FERNÁNDEZ 89', 'ÁVILA', '920268648', 'JUAN CONRADO'),
('CT33', 'CONFECCIONES RUIZ', 'LLOBREGAT 345', 'BARCELONA', '934587615', 'CARLOS SANZ'),
('CT34', 'BAZAR LA FARAONA', 'CASTILLA Y LEÓN 34', 'MADRID', '915483627', 'ANGEL SANTAMARÍA'),
('CT35', 'FERRETERÍA EL MARTILLO', 'CASTELLANOS 205', 'SALAMANCA', '923548965', 'JOAQUÍN FERNANDEZ'),
('CT36', 'JUGUETES EDUCATIVOS SANZ', 'ORENSE 89', 'MADRID', '916872354', 'PEDRO IGLESIAS'),
('CT37', 'ALMACENES FERNANDEZ', 'ANTÓN 67', 'TERUEL', '978564025', 'MARIA ARDANZA'),
('CT38', 'CONFECCIONES MÓNICA', 'MOTORES 67', 'BARCELONA', '935681245', 'PEDRO SERRANO'),
('CT39', 'FERRETERÍA LIMA', 'VALLECAS 45', 'MADRID', '913532785', 'LUIS GARCÍA'),
('CT40', 'DEPORTES EL BRASILEÑO', 'ABEL MARTÍNEZ 67', 'SALAMANCA', '921548762', 'CARLOS GÓMEZ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`CÓDIGOCLIENTE`);
--
-- Base de datos: `grandalma`
--
CREATE DATABASE IF NOT EXISTS `grandalma` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `grandalma`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajeros`
--

CREATE TABLE `cajeros` (
  `cod` int(11) NOT NULL,
  `nomapels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cajeros`
--

INSERT INTO `cajeros` (`cod`, `nomapels`) VALUES
(1, 'Juan Pérez'),
(2, 'María García'),
(3, 'Pedro Rodríguez'),
(4, 'Ana Martínez'),
(5, 'Luis González'),
(6, 'Laura Sánchez'),
(7, 'Carlos Fernández'),
(8, 'Sofía López'),
(9, 'Pablo Ruiz'),
(10, 'Elena Martín');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinas`
--

CREATE TABLE `maquinas` (
  `cod` int(11) NOT NULL,
  `piso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maquinas`
--

INSERT INTO `maquinas` (`cod`, `piso`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 2),
(6, 1),
(7, 3),
(8, 2),
(9, 1),
(10, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`cod`, `nombre`, `precio`) VALUES
(1, 'Producto A', 10),
(2, 'Producto B', 20),
(3, 'Producto C', 15),
(4, 'Producto D', 30),
(5, 'Producto E', 25),
(6, 'Producto F', 18),
(7, 'Producto G', 22),
(8, 'Producto H', 35),
(9, 'Producto I', 28),
(10, 'Producto J', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `cajero` int(11) NOT NULL,
  `maquina` int(11) NOT NULL,
  `producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`cajero`, `maquina`, `producto`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cajeros`
--
ALTER TABLE `cajeros`
  ADD PRIMARY KEY (`cod`);

--
-- Indices de la tabla `maquinas`
--
ALTER TABLE `maquinas`
  ADD PRIMARY KEY (`cod`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`cod`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`cajero`,`maquina`,`producto`),
  ADD KEY `maquina` (`maquina`),
  ADD KEY `producto` (`producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cajeros`
--
ALTER TABLE `cajeros`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `maquinas`
--
ALTER TABLE `maquinas`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`cajero`) REFERENCES `cajeros` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`maquina`) REFERENCES `productos` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`producto`) REFERENCES `maquinas` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `investigadores_db`
--
CREATE DATABASE IF NOT EXISTS `investigadores_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `investigadores_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `numserie` char(4) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `codfac` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`numserie`, `nombre`, `codfac`) VALUES
('E01', 'Equipo de Investigación en Ciencias de la Salud', 1),
('E02', 'Equipo de Investigación en Ciencias de la Tierra', 2),
('E03', 'Equipo de Investigación en Ciencias de la Vida', 3),
('E04', 'Equipo de Investigación en Ingeniería', 4),
('E05', 'Equipo de Investigación en Economía', 5),
('E06', 'Equipo de Investigación en Derecho', 6),
('E07', 'Equipo de Investigación en Ciencias Sociales', 7),
('E08', 'Equipo de Investigación en Ciencias de la Salud', 8),
('E09', 'Equipo de Investigación en Ciencias de la Tierra', 9),
('E10', 'Equipo de Investigación en Ciencias de la Vida', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`cod`, `nombre`) VALUES
(1, 'Facultad de Ciencias'),
(2, 'Facultad de Humanidades'),
(3, 'Facultad de Ciencias Sociales'),
(4, 'Facultad de Medicina'),
(5, 'Facultad de Ingeniería'),
(6, 'Facultad de Economía'),
(7, 'Facultad de Derecho'),
(8, 'Facultad de Ciencias de la Salud'),
(9, 'Facultad de Ciencias de la Tierra'),
(10, 'Facultad de Ciencias de la Vida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `investigadores`
--

CREATE TABLE `investigadores` (
  `dni` varchar(9) NOT NULL,
  `nomapels` varchar(255) NOT NULL,
  `codfac` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `investigadores`
--

INSERT INTO `investigadores` (`dni`, `nomapels`, `codfac`) VALUES
('01234567', 'Francisco Moreno', 10),
('12345678', 'Juan Pérez', 1),
('23456789', 'María González', 2),
('34567890', 'Pedro Sánchez', 3),
('45678901', 'Ana López', 4),
('56789012', 'José Martínez', 5),
('67890123', 'Luis Hernández', 6),
('78901234', 'Eva García', 7),
('89012345', 'Carlos Díaz', 8),
('90123456', 'Sofía Rodríguez', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `dni` varchar(8) NOT NULL,
  `numserie` char(4) NOT NULL,
  `comienzo` date DEFAULT NULL,
  `fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`dni`, `numserie`, `comienzo`, `fin`) VALUES
('01234567', 'E10', '2022-10-01', '2022-10-31'),
('12345678', 'E01', '2022-01-01', '2022-01-31'),
('23456789', 'E02', '2022-02-01', '2022-02-28'),
('34567890', 'E03', '2022-03-01', '2022-03-31'),
('45678901', 'E04', '2022-04-01', '2022-04-30'),
('56789012', 'E05', '2022-05-01', '2022-05-31'),
('67890123', 'E06', '2022-06-01', '2022-06-30'),
('78901234', 'E07', '2022-07-01', '2022-07-31'),
('89012345', 'E08', '2022-08-01', '2022-08-31'),
('90123456', 'E09', '2022-09-01', '2022-09-30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`numserie`),
  ADD KEY `codfac` (`codfac`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`cod`);

--
-- Indices de la tabla `investigadores`
--
ALTER TABLE `investigadores`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `codfac` (`codfac`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`dni`,`numserie`),
  ADD KEY `numserie` (`numserie`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `facultades`
--
ALTER TABLE `facultades`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`codfac`) REFERENCES `facultades` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `investigadores`
--
ALTER TABLE `investigadores`
  ADD CONSTRAINT `investigadores_ibfk_1` FOREIGN KEY (`codfac`) REFERENCES `facultades` (`cod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `investigadores` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`numserie`) REFERENCES `equipos` (`numserie`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `laraveldb`
--
CREATE DATABASE IF NOT EXISTS `laraveldb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laraveldb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplo`
--
-- Error leyendo la estructura de la tabla laraveldb.ejemplo: #1932 - Table &#039;laraveldb.ejemplo&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla laraveldb.ejemplo: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `laraveldb`.`ejemplo`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--
-- Error leyendo la estructura de la tabla laraveldb.failed_jobs: #1932 - Table &#039;laraveldb.failed_jobs&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla laraveldb.failed_jobs: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `laraveldb`.`failed_jobs`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--
-- Error leyendo la estructura de la tabla laraveldb.migrations: #1932 - Table &#039;laraveldb.migrations&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla laraveldb.migrations: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `laraveldb`.`migrations`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--
-- Error leyendo la estructura de la tabla laraveldb.password_reset_tokens: #1932 - Table &#039;laraveldb.password_reset_tokens&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla laraveldb.password_reset_tokens: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `laraveldb`.`password_reset_tokens`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--
-- Error leyendo la estructura de la tabla laraveldb.personal_access_tokens: #1932 - Table &#039;laraveldb.personal_access_tokens&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla laraveldb.personal_access_tokens: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `laraveldb`.`personal_access_tokens`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prova`
--
-- Error leyendo la estructura de la tabla laraveldb.prova: #1932 - Table &#039;laraveldb.prova&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla laraveldb.prova: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `laraveldb`.`prova`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--
-- Error leyendo la estructura de la tabla laraveldb.users: #1932 - Table &#039;laraveldb.users&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla laraveldb.users: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `laraveldb`.`users`&#039; en la linea 1
--
-- Base de datos: `meteo`
--
CREATE DATABASE IF NOT EXISTS `meteo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `meteo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estacion`
--

CREATE TABLE `estacion` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `lat` varchar(14) NOT NULL,
  `longitud` varchar(15) NOT NULL,
  `alt` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estacion`
--

INSERT INTO `estacion` (`id`, `lat`, `longitud`, `alt`) VALUES
(1, '41', '2', 17),
(2, '40', '1.9', 200),
(3, '39', '1.5', 700);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muestra`
--

CREATE TABLE `muestra` (
  `idestacion` mediumint(8) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `tempmin` tinyint(4) DEFAULT NULL,
  `tempmax` tinyint(4) DEFAULT NULL,
  `precipita` smallint(5) UNSIGNED DEFAULT NULL,
  `hummin` tinyint(3) UNSIGNED DEFAULT NULL,
  `hummax` tinyint(3) UNSIGNED DEFAULT NULL,
  `velmin` smallint(5) UNSIGNED DEFAULT NULL,
  `velmax` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `muestra`
--

INSERT INTO `muestra` (`idestacion`, `fecha`, `tempmin`, `tempmax`, `precipita`, `hummin`, `hummax`, `velmin`, `velmax`) VALUES
(1, '2024-04-12', 8, 19, 5, 60, 80, 3, 10),
(2, '2024-04-11', 5, 15, 2, 60, 80, 2, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estacion`
--
ALTER TABLE `estacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `muestra`
--
ALTER TABLE `muestra`
  ADD KEY `idestacion` (`idestacion`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `muestra`
--
ALTER TABLE `muestra`
  ADD CONSTRAINT `muestra_ibfk_1` FOREIGN KEY (`idestacion`) REFERENCES `estacion` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"biblio\",\"table\":\"escritopor\"},{\"db\":\"biblio\",\"table\":\"autor\"},{\"db\":\"biblio\",\"table\":\"ejemplar\"},{\"db\":\"biblio\",\"table\":\"libro\"},{\"db\":\"biblio\",\"table\":\"editorial\"},{\"db\":\"biblio\",\"table\":\"socio\"},{\"db\":\"biblio\",\"table\":\"tema\"},{\"db\":\"meteo\",\"table\":\"muestra\"},{\"db\":\"meteo\",\"table\":\"estacion\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-12 09:27:25', '{\"Console\\/Mode\":\"show\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `piezprov`
--
CREATE DATABASE IF NOT EXISTS `piezprov` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `piezprov`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piezas`
--

CREATE TABLE `piezas` (
  `idpiez` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `piezas`
--

INSERT INTO `piezas` (`idpiez`, `nombre`) VALUES
(1, 'Pieza A'),
(2, 'Pieza B'),
(3, 'Pieza C'),
(4, 'Pieza D'),
(5, 'Pieza E'),
(6, 'Pieza F'),
(7, 'Pieza G'),
(8, 'Pieza H'),
(9, 'Pieza I'),
(10, 'Pieza J');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idprov` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idprov`, `nombre`) VALUES
(1, 'Proveedor 1'),
(2, 'Proveedor 2'),
(3, 'Proveedor 3'),
(4, 'Proveedor 4'),
(5, 'Proveedor 5'),
(6, 'Proveedor 6'),
(7, 'Proveedor 7'),
(8, 'Proveedor 8'),
(9, 'Proveedor 9'),
(10, 'Proveedor 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suministra`
--

CREATE TABLE `suministra` (
  `idpiez` int(11) NOT NULL,
  `idprov` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `suministra`
--

INSERT INTO `suministra` (`idpiez`, `idprov`, `precio`) VALUES
(1, 1, 10.5),
(2, 2, 20.25),
(3, 3, 15.75),
(4, 4, 30),
(5, 5, 25.5),
(6, 6, 18.75),
(7, 7, 22),
(8, 8, 35.25),
(9, 9, 28.5),
(10, 10, 40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `piezas`
--
ALTER TABLE `piezas`
  ADD PRIMARY KEY (`idpiez`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idprov`);

--
-- Indices de la tabla `suministra`
--
ALTER TABLE `suministra`
  ADD PRIMARY KEY (`idpiez`,`idprov`),
  ADD KEY `idprov` (`idprov`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `piezas`
--
ALTER TABLE `piezas`
  MODIFY `idpiez` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idprov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `suministra`
--
ALTER TABLE `suministra`
  ADD CONSTRAINT `suministra_ibfk_1` FOREIGN KEY (`idpiez`) REFERENCES `piezas` (`idpiez`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `suministra_ibfk_2` FOREIGN KEY (`idprov`) REFERENCES `proveedores` (`idprov`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `prova_consola`
--
CREATE DATABASE IF NOT EXISTS `prova_consola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prova_consola`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `CÓDIGOCLIENTE` varchar(30) NOT NULL,
  `EMPRESA` varchar(30) DEFAULT NULL,
  `DIRECCIÓN` varchar(30) DEFAULT NULL,
  `POBLACIÓN` varchar(30) DEFAULT NULL,
  `TELÉFONO` varchar(30) DEFAULT NULL,
  `RESPONSABLE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`CÓDIGOCLIENTE`, `EMPRESA`, `DIRECCIÓN`, `POBLACIÓN`, `TELÉFONO`, `RESPONSABLE`) VALUES
('CT01', 'BELTRÁN E HIJOS', 'LAS FUENTES 78', 'MADRID', '914456435', 'ANGEL MARTÍNEZ'),
('CT02', 'LA MODERNA', 'LA PALOMA 123', 'OVIEDO', '985323434', 'JUAN GARCÍA'),
('CT03', 'EL ESPAÑOLITO', 'MOTORES 34', 'BARCELONA', '934565343', 'ANA FERNÁNDEZ'),
('CT04', 'EXPORTASA', 'VALLECAS 34', 'MADRID', '913452378', 'ELVIRA GÓMEZ'),
('CT06', 'CONFECCIONES AMPARO', 'LOS MOROS 23', 'GIJÓN', '985754332', 'LUÍS ÁLVAREZ'),
('CT07', 'LA CASA DEL JUGUETE', 'AMÉRICA 45', 'MADRID', '912649987', 'ELÍAS PÉREZ'),
('CT08', 'JUGUETERÍA SUÁREZ', 'PARIS 123', 'BARCELONA', '933457866', 'JUAN GARCÍA'),
('CT09', 'ALMACÉN POPULAR', 'LAS FUENTES 124', 'BILBAO', '942347127', 'JOSÉ ÁLVAREZ'),
('CT10', 'FERETERÍA EL CLAVO', 'PASEO DE ÁLAMOS 78', 'MADRID', '914354866', 'MANUEL MENÉNDEZ'),
('CT11', 'JUGUETES MARTÍNEZ', 'VIA LAYETANA 245', 'BARCELONA', '936628554', 'FRANCISCO CUEVAS'),
('CT12', 'FERNÁNDEZ SL', 'PASEO DEL MAR 45', 'SANTANDER', '942049586', 'ELISA COLLADO'),
('CT13', 'CONFECCIONES ARTÍMEZ', 'GENERAL PERÓN 45', 'A CORUÑA', '981345239', 'ESTEBAN PASCUAL'),
('CT14', 'DEPORTES GARCÍA', 'GUZMÁN EL BUENO 45', 'MADRID', '913299475', 'ANA JIMÉNEZ'),
('CT15', 'EXCLUSIVAS FERNÁNDEZ', 'LLOBREGAT 250', 'BARCELONA', '939558365', 'LUISA FERNÁNDEZ'),
('CT16', 'DEPORTES MORÁN', 'AUTONOMÍA 45', 'LUGO', '982986944', 'JOSÉ MANZANO'),
('CT17', 'BAZAR FRANCISCO', 'CARMEN 45', 'ZAMORA', '980495288', 'CARLOS BELTRÁN'),
('CT18', 'JUGUETES LA SONRISA', 'LA BAÑEZA 67', 'LEÓN', '987945368', 'FAUSTINO PÉREZ'),
('CT19', 'CONFECCIONES GALÁN', 'FUENCARRAL 78', 'MADRID', '913859234', 'JUAN GARCÍA'),
('CT20', 'LA CURTIDORA', 'OLIVARES 3', 'MÁLAGA', '953756259', 'MARÍA GÓMEZ'),
('CT21', 'LÍNEA JOVEN', 'SIERPES 78', 'SEVILLA', '953452567', 'ASUNCIÓN SALADO'),
('CT22', 'BAZAR EL BARAT', 'DIAGONAL 56', 'BARCELONA', '936692866', 'ELISA DAPENA'),
('CT23', 'EL PALACIO DE LA MODA', 'ORTEGA Y GASSET 129', 'MADRID', '927785235', 'LAURA CARRASCO'),
('CT24', 'SÁEZ Y CÍA', 'INFANTA MERCEDS 23', 'SEVILLA', '954869234', 'MANUEL GUERRA'),
('CT25', 'DEPORTES EL MADRILEÑO', 'CASTILLA 345', 'ZARAGOZA', '976388934', 'CARLOS GONZÁLEZ'),
('CT26', 'FERRETERÍA LA ESCOBA', 'ORENSE 7', 'MADRID', '918459346', 'JOSÉ GARCÍA'),
('CT27', 'JUGUETES EL BARATO', 'VÍA AUGUSTA 245', 'BARCELONA', '933486984', 'ELVIRA IGLESIAS'),
('CT28', 'CONFECCIONES HERMINIA', 'CORRIDA 345', 'GIJÓN', '985597315', 'ABEL GONZÁLEZ'),
('CT30', 'BAZAR EL ARGENTINO', 'ATOCHA 55', 'MADRID', '912495973', 'ADRIÁN ÁLVAREZ'),
('CT31', 'LA TIENDA ELEGANTE', 'EL COMENDADOR 67', 'ZARAGOZA', '975694035', 'JOSÉ PASCUAL'),
('CT32', 'DEPORTES NAUTICOS GARCÍA', 'JUAN FERNÁNDEZ 89', 'ÁVILA', '920268648', 'JUAN CONRADO'),
('CT33', 'CONFECCIONES RUIZ', 'LLOBREGAT 345', 'BARCELONA', '934587615', 'CARLOS SANZ'),
('CT34', 'BAZAR LA FARAONA', 'CASTILLA Y LEÓN 34', 'MADRID', '915483627', 'ANGEL SANTAMARÍA'),
('CT35', 'FERRETERÍA EL MARTILLO', 'CASTELLANOS 205', 'SALAMANCA', '923548965', 'JOAQUÍN FERNANDEZ'),
('CT36', 'JUGUETES EDUCATIVOS SANZ', 'ORENSE 89', 'MADRID', '916872354', 'PEDRO IGLESIAS'),
('CT37', 'ALMACENES FERNANDEZ', 'ANTÓN 67', 'TERUEL', '978564025', 'MARIA ARDANZA'),
('CT38', 'CONFECCIONES MÓNICA', 'MOTORES 67', 'BARCELONA', '935681245', 'PEDRO SERRANO'),
('CT39', 'FERRETERÍA LIMA', 'VALLECAS 45', 'MADRID', '913532785', 'LUIS GARCÍA'),
('CT40', 'DEPORTES EL BRASILEÑO', 'ABEL MARTÍNEZ 67', 'SALAMANCA', '921548762', 'CARLOS GÓMEZ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`CÓDIGOCLIENTE`);
--
-- Base de datos: `prova_examen`
--
CREATE DATABASE IF NOT EXISTS `prova_examen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prova_examen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Error leyendo la estructura de la tabla prova_examen.usuarios: #1932 - Table &#039;prova_examen.usuarios&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla prova_examen.usuarios: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `prova_examen`.`usuarios`&#039; en la linea 1
--
-- Base de datos: `proycientif`
--
CREATE DATABASE IF NOT EXISTS `proycientif` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proycientif`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignado`
--

CREATE TABLE `asignado` (
  `dni` varchar(9) NOT NULL,
  `id` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignado`
--

INSERT INTO `asignado` (`dni`, `id`) VALUES
('01234567J', 'P010'),
('12345678A', 'P001'),
('23456789B', 'P002'),
('34567890C', 'P003'),
('45678901D', 'P004'),
('56789012E', 'P005'),
('67890123F', 'P006'),
('78901234G', 'P007'),
('89012345H', 'P008'),
('90123456I', 'P009');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cientificos`
--

CREATE TABLE `cientificos` (
  `dni` varchar(9) NOT NULL,
  `nomapels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cientificos`
--

INSERT INTO `cientificos` (`dni`, `nomapels`) VALUES
('01234567J', 'Elena Martínez García'),
('12345678A', 'Juan Pérez Sánchez'),
('23456789B', 'María Gómez Martínez'),
('34567890C', 'Pedro Rodríguez López'),
('45678901D', 'Ana García Fernández'),
('56789012E', 'Luis Martínez Pérez'),
('67890123F', 'Laura Sánchez Gómez'),
('78901234G', 'Carlos Fernández Rodríguez'),
('89012345H', 'Sofía López Martínez'),
('90123456I', 'Pablo Pérez Rodríguez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` char(4) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `horas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `nombre`, `horas`) VALUES
('P001', 'Desarrollo de Software', 100),
('P002', 'Investigación Médica', 200),
('P003', 'Ingeniería Ambiental', 150),
('P004', 'Robótica Avanzada', 180),
('P005', 'Inteligencia Artificial', 220),
('P006', 'Nanotecnología', 120),
('P007', 'Bioinformática', 190),
('P008', 'Realidad Virtual', 160),
('P009', 'Exploración Espacial', 240),
('P010', 'Biotecnología', 170);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignado`
--
ALTER TABLE `asignado`
  ADD PRIMARY KEY (`dni`,`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `cientificos`
--
ALTER TABLE `cientificos`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignado`
--
ALTER TABLE `asignado`
  ADD CONSTRAINT `asignado_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `cientificos` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignado_ibfk_2` FOREIGN KEY (`id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `prueba_techtalent`
--
CREATE DATABASE IF NOT EXISTS `prueba_techtalent` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prueba_techtalent`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Error leyendo la estructura de la tabla prueba_techtalent.usuarios: #1932 - Table &#039;prueba_techtalent.usuarios&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla prueba_techtalent.usuarios: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `prueba_techtalent`.`usuarios`&#039; en la linea 1
--
-- Base de datos: `prueba_techtalentconsola`
--
CREATE DATABASE IF NOT EXISTS `prueba_techtalentconsola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prueba_techtalentconsola`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gente`
--
-- Error leyendo la estructura de la tabla prueba_techtalentconsola.gente: #1932 - Table &#039;prueba_techtalentconsola.gente&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla prueba_techtalentconsola.gente: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `prueba_techtalentconsola`.`gente`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Error leyendo la estructura de la tabla prueba_techtalentconsola.usuarios: #1932 - Table &#039;prueba_techtalentconsola.usuarios&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla prueba_techtalentconsola.usuarios: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `prueba_techtalentconsola`.`usuarios`&#039; en la linea 1
--
-- Base de datos: `prueba_techtalentheidi`
--
CREATE DATABASE IF NOT EXISTS `prueba_techtalentheidi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prueba_techtalentheidi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad1`
--
-- Error leyendo la estructura de la tabla prueba_techtalentheidi.ciudad1: #1932 - Table &#039;prueba_techtalentheidi.ciudad1&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla prueba_techtalentheidi.ciudad1: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `prueba_techtalentheidi`.`ciudad1`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gente`
--
-- Error leyendo la estructura de la tabla prueba_techtalentheidi.gente: #1932 - Table &#039;prueba_techtalentheidi.gente&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla prueba_techtalentheidi.gente: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `prueba_techtalentheidi`.`gente`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Error leyendo la estructura de la tabla prueba_techtalentheidi.usuarios: #1932 - Table &#039;prueba_techtalentheidi.usuarios&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla prueba_techtalentheidi.usuarios: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `prueba_techtalentheidi`.`usuarios`&#039; en la linea 1
--
-- Base de datos: `prueba_techtalentphpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `prueba_techtalentphpmyadmin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prueba_techtalentphpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad1`
--
-- Error leyendo la estructura de la tabla prueba_techtalentphpmyadmin.ciudad1: #1932 - Table &#039;prueba_techtalentphpmyadmin.ciudad1&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla prueba_techtalentphpmyadmin.ciudad1: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `prueba_techtalentphpmyadmin`.`ciudad1`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gente`
--
-- Error leyendo la estructura de la tabla prueba_techtalentphpmyadmin.gente: #1932 - Table &#039;prueba_techtalentphpmyadmin.gente&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla prueba_techtalentphpmyadmin.gente: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `prueba_techtalentphpmyadmin`.`gente`&#039; en la linea 1
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `tiendainfo`
--
CREATE DATABASE IF NOT EXISTS `tiendainfo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tiendainfo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `codart` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `fabricante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`codart`, `nombre`, `precio`, `fabricante`) VALUES
(1, 'Artículo 1', 10.5, 1),
(2, 'Artículo 2', 20.25, 2),
(3, 'Artículo 3', 15.75, 3),
(4, 'Artículo 4', 30, 4),
(5, 'Artículo 5', 25.5, 2),
(6, 'Artículo 6', 18.75, 6),
(7, 'Artículo 7', 22, 7),
(8, 'Artículo 8', 35.25, 8),
(9, 'Artículo 9', 28.5, 9),
(10, 'Artículo 10', 40, 10),
(11, 'Smartphone Galaxy S22', 999.99, 1),
(12, 'Portátil Dell XPS 15', 1899.99, 2),
(13, 'Televisor OLED LG 65\"', 2499.99, 3),
(14, 'Cámara DSLR Canon EOS R6', 2999.99, 4),
(15, 'Refrigeradora Samsung Side-by-Side', 1799.99, 5),
(16, 'Lavadora Bosch Serie 8', 1799.99, 6),
(17, 'Aspiradora Dyson V15 Detect', 699.99, 7),
(18, 'Bicicleta eléctrica Trek Powerfly', 3499.99, 8),
(19, 'Consola de juegos PS6', 599.99, 9),
(20, 'Monitor ultrawide LG 34\"', 1799.99, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

CREATE TABLE `fabricantes` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`codigo`, `nombre`) VALUES
(1, 'HP'),
(2, 'LG'),
(3, 'Fabricante A'),
(4, 'Fabricante B'),
(5, 'Fabricante C'),
(6, 'Fabricante D'),
(7, 'Fabricante E'),
(8, 'Fabricante F'),
(9, 'Fabricante G'),
(10, 'Fabricante H'),
(11, 'Fabricante I'),
(12, 'Fabricante J');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prova`
--

CREATE TABLE `prova` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`codart`),
  ADD KEY `fabricante` (`fabricante`);

--
-- Indices de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `prova`
--
ALTER TABLE `prova`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `codart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `prova`
--
ALTER TABLE `prova`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`fabricante`) REFERENCES `fabricantes` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
