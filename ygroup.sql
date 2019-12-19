CREATE TABLE IF NOT EXISTS `CacheTable` (
  `ML_Key` varchar(255) DEFAULT NULL,
  `ML_Value` double DEFAULT NULL,
  `calendar_yearmonth` int(25) DEFAULT NULL
);


CREATE TABLE IF NOT EXISTS `Mapping` (
  `SalesOrg` varchar(10) DEFAULT NULL,
  `material` int(10) DEFAULT NULL,
  `material_desc` varchar(25) DEFAULT NULL,
  `base_unit_measure` varchar(5) DEFAULT NULL,
  `hl` double(10,2) DEFAULT NULL,
  `PC` double(5,1) DEFAULT NULL,
  `BOT` double(10,2) DEFAULT NULL,
    `PPU` double(10,2) DEFAULT NULL,
      `PAL` double(10,2) DEFAULT NULL,
        `CU` double(10,2) DEFAULT NULL,
  KEY `material_in` (`material`)
);



CREATE TABLE IF NOT EXISTS `UserLog` (
  `Username` varchar(25) NOT NULL,
  `activity` varchar(25) NOT NULL,
  `datetimestamp` varchar(75) NOT NULL
);



CREATE TABLE IF NOT EXISTS `filter_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `filter_name` varchar(100) NOT NULL,
  `cpg` longtext NOT NULL,
  `plant` longtext NOT NULL,
  `sku` longtext NOT NULL,
  `valuedefault` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
);



CREATE TABLE IF NOT EXISTS `pipo_mapping_updated` (
  `fromid` int(10) DEFAULT NULL,
  `toid` int(10) DEFAULT NULL,
  `fromweek` int(10) DEFAULT NULL,
  `fgid` varchar(75) DEFAULT NULL,
  `state` varchar(75) DEFAULT NULL
);



CREATE TABLE IF NOT EXISTS `pipo_final` (
  `material` varchar(10) DEFAULT NULL,
  `Sku` varchar(75) DEFAULT NULL,
  `Forecastinggroup` varchar(100) DEFAULT NULL,
  `FGID` varchar(30) DEFAULT NULL,
  `minimum` int(30) DEFAULT NULL,
  `maximum` int(30) DEFAULT NULL,
  `prime` varchar(75) DEFAULT 'PRIMARY'
);





CREATE TABLE IF NOT EXISTS `plan_data` (
  `Pk_Combination` varchar(255) NOT NULL,
  `Sku` varchar(255) NOT NULL,
  `cpg` varchar(255) NOT NULL,
  `plant` varchar(255) NOT NULL,
  `Calendar_Week` int(11) NOT NULL,
  `fva` double NOT NULL,
  `Final_Forecast` double DEFAULT NULL,
  `user` varchar(100) NOT NULL,
  `comments1` varchar(255) DEFAULT NULL,
  `comments2` varchar(255) DEFAULT NULL,
  `Temp_Value` tinyint(1) DEFAULT NULL,
  `Final_Forecast_Temp` double DEFAULT NULL,
  `calendar_yearmonth` int(25) NOT NULL,
  `ml` double(30,2) DEFAULT NULL,
  `id` int(30) DEFAULT NULL,
  `lockcell` varchar(5) DEFAULT NULL,
  `forecasting` varchar(75) DEFAULT NULL
);



CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `horizon` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
