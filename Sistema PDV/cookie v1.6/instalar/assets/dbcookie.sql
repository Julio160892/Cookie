-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura para tabla cookievacio.ck_ajustes
CREATE TABLE IF NOT EXISTS `ck_ajustes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `receiptheader` text,
  `receiptfooter` text NOT NULL,
  `theme` varchar(20) NOT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `timezone` varchar(400) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_secret_key` varchar(150) DEFAULT NULL,
  `stripe_publishable_key` varchar(150) DEFAULT NULL,
  `decimals` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_ajustes: 1 rows
/*!40000 ALTER TABLE `ck_ajustes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_ajustes` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_almacen
CREATE TABLE IF NOT EXISTS `ck_almacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_almacen: 1 rows
/*!40000 ALTER TABLE `ck_almacen` DISABLE KEYS */;
INSERT INTO `ck_almacen` (`id`, `name`, `phone`, `email`, `adresse`, `created_at`) VALUES
	(3, 'almacen el roble', '1265489798', 'alamcen_roble@gmail.com', 'c/ libertad', '2018-01-06 12:46:06');
/*!40000 ALTER TABLE `ck_almacen` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_camareros
CREATE TABLE IF NOT EXISTS `ck_camareros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_camareros: 5 rows
/*!40000 ALTER TABLE `ck_camareros` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_camareros` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_categorias
CREATE TABLE IF NOT EXISTS `ck_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_categorias: 4 rows
/*!40000 ALTER TABLE `ck_categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_categorias` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_cat_gastos
CREATE TABLE IF NOT EXISTS `ck_cat_gastos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_cat_gastos: 1 rows
/*!40000 ALTER TABLE `ck_cat_gastos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_cat_gastos` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_clientes
CREATE TABLE IF NOT EXISTS `ck_clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_clientes: 6 rows
/*!40000 ALTER TABLE `ck_clientes` DISABLE KEYS */;
INSERT INTO `ck_clientes` (`id`, `name`, `phone`, `email`, `discount`, `created_at`) VALUES
	(1, 'Cliente sin registrar*', '', '', '', '2018-08-17 13:34:42');
/*!40000 ALTER TABLE `ck_clientes` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_combo_items
CREATE TABLE IF NOT EXISTS `ck_combo_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_combo_items: 0 rows
/*!40000 ALTER TABLE `ck_combo_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_combo_items` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_contener
CREATE TABLE IF NOT EXISTS `ck_contener` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `register_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=359 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_contener: 1 rows
/*!40000 ALTER TABLE `ck_contener` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_contener` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_det_venta
CREATE TABLE IF NOT EXISTS `ck_det_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `subtotal` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1370 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_det_venta: 341 rows
/*!40000 ALTER TABLE `ck_det_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_det_venta` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_gastos
CREATE TABLE IF NOT EXISTS `ck_gastos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `reference` varchar(150) NOT NULL,
  `note` text,
  `amount` float NOT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_gastos: 2 rows
/*!40000 ALTER TABLE `ck_gastos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_gastos` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_locales
CREATE TABLE IF NOT EXISTS `ck_locales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `footer_text` varchar(400) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8914 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_locales: 3 rows
/*!40000 ALTER TABLE `ck_locales` DISABLE KEYS */;
INSERT INTO `ck_locales` (`id`, `name`, `email`, `phone`, `adresse`, `footer_text`, `city`, `country`, `created_at`, `status`) VALUES
	(1, 'Tienda', 'tienda@tienda.com', '+12345678', 'c/ Linares', 'Comida rapida', 'Lima', 'Perú', '2016-05-10 12:44:33', 0);
/*!40000 ALTER TABLE `ck_locales` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_mesas
CREATE TABLE IF NOT EXISTS `ck_mesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `checked` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_mesas: 6 rows
/*!40000 ALTER TABLE `ck_mesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_mesas` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_pago
CREATE TABLE IF NOT EXISTS `ck_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `paid` float NOT NULL,
  `paidmethod` varchar(300) NOT NULL,
  `created_by` varchar(60) NOT NULL,
  `register_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_pago: 2 rows
/*!40000 ALTER TABLE `ck_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_pago` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_productos
CREATE TABLE IF NOT EXISTS `ck_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `category` varchar(20) NOT NULL,
  `cost` float NOT NULL,
  `tax` varchar(11) DEFAULT NULL,
  `description` mediumtext,
  `price` float NOT NULL,
  `photo` varchar(200) NOT NULL,
  `photothumb` varchar(500) DEFAULT NULL,
  `color` varchar(10) NOT NULL,
  `created_at` varchar(30) DEFAULT NULL,
  `modified_at` varchar(30) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `alertqt` int(10) DEFAULT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `taxmethod` tinyint(4) DEFAULT NULL,
  `h_stores` varchar(300) DEFAULT NULL,
  `options` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_productos: 13 rows
/*!40000 ALTER TABLE `ck_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_productos` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_proveedores
CREATE TABLE IF NOT EXISTS `ck_proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `note` mediumtext,
  `created_at` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_proveedores: 2 rows
/*!40000 ALTER TABLE `ck_proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_proveedores` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_punto_venta
CREATE TABLE IF NOT EXISTS `ck_punto_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `options` text,
  `time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2247 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_punto_venta: 0 rows
/*!40000 ALTER TABLE `ck_punto_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_punto_venta` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_registros
CREATE TABLE IF NOT EXISTS `ck_registros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_total` float DEFAULT NULL,
  `cash_sub` float DEFAULT NULL,
  `cc_total` float DEFAULT NULL,
  `cc_sub` float DEFAULT NULL,
  `cheque_total` float DEFAULT NULL,
  `cheque_sub` float DEFAULT NULL,
  `cash_inhand` float DEFAULT NULL,
  `note` text,
  `closed_at` varchar(150) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `waiterscih` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_registros: 25 rows
/*!40000 ALTER TABLE `ck_registros` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_registros` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_stocks
CREATE TABLE IF NOT EXISTS `ck_stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_stocks: 40 rows
/*!40000 ALTER TABLE `ck_stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_stocks` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_usuarios
CREATE TABLE IF NOT EXISTS `ck_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hashed_password` varchar(128) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `last_active` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `created_at` varchar(300) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_usuarios: 4 rows
/*!40000 ALTER TABLE `ck_usuarios` DISABLE KEYS */;
INSERT INTO `ck_usuarios` (`id`, `username`, `firstname`, `lastname`, `hashed_password`, `email`, `role`, `last_active`, `avatar`, `created_at`, `store_id`) VALUES
	(1, 'admin', 'administrador', 'Sanchez', '605c9d341a47c6412965af877e4d8c72c730e2630d1f28e43f87ddf3471e110852eda3202b9eacb3f80082a8999aa0376da15da41322fa710bd2b0a9c8465c09', 'admin@admin.com', 'admin', '2018-10-07 11:50:53', '6209dac7f7fc4e96ecbc60d723c669b5.jpg', '2018-07-31 15:01:30', 1);
/*!40000 ALTER TABLE `ck_usuarios` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_ventas
CREATE TABLE IF NOT EXISTS `ck_ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `subtotal` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `created_at` date NOT NULL,
  `created_at_hour` time NOT NULL,
  `modified_at` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `totalitems` int(20) NOT NULL,
  `paid` varchar(15) DEFAULT NULL,
  `paidmethod` varchar(700) DEFAULT NULL,
  `taxamount` float DEFAULT NULL,
  `discountamount` float DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `firstpayement` float DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=367 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_ventas: 62 rows
/*!40000 ALTER TABLE `ck_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_ventas` ENABLE KEYS */;

-- Volcando estructura para tabla cookievacio.ck_zonas
CREATE TABLE IF NOT EXISTS `ck_zonas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cookievacio.ck_zonas: 8 rows
/*!40000 ALTER TABLE `ck_zonas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_zonas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
