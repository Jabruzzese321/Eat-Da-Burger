DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE `burgers` (
  `id` INT( 11 ) AUTO_INCREMENT NOT NULL,
  `burger_name` VARCHAR( 255) NOT NULL,
  `devoured` BOOLEAN NOT NULL DEFAULT 0,
  `date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  PRIMARY KEY ( `id` ) );

INSERT INTO burgers (burger_name, devoured) VALUES ('BBQ Burger', 0);
INSERT INTO burgers (burger_name, devoured) VALUES ('Hawaiian Burger', 1);
INSERT INTO burgers (burger_name, devoured) VALUES ('Cheeseburger', 1);
INSERT INTO burgers (burger_name, devoured) VALUES ('Turkey Burger', 0);
