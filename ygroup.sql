

DROP TABLE IF EXISTS sku_mapping;

DROP TABLE IF EXISTS pipo;

DROP TABLE IF EXISTS filters;
DROP TABLE IF EXISTS users;


DROP TABLE IF EXISTS plan_data;









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
  `password` varchar(255) DEFAULT NULL,
  `horizon` int(30) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);




CREATE TABLE `plan_data` (
  `Pk_Combination` varchar(255) DEFAULT NULL,
  `Sku` varchar(255) DEFAULT NULL,
  `cpg` varchar(255) DEFAULT NULL,
  `plant` varchar(255) DEFAULT NULL,
  `Calendar_Week` int(11) DEFAULT NULL,
  `fva` double DEFAULT NULL,
  `Final_Forecast` double DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `comments1` varchar(255) DEFAULT NULL,
  `comments2` varchar(255) DEFAULT NULL,
  `Temp_Value` tinyint(1) DEFAULT NULL,
  `Final_Forecast_Temp` double DEFAULT NULL,
  `calendar_yearmonth` int(25) DEFAULT NULL,
  `ml` double(30,2) DEFAULT NULL,
  `id` int(30) DEFAULT NULL,
  `lockcell` varchar(5) DEFAULT NULL,
  `forecasting` varchar(75) DEFAULT NULL,
  `calendarWeek` int(11) DEFAULT NULL,
  `finalForecast` varchar(255) DEFAULT NULL,
  `finalForecastTemp` double DEFAULT NULL,
  `tempValue` bit(1) DEFAULT NULL,
  `forecast` varchar(255) DEFAULT NULL
);


INSERT into filter_data VALUES(1,'admin','Default','G07 - CH Coop,G09 - CH Denner SD','G001 - Rheinfelden','10075-Bilz PanachÃ© CAN 24X0_33 TraN,10107-Bilz PanachÃ© BOT 10X0_33 CarN,11026-Bilz PanachÃ© PET 4X6X0_50 TraN,15412-Bilz PanachÃ© CAN 4X6X0_33 TraN,19004-Bilz PanachÃ© BOT 300X0_33 1/4N Dol,20725-Bilz PanachÃ© BOT 300X0_33 1/4N','Default');

INSERT INTO users VALUES(1,"admin@gmail.com","admin",201803,"CH");
