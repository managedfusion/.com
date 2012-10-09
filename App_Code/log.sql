--
-- Definition of table `log`
--

DROP TABLE IF EXISTS `websites_log`.`log`;
CREATE TABLE  `websites_log`.`log` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `request_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `process_time` double NOT NULL,
  `method` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  `host` varchar(255) default NULL,
  `content_type` varchar(45) default NULL,
  `request_uri` varchar(1000) default NULL,
  `response_uri` varchar(1000) default NULL,
  `redirect_uri` varchar(1000) default NULL,
  `referrer` varchar(1000) default NULL,
  `user_agent` varchar(1000) default NULL,
  `address` varchar(1000) default NULL,
  `address_ip` varchar(15) default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index_host` (`host`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;