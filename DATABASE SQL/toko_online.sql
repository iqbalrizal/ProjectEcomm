/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.3.15-MariaDB : Database - toko_online
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`toko_online` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `toko_online`;

/*Table structure for table `tb_barang` */

DROP TABLE IF EXISTS `tb_barang`;

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL AUTO_INCREMENT,
  `nama_brg` varchar(120) CHARACTER SET utf8mb4 DEFAULT NULL,
  `keterangan` varchar(225) CHARACTER SET utf8mb4 DEFAULT NULL,
  `kategori` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(4) DEFAULT NULL,
  `gambar` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id_brg`),
  KEY `id_brg` (`id_brg`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `tb_barang` */

insert  into `tb_barang`(`id_brg`,`nama_brg`,`keterangan`,`kategori`,`harga`,`stok`,`gambar`) values 
(1,'sepatu riding kulit','joss bangettttttttt','sepatu motor pria',450000,4,'wanitas1.jfif'),
(2,'pakalolo wanita ','mantep','sepatu motor wanita',840000,2,'wanitas2.jpg'),
(3,'raimbo snikers','model balansiaga','Sepatu Motor Wanita',732000,1,'wanitas3.jfif'),
(5,'Sepatu','Sepatu Merk All Star','Pakaian Pria',300000,10,'pakaian2.jpg'),
(15,'jaket terbaru','adem, fit di badan','Pakaian Pria',360000,80,'pakaian3.jpg'),
(16,'jaket model racing','tahan panas, awet.','Pakaian Pria',640000,3,'pakaian1.jpg'),
(20,'jaket waita hitam pink','lentur dan adem','Pakaian Wanita',603000,20,'wanita3.jpg'),
(21,'jaket wanita hitam solid merah','100% original ','Pakaian Wanita',460000,2,'wanita2.jpg'),
(22,'jaket wanita hitam','bahan dari kulit tebal, anti air, ','Pakaian Wanita',405000,16,'wanita1.jpg');

/*Table structure for table `tb_invoice` */

DROP TABLE IF EXISTS `tb_invoice`;

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tb_invoice` */

insert  into `tb_invoice`(`id`,`nama`,`alamat`,`tgl_pesan`,`batas_bayar`) values 
(1,'muhammad iqbal','qqqq','2021-07-08 11:33:56','2021-07-09 11:33:56'),
(2,'muhammad iqbal','qqqq','2021-07-08 11:39:24','2021-07-09 11:39:24'),
(3,'muhammad iqbal','qqqq','2021-07-08 11:39:57','2021-07-09 11:39:57'),
(4,'iqq','qqqq','2021-07-08 14:08:51','2021-07-09 14:08:51'),
(5,'www','qqqq','2021-07-08 15:11:51','2021-07-09 15:11:51');

/*Table structure for table `tb_pesanan` */

DROP TABLE IF EXISTS `tb_pesanan`;

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pesanan` */

insert  into `tb_pesanan`(`id`,`id_invoice`,`id_brg`,`nama_brg`,`jumlah`,`harga`,`pilihan`) values 
(1,1,1,'sepatu riding kulit',1,450000,''),
(2,4,2,'pakalolo wanita ',1,840000,''),
(3,5,3,'raimbo snikers',1,732000,'');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`nama`,`username`,`password`,`role_id`) values 
(1,'admin','admin','123',1),
(2,'user','user','123',2),
(4,'muhammad iqbal','iqbal','123',2);

/* Trigger structure for table `tb_pesanan` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `pesanan_penjualan` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = 	NEW.id_brg;
END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
