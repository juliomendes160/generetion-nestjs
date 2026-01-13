-- mysql -u root -proot < sql/database.sql

-- mysql -u root -proot
-- system cd
-- source sql/database.sql
-- exit

DROP DATABASE IF EXISTS db_blogpessoal;

CREATE DATABASE IF NOT EXISTS db_blogpessoal;

USE db_blogpessoal;

CREATE TABLE IF NOT EXISTS `tb_postagens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `texto` varchar(1000) NOT NULL,
  `data` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

INSERT INTO tb_postagens (data, texto, titulo) 
VALUES (current_timestamp(), 'Texto da postagem 01', 'Postagem 01');

INSERT INTO tb_postagens (data, texto, titulo) 
VALUES (current_timestamp(), 'Texto da postagem 02', 'Postagem 02');

SELECT * FROM tb_postagens;

SHOW DATABASES;

SELECT DATABASE();