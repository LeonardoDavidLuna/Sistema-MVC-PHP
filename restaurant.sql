-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2019 a las 18:49:05
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `nombrecategoria` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategoria`, `nombrecategoria`) VALUES
(21, 'ENTREMES'),
(22, 'PASTAS'),
(23, 'SOPAS Y CREMAS'),
(24, 'ESPECIALIDADES'),
(25, 'ENSALADAS '),
(26, 'PLATOS FUERTES'),
(27, 'POSTRES'),
(28, 'CAFES ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `iddetalle` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`iddetalle`, `idproducto`, `precio`, `fecha`, `idusuario`, `mesa`) VALUES
(1, 3, 35, '09-04-2019', 2, 'MESA 1'),
(2, 31, 35, '09-04-2019', 2, 'MESA 1'),
(3, 37, 22, '09-04-2019', 2, 'MESA 1'),
(4, 16, 35, '09-04-2019', 2, 'MESA 3'),
(5, 28, 95, '09-04-2019', 2, 'MESA 3'),
(6, 37, 22, '09-04-2019', 2, 'MESA 3'),
(7, 16, 35, '09-04-2019', 2, 'MESA 2'),
(8, 21, 85, '09-04-2019', 2, 'MESA 2'),
(9, 31, 35, '09-04-2019', 2, 'MESA 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa1`
--

CREATE TABLE `mesa1` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `mesa1`
--

INSERT INTO `mesa1` (`idmesa`, `idproducto`, `precio`, `fecha`, `idusuario`, `mesa`) VALUES
(4, 17, 35, '09-04-2019', 2, 'MESA 1'),
(5, 19, 90, '09-04-2019', 2, 'MESA 1'),
(6, 22, 40, '09-04-2019', 2, 'MESA 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa2`
--

CREATE TABLE `mesa2` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa3`
--

CREATE TABLE `mesa3` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa4`
--

CREATE TABLE `mesa4` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 4'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa5`
--

CREATE TABLE `mesa5` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 5'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa6`
--

CREATE TABLE `mesa6` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 6'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa7`
--

CREATE TABLE `mesa7` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 7'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa8`
--

CREATE TABLE `mesa8` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 8'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa9`
--

CREATE TABLE `mesa9` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 9'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa10`
--

CREATE TABLE `mesa10` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproducto` int(11) NOT NULL,
  `nombreproducto` text NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `precio` double NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproducto`, `nombreproducto`, `idcategoria`, `precio`, `idusuario`) VALUES
(1, 'Cecina de res', 21, 90, 1),
(2, 'Champiñones a la milpa', 21, 30, 1),
(3, 'Espagueti craf', 22, 35, 1),
(4, 'Panela asada', 21, 45, 2),
(5, 'Panela empanizada', 21, 45, 2),
(6, 'Panela con finas hierbas', 21, 45, 2),
(7, 'Queso fundido natural', 21, 45, 2),
(8, 'Queso fundido con champiñones', 21, 45, 2),
(9, 'Queso fundido con chorizo', 21, 45, 2),
(10, 'Sopa campesina', 23, 25, 2),
(11, 'Crema poblana', 23, 30, 2),
(12, 'Crema de camarón', 23, 35, 2),
(13, 'Ensalada Tizoc', 25, 35, 2),
(14, 'Ensalada Tetitlán', 25, 35, 2),
(15, 'Ensalada de atún', 25, 35, 2),
(16, 'Ensalada de pollo', 25, 35, 2),
(17, 'Penne a la matriciana', 22, 35, 2),
(18, 'Espagueti bolognesa', 22, 35, 2),
(19, 'Atún Cabo San Lucas', 24, 90, 2),
(20, 'Rosa de salmón primavera', 24, 70, 2),
(21, 'Camarones las Marietas', 24, 85, 2),
(22, 'Lasaña Popeye', 26, 40, 2),
(23, 'Milanesa Aguacatlán', 26, 60, 2),
(24, 'Pescado Nuevo Vallarta', 26, 70, 2),
(25, 'Salmón Victoria', 26, 100, 2),
(26, 'Camarones Nayarit', 26, 95, 2),
(27, 'Rib eye', 26, 100, 2),
(28, 'Medallón Santa María', 26, 95, 2),
(29, 'Vacío cazadora', 26, 100, 2),
(30, 'Pastel de moka', 27, 30, 2),
(31, 'Pastel de chocolate Sasha', 27, 35, 2),
(32, 'Pie de queso con cerezas', 27, 35, 2),
(33, 'Gelatina de leche con piña y nuez', 27, 25, 2),
(34, 'Café américano', 28, 15, 2),
(35, 'Café capuccino', 28, 22, 2),
(36, 'Café moccaccino', 28, 22, 2),
(37, 'Café capuccino vainilla', 28, 22, 2),
(38, 'Chocolate caliente', 28, 22, 2),
(39, 'Té manzanilla', 28, 15, 2),
(40, 'Té limón', 28, 15, 2),
(41, 'Té negro', 28, 15, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idproveedor` int(11) NOT NULL,
  `nombreproveedor` varchar(150) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `idreserva` int(11) NOT NULL,
  `nombrecliente` varchar(150) NOT NULL,
  `cantidadpersonas` varchar(150) NOT NULL,
  `telefono` varchar(150) NOT NULL,
  `diallegada` date NOT NULL,
  `horallegada` text NOT NULL,
  `observaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`idreserva`, `nombrecliente`, `cantidadpersonas`, `telefono`, `diallegada`, `horallegada`, `observaciones`) VALUES
(40, 'David Luna', '9', '2331120774', '2019-04-02', '9:48', 'Sin pan'),
(41, 'Karla', '4', '222 658 9599', '2019-04-09', '11:10', 'Sin notas'),
(42, 'Luna', '8', '2331120774', '2019-04-09', '15:30', 'Sin notas'),
(43, 'Monica', '9', '2229082280', '2019-04-09', '17:20', 'Sin notas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombreusuario` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `fechacreado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NivelUsuario` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombreusuario`, `password`, `fechacreado`, `NivelUsuario`) VALUES
(1, 'administrador', '1234', '2016-12-22 03:59:29', 0),
(2, 'David', 'david', '2019-03-26 19:33:43', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`iddetalle`),
  ADD KEY `FK__productos` (`idproducto`),
  ADD KEY `FK_detalles_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa1`
--
ALTER TABLE `mesa1`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa1_productos` (`idproducto`),
  ADD KEY `FK_mesa1_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa2`
--
ALTER TABLE `mesa2`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa2_productos` (`idproducto`),
  ADD KEY `FK_mesa2_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa3`
--
ALTER TABLE `mesa3`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `FK_mesa3_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa4`
--
ALTER TABLE `mesa4`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa4_productos` (`idproducto`);

--
-- Indices de la tabla `mesa5`
--
ALTER TABLE `mesa5`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `FK_mesa5_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa6`
--
ALTER TABLE `mesa6`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa6_productos` (`idproducto`),
  ADD KEY `FK_mesa6_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa7`
--
ALTER TABLE `mesa7`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa7_productos` (`idproducto`),
  ADD KEY `FK_mesa7_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa8`
--
ALTER TABLE `mesa8`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa8_productos` (`idproducto`),
  ADD KEY `FK_mesa8_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa9`
--
ALTER TABLE `mesa9`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa9_productos` (`idproducto`),
  ADD KEY `FK_mesa9_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa10`
--
ALTER TABLE `mesa10`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mase10_productos` (`idproducto`),
  ADD KEY `FK_mesa10_usuarios` (`idusuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `FK_productos_categorias` (`idcategoria`),
  ADD KEY `FK_productos_usuarios` (`idusuario`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idproveedor`),
  ADD KEY `idcategoria` (`idcategoria`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idreserva`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `iddetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `mesa1`
--
ALTER TABLE `mesa1`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `mesa2`
--
ALTER TABLE `mesa2`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa3`
--
ALTER TABLE `mesa3`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa4`
--
ALTER TABLE `mesa4`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa5`
--
ALTER TABLE `mesa5`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa6`
--
ALTER TABLE `mesa6`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa7`
--
ALTER TABLE `mesa7`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa8`
--
ALTER TABLE `mesa8`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa9`
--
ALTER TABLE `mesa9`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa10`
--
ALTER TABLE `mesa10`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idreserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `FK__productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_detalles_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa1`
--
ALTER TABLE `mesa1`
  ADD CONSTRAINT `FK_mesa1_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa1_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa2`
--
ALTER TABLE `mesa2`
  ADD CONSTRAINT `FK_mesa2_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa2_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa3`
--
ALTER TABLE `mesa3`
  ADD CONSTRAINT `FK_mesa3_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa3_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa4`
--
ALTER TABLE `mesa4`
  ADD CONSTRAINT `FK_mesa4_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa5`
--
ALTER TABLE `mesa5`
  ADD CONSTRAINT `FK_mesa5_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa5_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa6`
--
ALTER TABLE `mesa6`
  ADD CONSTRAINT `FK_mesa6_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa6_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa7`
--
ALTER TABLE `mesa7`
  ADD CONSTRAINT `FK_mesa7_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa7_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`);

--
-- Filtros para la tabla `mesa8`
--
ALTER TABLE `mesa8`
  ADD CONSTRAINT `FK_mesa8_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa8_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa9`
--
ALTER TABLE `mesa9`
  ADD CONSTRAINT `FK_mesa9_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa9_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa10`
--
ALTER TABLE `mesa10`
  ADD CONSTRAINT `FK_mase10_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa10_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_productos_categorias` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_productos_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `FK_proveedores_categorias` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_proveedores_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
