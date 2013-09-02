CREATE TABLE `town` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `postcode` varchar(10) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

CREATE TABLE `address` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `street` varchar(255) default NULL,
  `town_id` mediumint,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

CREATE TABLE `person` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `firstName` varchar(255) default NULL,
  `lastName` varchar(255) default NULL,
  `address_id` mediumint,
  `mail` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;
