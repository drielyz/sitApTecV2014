CREATE DATABASE IF NOT EXISTS crud;
 
USE crud;
 
CREATE TABLE IF NOT EXISTS pessoas (
    id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    nome varchar(40) NOT NULL,
    email varchar(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;