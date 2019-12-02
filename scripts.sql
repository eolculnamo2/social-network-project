SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS  `users`;

CREATE TABLE  `users` (
  `username` varchar(55) UNIQUE,
  `password` varchar(500) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `photo` varchar (200) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,

PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT  CHARSET=latin1;


DROP TABLE IF EXISTS `authorities`;

CREATE TABLE `authorities` (
  `username` varchar(55) UNIQUE,
  `authority` varchar(45) DEFAULT "ROLE_USER",

UNIQUE KEY `authorities_idx_1` (`username`, `authority`),

CONSTRAINT `authorities_ibfk_1`
FOREIGN KEY (`username`)
REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `friend`;

CREATE TABLE `friend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_key` varchar (55) DEFAULT NULL,
  `username` varchar (55) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `photo` varchar (200) DEFAULT NULL,

PRIMARY KEY(`id`),
FOREIGN KEY(`user_key`)
REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_key` varchar (55) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `content` varchar (500) DEFAULT NULL,
  `likes` INT DEFAULT 0,

PRIMARY KEY(`id`),
FOREIGN KEY(`user_key`)
REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `conversation`;

CREATE TABLE `conversation` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_key` varchar (55) DEFAULT NULL,
  `user_one` varchar(55) DEFAULT NULL,
  `user_two` varchar(55) DEFAULT NULL,

PRIMARY KEY(`id`),
FOREIGN KEY(`user_key`)
REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `conversation_key` INT NOT NULL,
  `date` varchar(30) DEFAULT NULL,
  `username` varchar(500) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,

PRIMARY KEY(`id`),
FOREIGN KEY(`conversation_key`)
REFERENCES `conversation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
