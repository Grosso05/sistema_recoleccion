-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para transporte
CREATE DATABASE IF NOT EXISTS `transporte` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `transporte`;

-- Volcando estructura para tabla transporte.conductores
CREATE TABLE IF NOT EXISTS `conductores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `licencia_conduccion` varchar(50) DEFAULT NULL,
  `disponibilidad` tinyint(1) DEFAULT 1,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla transporte.conductores: ~36 rows (aproximadamente)
INSERT INTO `conductores` (`id`, `nombre`, `email`, `password`, `telefono`, `licencia_conduccion`, `disponibilidad`, `fecha_registro`) VALUES
	(1, 'Pedro Ruiz', 'pedro.ruiz@example.com', 'password123', '555-2000', 'ABC123456', 1, '2024-09-24 11:26:39'),
	(2, 'Sofía Martínez', 'sofia.martinez@example.com', 'password123', '555-2001', 'DEF234567', 1, '2024-09-24 11:26:39'),
	(3, 'Luis Morales', 'luis.morales@example.com', 'password123', '555-2002', 'GHI345678', 0, '2024-09-24 11:26:39'),
	(4, 'Laura Torres', 'laura.torres@example.com', 'password123', '555-2003', 'JKL456789', 1, '2024-09-24 11:26:39'),
	(5, 'Juan Díaz', 'juan.diaz@example.com', 'password123', '555-2004', 'MNO567890', 1, '2024-09-24 11:26:39'),
	(6, 'Clara Rodríguez', 'clara.rodriguez@example.com', 'password123', '555-2005', 'PQR678901', 1, '2024-09-24 11:26:39'),
	(7, 'Ricardo Morales', 'ricardo.morales@example.com', 'password123', '555-2006', 'STU789012', 0, '2024-09-24 11:26:39'),
	(8, 'Verónica López', 'veronica.lopez@example.com', 'password123', '555-2007', 'VWX890123', 1, '2024-09-24 11:26:39'),
	(9, 'Samuel Torres', 'samuel.torres@example.com', 'password123', '555-2008', 'YZA901234', 1, '2024-09-24 11:26:39'),
	(10, 'Teresa Castro', 'teresa.castro@example.com', 'password123', '555-2009', 'BCD012345', 0, '2024-09-24 11:26:39'),
	(11, 'Andrés Sánchez', 'andres.sanchez@example.com', 'password123', '555-2010', 'EFG123456', 1, '2024-09-24 11:26:39'),
	(12, 'Gabriela Reyes', 'gabriela.reyes@example.com', 'password123', '555-2011', 'HIJ234567', 1, '2024-09-24 11:26:39'),
	(13, 'Sergio Moreno', 'sergio.moreno@example.com', 'password123', '555-2012', 'KLM345678', 0, '2024-09-24 11:26:39'),
	(14, 'Álvaro Gómez', 'alvaro.gomez@example.com', 'password123', '555-2013', 'NOP456789', 1, '2024-09-24 11:26:39'),
	(15, 'Carmen Medina', 'carmen.medina@example.com', 'password123', '555-2014', 'QRS567890', 1, '2024-09-24 11:26:39'),
	(16, 'Eduardo Vargas', 'eduardo.vargas@example.com', 'password123', '555-2015', 'TUV678901', 0, '2024-09-24 11:26:39'),
	(17, 'Fabiola Pinto', 'fabiola.pinto@example.com', 'password123', '555-2016', 'WXY789012', 1, '2024-09-24 11:26:39'),
	(18, 'Hugo Castro', 'hugo.castro@example.com', 'password123', '555-2017', 'ZAB890123', 1, '2024-09-24 11:26:39'),
	(19, 'Marcela Pinto', 'marcela.pinto@example.com', 'password123', '555-2018', 'CDE901234', 0, '2024-09-24 11:26:39'),
	(20, 'Luis Ramírez', 'luis.ramirez@example.com', 'password123', '555-2019', 'FGH012345', 1, '2024-09-24 11:26:39'),
	(21, 'Silvia Ríos', 'silvia.rios@example.com', 'password123', '555-2020', 'IJK123456', 1, '2024-09-24 11:26:39'),
	(22, 'Fernando Jiménez', 'fernando.jimenez@example.com', 'password123', '555-2021', 'LMN234567', 0, '2024-09-24 11:26:39'),
	(23, 'Cristina López', 'cristina.lopez@example.com', 'password123', '555-2022', 'OPQ345678', 1, '2024-09-24 11:26:39'),
	(24, 'Javier Fernández', 'javier.fernandez@example.com', 'password123', '555-2023', 'RST456789', 1, '2024-09-24 11:26:39'),
	(25, 'Patricia García', 'patricia.garcia@example.com', 'password123', '555-2024', 'UVW567890', 0, '2024-09-24 11:26:39'),
	(26, 'Ricardo Castillo', 'ricardo.castillo@example.com', 'password123', '555-2025', 'XYZ678901', 1, '2024-09-24 11:26:39'),
	(27, 'Gustavo Hernández', 'gustavo.hernandez@example.com', 'password123', '555-2026', 'ABC789012', 1, '2024-09-24 11:26:39'),
	(28, 'Adriana Ramos', 'adriana.ramos@example.com', 'password123', '555-2027', 'DEF890123', 0, '2024-09-24 11:26:39'),
	(29, 'Lina López', 'lina.lopez@example.com', 'password123', '555-2028', 'GHI901234', 1, '2024-09-24 11:26:39'),
	(30, 'Marco Martínez', 'marco.martinez@example.com', 'password123', '555-2029', 'JKL012345', 1, '2024-09-24 11:26:39'),
	(31, 'Victoria Torres', 'victoria.torres@example.com', 'password123', '555-2030', 'MNO123456', 0, '2024-09-24 11:26:39'),
	(32, 'Alfredo Pérez', 'alfredo.perez@example.com', 'password123', '555-2031', 'PQR234567', 1, '2024-09-24 11:26:39'),
	(33, 'Marta González', 'marta.gonzalez@example.com', 'password123', '555-2032', 'STU345678', 1, '2024-09-24 11:26:39'),
	(34, 'Raúl Alvarado', 'raul.alvarado@example.com', 'password123', '555-2033', 'VWX456789', 0, '2024-09-24 11:26:39'),
	(35, 'Luisa Medina', 'luisa.medina@example.com', 'password123', '555-2034', 'YZA567890', 1, '2024-09-24 11:26:39'),
	(36, 'Cristian López', 'cristian.lopez@example.com', 'password123', '555-2035', 'BCD678901', 1, '2024-09-24 11:26:39');

-- Volcando estructura para tabla transporte.conductor_vehiculo
CREATE TABLE IF NOT EXISTS `conductor_vehiculo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_conductor` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `fecha_asignacion` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_conductor` (`id_conductor`),
  KEY `id_vehiculo` (`id_vehiculo`),
  CONSTRAINT `conductor_vehiculo_ibfk_1` FOREIGN KEY (`id_conductor`) REFERENCES `conductores` (`id`) ON DELETE CASCADE,
  CONSTRAINT `conductor_vehiculo_ibfk_2` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla transporte.conductor_vehiculo: ~0 rows (aproximadamente)

-- Volcando estructura para tabla transporte.historial_solicitudes
CREATE TABLE IF NOT EXISTS `historial_solicitudes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_solicitud` int(11) DEFAULT NULL,
  `estado_anterior` enum('pendiente','aceptada','en_proceso','completada','cancelada') DEFAULT NULL,
  `estado_nuevo` enum('pendiente','aceptada','en_proceso','completada','cancelada') DEFAULT NULL,
  `fecha_cambio` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_solicitud` (`id_solicitud`),
  CONSTRAINT `historial_solicitudes_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitudes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla transporte.historial_solicitudes: ~4 rows (aproximadamente)
INSERT INTO `historial_solicitudes` (`id`, `id_solicitud`, `estado_anterior`, `estado_nuevo`, `fecha_cambio`) VALUES
	(1, 1, 'pendiente', 'aceptada', '2024-09-24 11:30:26'),
	(2, 2, 'aceptada', 'en_proceso', '2024-09-24 11:30:26'),
	(3, 3, 'en_proceso', 'completada', '2024-09-24 11:30:26'),
	(4, 4, 'completada', 'cancelada', '2024-09-24 11:30:26');

-- Volcando estructura para tabla transporte.pagos
CREATE TABLE IF NOT EXISTS `pagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_solicitud` int(11) DEFAULT NULL,
  `monto` decimal(10,2) NOT NULL,
  `metodo_pago` enum('Efectivo','Transferencia') NOT NULL,
  `fecha_pago` datetime DEFAULT current_timestamp(),
  `estado` enum('pendiente','completado','fallido') DEFAULT 'pendiente',
  PRIMARY KEY (`id`),
  KEY `id_solicitud` (`id_solicitud`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitudes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla transporte.pagos: ~4 rows (aproximadamente)
INSERT INTO `pagos` (`id`, `id_solicitud`, `monto`, `metodo_pago`, `fecha_pago`, `estado`) VALUES
	(1, 1, 100.00, 'Efectivo', '2024-09-24 11:30:12', 'completado'),
	(2, 2, 150.00, 'Transferencia', '2024-09-24 11:30:12', 'completado'),
	(3, 3, 200.00, 'Efectivo', '2024-09-24 11:30:12', 'pendiente'),
	(4, 4, 250.00, 'Transferencia', '2024-09-24 11:30:12', 'fallido');

-- Volcando estructura para tabla transporte.solicitudes
CREATE TABLE IF NOT EXISTS `solicitudes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_conductor` int(11) DEFAULT NULL,
  `id_vehiculo` int(11) DEFAULT NULL,
  `fecha_solicitud` datetime DEFAULT current_timestamp(),
  `direccion_recoleccion` text NOT NULL,
  `direccion_destino` text NOT NULL,
  `estado` enum('pendiente','aceptada','en_proceso','completada','cancelada') DEFAULT 'pendiente',
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_conductor` (`id_conductor`),
  KEY `FK_solicitudes_vehiculos` (`id_vehiculo`),
  CONSTRAINT `FK_solicitudes_vehiculos` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `solicitudes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla transporte.solicitudes: ~32 rows (aproximadamente)
INSERT INTO `solicitudes` (`id`, `id_usuario`, `id_conductor`, `id_vehiculo`, `fecha_solicitud`, `direccion_recoleccion`, `direccion_destino`, `estado`) VALUES
	(1, 1, 1, 1, '2024-09-24 11:27:17', 'Calle 1, Ciudad', 'Calle 2, Ciudad', 'pendiente'),
	(2, 2, 2, 2, '2024-09-24 11:27:17', 'Calle 3, Ciudad', 'Calle 4, Ciudad', 'aceptada'),
	(3, 3, 3, 3, '2024-09-24 11:27:17', 'Calle 5, Ciudad', 'Calle 6, Ciudad', 'en_proceso'),
	(4, 4, 4, 4, '2024-09-24 11:27:17', 'Calle 7, Ciudad', 'Calle 8, Ciudad', 'completada'),
	(5, 1, 1, 1, '2024-09-24 11:27:17', 'Calle 9, Ciudad', 'Calle 10, Ciudad', 'pendiente'),
	(6, 2, 2, 2, '2024-09-24 11:27:17', 'Calle 11, Ciudad', 'Calle 12, Ciudad', 'aceptada'),
	(7, 3, 3, 3, '2024-09-24 11:27:17', 'Calle 13, Ciudad', 'Calle 14, Ciudad', 'en_proceso'),
	(8, 4, 4, 4, '2024-09-24 11:27:17', 'Calle 15, Ciudad', 'Calle 16, Ciudad', 'completada'),
	(9, 1, 1, 1, '2024-09-24 11:27:17', 'Calle 17, Ciudad', 'Calle 18, Ciudad', 'pendiente'),
	(10, 2, 2, 2, '2024-09-24 11:27:17', 'Calle 19, Ciudad', 'Calle 20, Ciudad', 'aceptada'),
	(11, 3, 3, 3, '2024-09-24 11:27:17', 'Calle 21, Ciudad', 'Calle 22, Ciudad', 'en_proceso'),
	(12, 4, 4, 4, '2024-09-24 11:27:17', 'Calle 23, Ciudad', 'Calle 24, Ciudad', 'completada'),
	(13, 1, 1, 1, '2024-09-24 11:27:17', 'Calle 25, Ciudad', 'Calle 26, Ciudad', 'pendiente'),
	(14, 2, 2, 2, '2024-09-24 11:27:17', 'Calle 27, Ciudad', 'Calle 28, Ciudad', 'aceptada'),
	(15, 3, 3, 3, '2024-09-24 11:27:17', 'Calle 29, Ciudad', 'Calle 30, Ciudad', 'en_proceso'),
	(16, 4, 4, 4, '2024-09-24 11:27:17', 'Calle 31, Ciudad', 'Calle 32, Ciudad', 'completada'),
	(17, 1, 1, 1, '2024-09-24 11:27:17', 'Calle 33, Ciudad', 'Calle 34, Ciudad', 'pendiente'),
	(18, 2, 2, 2, '2024-09-24 11:27:17', 'Calle 35, Ciudad', 'Calle 36, Ciudad', 'aceptada'),
	(19, 3, 3, 3, '2024-09-24 11:27:17', 'Calle 37, Ciudad', 'Calle 38, Ciudad', 'en_proceso'),
	(20, 4, 4, 4, '2024-09-24 11:27:17', 'Calle 39, Ciudad', 'Calle 40, Ciudad', 'completada'),
	(21, 1, 1, 1, '2024-09-24 11:27:17', 'Calle 41, Ciudad', 'Calle 42, Ciudad', 'pendiente'),
	(22, 2, 2, 2, '2024-09-24 11:27:17', 'Calle 43, Ciudad', 'Calle 44, Ciudad', 'aceptada'),
	(23, 3, 3, 3, '2024-09-24 11:27:17', 'Calle 45, Ciudad', 'Calle 46, Ciudad', 'en_proceso'),
	(24, 4, 4, 4, '2024-09-24 11:27:17', 'Calle 47, Ciudad', 'Calle 48, Ciudad', 'completada'),
	(25, 1, 1, 1, '2024-09-24 11:27:17', 'Calle 49, Ciudad', 'Calle 50, Ciudad', 'pendiente'),
	(26, 2, 2, 2, '2024-09-24 11:27:17', 'Calle 51, Ciudad', 'Calle 52, Ciudad', 'aceptada'),
	(27, 3, 3, 3, '2024-09-24 11:27:17', 'Calle 53, Ciudad', 'Calle 54, Ciudad', 'en_proceso'),
	(28, 4, 4, 4, '2024-09-24 11:27:17', 'Calle 55, Ciudad', 'Calle 56, Ciudad', 'completada'),
	(29, 1, 1, 1, '2024-09-24 11:27:17', 'Calle 57, Ciudad', 'Calle 58, Ciudad', 'pendiente'),
	(30, 2, 2, 2, '2024-09-24 11:27:17', 'Calle 59, Ciudad', 'Calle 60, Ciudad', 'aceptada'),
	(31, 3, 3, 3, '2024-09-24 11:27:17', 'Calle 61, Ciudad', 'Calle 62, Ciudad', 'en_proceso'),
	(32, 4, 4, 4, '2024-09-24 11:27:17', 'Calle 63, Ciudad', 'Calle 64, Ciudad', 'completada');

-- Volcando estructura para tabla transporte.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla transporte.usuarios: ~45 rows (aproximadamente)
INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `telefono`, `fecha_registro`) VALUES
	(1, 'Juan Pérez', 'juan.perez@example.com', 'password123', '555-1000', '2024-09-24 11:25:41'),
	(2, 'María López', 'maria.lopez@example.com', 'password123', '555-1001', '2024-09-24 11:25:41'),
	(3, 'Carlos Gómez', 'carlos.gomez@example.com', 'password123', '555-1002', '2024-09-24 11:25:41'),
	(4, 'Ana Fernández', 'ana.fernandez@example.com', 'password123', '555-1003', '2024-09-24 11:25:41'),
	(5, 'Luis García', 'luis.garcia@example.com', 'password123', '555-1004', '2024-09-24 11:25:41'),
	(6, 'Laura Torres', 'laura.torres@example.com', 'password123', '555-1005', '2024-09-24 11:25:41'),
	(7, 'Javier Martín', 'javier.martin@example.com', 'password123', '555-1006', '2024-09-24 11:25:41'),
	(8, 'Sofía Díaz', 'sofia.diaz@example.com', 'password123', '555-1007', '2024-09-24 11:25:41'),
	(9, 'Roberto Ruiz', 'roberto.ruiz@example.com', 'password123', '555-1008', '2024-09-24 11:25:41'),
	(10, 'Claudia Castro', 'claudia.castro@example.com', 'password123', '555-1009', '2024-09-24 11:25:41'),
	(11, 'José Hernández', 'jose.hernandez@example.com', 'password123', '555-1010', '2024-09-24 11:25:41'),
	(12, 'Patricia Jiménez', 'patricia.jimenez@example.com', 'password123', '555-1011', '2024-09-24 11:25:41'),
	(13, 'Andrés Méndez', 'andres.mendez@example.com', 'password123', '555-1012', '2024-09-24 11:25:41'),
	(14, 'Elena Pérez', 'elena.perez@example.com', 'password123', '555-1013', '2024-09-24 11:25:41'),
	(15, 'Marcos López', 'marcos.lopez@example.com', 'password123', '555-1014', '2024-09-24 11:25:41'),
	(16, 'Paola Ramírez', 'paola.ramirez@example.com', 'password123', '555-1015', '2024-09-24 11:25:41'),
	(17, 'Hugo Castillo', 'hugo.castillo@example.com', 'password123', '555-1016', '2024-09-24 11:25:41'),
	(18, 'Carmen Morales', 'carmen.morales@example.com', 'password123', '555-1017', '2024-09-24 11:25:41'),
	(19, 'Fernando Silva', 'fernando.silva@example.com', 'password123', '555-1018', '2024-09-24 11:25:41'),
	(20, 'Verónica Núñez', 'veronica.nunez@example.com', 'password123', '555-1019', '2024-09-24 11:25:41'),
	(21, 'Samuel Herrera', 'samuel.herrera@example.com', 'password123', '555-1020', '2024-09-24 11:25:41'),
	(22, 'Gabriela González', 'gabriela.gonzalez@example.com', 'password123', '555-1021', '2024-09-24 11:25:41'),
	(23, 'Cristian Romero', 'cristian.romero@example.com', 'password123', '555-1022', '2024-09-24 11:25:41'),
	(24, 'Nora Torres', 'nora.torres@example.com', 'password123', '555-1023', '2024-09-24 11:25:41'),
	(25, 'Mauricio Pineda', 'mauricio.pineda@example.com', 'password123', '555-1024', '2024-09-24 11:25:41'),
	(26, 'Cecilia Vargas', 'cecilia.vargas@example.com', 'password123', '555-1025', '2024-09-24 11:25:41'),
	(27, 'Ángel Ruiz', 'angel.ruiz@example.com', 'password123', '555-1026', '2024-09-24 11:25:41'),
	(28, 'Silvia López', 'silvia.lopez@example.com', 'password123', '555-1027', '2024-09-24 11:25:41'),
	(29, 'Ricardo Gómez', 'ricardo.gomez@example.com', 'password123', '555-1028', '2024-09-24 11:25:41'),
	(30, 'Verónica López', 'veronica.lopez@example.com', 'password123', '555-1029', '2024-09-24 11:25:41'),
	(31, 'Julián Castro', 'julian.castro@example.com', 'password123', '555-1030', '2024-09-24 11:25:41'),
	(32, 'Carla Herrera', 'carla.herrera@example.com', 'password123', '555-1031', '2024-09-24 11:25:41'),
	(33, 'Benjamín Rodríguez', 'benjamin.rodriguez@example.com', 'password123', '555-1032', '2024-09-24 11:25:41'),
	(34, 'Teresa Mendoza', 'teresa.mendoza@example.com', 'password123', '555-1033', '2024-09-24 11:25:41'),
	(35, 'Diego Morales', 'diego.morales@example.com', 'password123', '555-1034', '2024-09-24 11:25:41'),
	(36, 'Lucía Ríos', 'lucia.rios@example.com', 'password123', '555-1035', '2024-09-24 11:25:41'),
	(37, 'Sergio Montoya', 'sergio.montoya@example.com', 'password123', '555-1036', '2024-09-24 11:25:41'),
	(38, 'Isabel Alvarado', 'isabel.alvarado@example.com', 'password123', '555-1037', '2024-09-24 11:25:41'),
	(39, 'Adrián López', 'adrian.lopez@example.com', 'password123', '555-1038', '2024-09-24 11:25:41'),
	(40, 'Florencia Castillo', 'florencia.castillo@example.com', 'password123', '555-1039', '2024-09-24 11:25:41'),
	(41, 'Gustavo Reyes', 'gustavo.reyes@example.com', 'password123', '555-1040', '2024-09-24 11:25:41'),
	(42, 'Salvador Peña', 'salvador.pena@example.com', 'password123', '555-1041', '2024-09-24 11:25:41'),
	(43, 'Berta Silva', 'berta.silva@example.com', 'password123', '555-1042', '2024-09-24 11:25:41'),
	(44, 'Victor Gómez', 'victor.gomez@example.com', 'password123', '555-1043', '2024-09-24 11:25:41'),
	(45, 'Alicia Morales', 'alicia.morales@example.com', 'password123', '555-1044', '2024-09-24 11:25:41');

-- Volcando estructura para tabla transporte.vehiculos
CREATE TABLE IF NOT EXISTS `vehiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `capacidad_carga` decimal(10,2) NOT NULL,
  `placa` varchar(20) NOT NULL,
  `id_conductor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `placa` (`placa`),
  KEY `id_conductor` (`id_conductor`),
  CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`id_conductor`) REFERENCES `conductores` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla transporte.vehiculos: ~44 rows (aproximadamente)
INSERT INTO `vehiculos` (`id`, `tipo`, `capacidad_carga`, `placa`, `id_conductor`) VALUES
	(1, 'Camión', 1000.00, 'ABC-100', 1),
	(2, 'Furgoneta', 800.00, 'DEF-200', 2),
	(3, 'Pick-up', 600.00, 'GHI-300', 1),
	(4, 'Camioneta', 750.00, 'JKL-400', 4),
	(5, 'Camión', 1200.00, 'MNO-500', 1),
	(6, 'Furgoneta', 850.00, 'PQR-600', 2),
	(7, 'Pick-up', 700.00, 'STU-700', 1),
	(8, 'Camioneta', 900.00, 'VWX-800', 3),
	(9, 'Camión', 1100.00, 'YZA-900', 1),
	(10, 'Furgoneta', 950.00, 'BCD-1000', 2),
	(11, 'Pick-up', 650.00, 'EFG-1100', 1),
	(12, 'Camioneta', 800.00, 'HIJ-1200', 4),
	(13, 'Camión', 1300.00, 'KLM-1300', 1),
	(14, 'Furgoneta', 750.00, 'NOP-1400', 3),
	(15, 'Pick-up', 720.00, 'QRS-1500', 1),
	(16, 'Camioneta', 880.00, 'TUV-1600', 2),
	(17, 'Camión', 1250.00, 'WXY-1700', 1),
	(18, 'Furgoneta', 920.00, 'ZAB-1800', 4),
	(19, 'Pick-up', 680.00, 'CDE-1900', 1),
	(20, 'Camioneta', 860.00, 'FGH-2000', 3),
	(21, 'Camión', 1350.00, 'IJK-2100', 1),
	(22, 'Furgoneta', 820.00, 'LMN-2200', 2),
	(23, 'Pick-up', 690.00, 'OPQ-2300', 1),
	(24, 'Camioneta', 940.00, 'RST-2400', 3),
	(25, 'Camión', 1400.00, 'UVW-2500', 1),
	(26, 'Furgoneta', 830.00, 'XYZ-2600', 4),
	(27, 'Pick-up', 730.00, 'ABC-2700', 1),
	(28, 'Camioneta', 910.00, 'DEF-2800', 2),
	(29, 'Camión', 1450.00, 'GHI-2900', 1),
	(30, 'Furgoneta', 840.00, 'JKL-3000', 4),
	(31, 'Pick-up', 720.00, 'MNO-3100', 1),
	(32, 'Camioneta', 950.00, 'PQR-3200', 3),
	(33, 'Camión', 1500.00, 'STU-3300', 1),
	(34, 'Furgoneta', 880.00, 'VWX-3400', 2),
	(35, 'Pick-up', 760.00, 'YZA-3500', 1),
	(36, 'Camioneta', 900.00, 'BCD-3600', 3),
	(37, 'Camión', 1550.00, 'EFG-3700', 1),
	(38, 'Furgoneta', 860.00, 'HIJ-3800', 4),
	(39, 'Pick-up', 740.00, 'KLM-3900', 1),
	(40, 'Camioneta', 980.00, 'NOP-4000', 2),
	(41, 'Camión', 1600.00, 'QRS-4100', 1),
	(42, 'Furgoneta', 870.00, 'TUV-4200', 4),
	(43, 'Pick-up', 780.00, 'WXY-4300', 1),
	(44, 'Camioneta', 930.00, 'ZAB-4400', 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
