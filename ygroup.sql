

DROP TABLE sku_mapping;

DROP TABLE pipo;

DROP TABLE filters;
DROP TABLE users;






CREATE TABLE `filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `filter_name` varchar(100) NOT NULL,
  `cpg` longtext NOT NULL,
  `plant` longtext NOT NULL,
  `sku` longtext NOT NULL,
  `valuedefault` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
);



CREATE TABLE `pipo` (
  `fromid` int(10) DEFAULT NULL,
  `toid` int(10) DEFAULT NULL,
  `fromweek` int(10) DEFAULT NULL,
  `fgid` varchar(75) DEFAULT NULL,
  `state` varchar(75) DEFAULT NULL
);



CREATE TABLE `sku_mapping` (
  `material` varchar(10) DEFAULT NULL,
  `Sku` varchar(75) DEFAULT NULL,
  `Forecastinggroup` varchar(100) DEFAULT NULL,
  `FGID` varchar(30) DEFAULT NULL,
  `minimum` int(30) DEFAULT NULL,
  `maximum` int(30) DEFAULT NULL,
  `prime` varchar(75) DEFAULT 'PRIMARY'
);






CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `horizon` int(30) DEFAULT NULL,
  `region` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

