-- -----------------------------------------------------
-- Table `sitap`.`Usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sitap`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  `senha` VARCHAR(45) NOT NULL ,
  `sexo` TINYINT(1)  NOT NULL ,
  `cidade` VARCHAR(45) NOT NULL ,
  `estado` VARCHAR(45) NOT NULL ,
  `endereco` VARCHAR(45) NOT NULL ,
  `cep` VARCHAR(9) NOT NULL ,
  `foto` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idUsuario`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sitap`.`ArtigoId`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sitap`.`ArtigoId` (
  `idcategoria` INT NOT NULL ,
  `estilo` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idcategoria`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sitap`.`Artigo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sitap`.`Artigo` (
  `idartigo` INT NOT NULL AUTO_INCREMENT ,
  `idUsuario` INT NOT NULL ,
  `titulo` VARCHAR(45) NULL ,
  `corpo` TEXT NULL ,
  `like` INT NULL COMMENT 'Quantidades de curtidas que um artigo recebe.' ,
  `data` VARCHAR(45) NULL ,
  PRIMARY KEY (`idartigo`) ,
  INDEX `fk_Artigo_categoria1` (`idUsuario` ASC) ,
  CONSTRAINT `fk_Artigo_categoria1`
    FOREIGN KEY (`idUsuario` )
    REFERENCES `sitap`.`ArtigoId` (`idcategoria` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sitap`.`Foto`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sitap`.`Foto` (
  `idFoto` INT NOT NULL AUTO_INCREMENT ,
  `idartigo` INT NOT NULL ,
  `arquivo` VARCHAR(45) NULL ,
  PRIMARY KEY (`idFoto`) ,
  INDEX `fk_Fotos_Artigo1` (`idartigo` ASC) ,
  CONSTRAINT `fk_Fotos_Artigo1`
    FOREIGN KEY (`idartigo` )
    REFERENCES `sitap`.`Artigo` (`idartigo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sitap`.`categoria`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sitap`.`categoria` (
  `idcategoria` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NULL ,
  `descricao` VARCHAR(100) NULL ,
  PRIMARY KEY (`idcategoria`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sitap`.`Comentario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sitap`.`Comentario` (
  `idcomentario` INT NOT NULL AUTO_INCREMENT ,
  `idUsuario` INT NOT NULL ,
  `idartigo` INT NOT NULL ,
  `corpo` VARCHAR(45) NULL ,
  `data` DATETIME NULL ,
  INDEX `fk_Usuario_has_Artigo_Artigo1` (`idartigo` ASC) ,
  INDEX `fk_Usuario_has_Artigo_Usuario1` (`idUsuario` ASC) ,
  PRIMARY KEY (`idcomentario`) ,
  CONSTRAINT `fk_Usuario_has_Artigo_Usuario1`
    FOREIGN KEY (`idUsuario` )
    REFERENCES `sitap`.`Usuario` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_has_Artigo_Artigo1`
    FOREIGN KEY (`idartigo` )
    REFERENCES `sitap`.`Artigo` (`idartigo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sitap`.`categoria_has_Artigo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `sitap`.`categoria_has_Artigo` (
  `idcategoria` INT NOT NULL ,
  `idartigo` INT NOT NULL ,
  PRIMARY KEY (`idcategoria`, `idartigo`) ,
  INDEX `fk_categoria_has_Artigo_Artigo1` (`idartigo` ASC) ,
  INDEX `fk_categoria_has_Artigo_categoria1` (`idcategoria` ASC) ,
  CONSTRAINT `fk_categoria_has_Artigo_categoria1`
    FOREIGN KEY (`idcategoria` )
    REFERENCES `sitap`.`categoria` (`idcategoria` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_categoria_has_Artigo_Artigo1`
    FOREIGN KEY (`idartigo` )
    REFERENCES `sitap`.`Artigo` (`idartigo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `sitap`.`Artigo`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`Artigo` (`idartigo`, `idUsuario`, `titulo`, `corpo`, `like`, `data`) VALUES (1, NULL, 'A pizza', '<p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>', NULL, NULL);

COMMIT;

-- -----------------------------------------------------
-- Data for table `sitap`.`Foto`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`Foto` (`idFoto`, `idartigo`, `arquivo`) VALUES (1, 1, 'http://lorempizza.com/i/514/300');
INSERT INTO `sitap`.`Foto` (`idFoto`, `idartigo`, `arquivo`) VALUES (2, 2, 'http://baconmockup.com/300/200');

COMMIT;

-- -----------------------------------------------------
-- Data for table `sitap`.`Comentario`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`Comentario` (`idcomentario`, `idUsuario`, `idartigo`, `corpo`, `data`) VALUES (1, 0, 1, 'lalala', '2014-10-27');

COMMIT;
