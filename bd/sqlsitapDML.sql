--------------------------------------------------------
-- Data for table `sitap`.`Artigo`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`Artigo` (`idartigo`, `categoria_idcategoria`, `titulo`, `corpo`, `like`, `data`) VALUES (1, NULL, 'A pizza', '<p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>', NULL, NULL);
INSERT INTO `sitap`.`Artigo` (`idartigo`, `categoria_idcategoria`, `titulo`, `corpo`, `like`, `data`) VALUES (2, NULL, 'O Bacon', '<p>Bacon ipsum dolor amet doner pork chop ham brisket. Bacon meatball meatloaf hamburger. Porchetta turkey leberkas, ball tip fatback sirloin beef ribs. Salami shoulder drumstick, chuck capicola filet mignon shankle ham ground round tri-tip frankfurter pork jowl.</p>', NULL, NULL);

COMMIT;

-- -----------------------------------------------------
-- Data for table `sitap`.`Foto`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`Foto` (`idFoto`, `Artigo_idartigo`, `arquivo`) VALUES (1, 1, 'http://lorempizza.com/i/380/240');
INSERT INTO `sitap`.`Foto` (`idFoto`, `Artigo_idartigo`, `arquivo`) VALUES (2, 2, 'http://baconmockup.com/300/200');

COMMIT;

-- -----------------------------------------------------
-- Data for table `sitap`.`categoria`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`categoria` (`idcategoria`, `nome`, `descricao`) VALUES (1, 'Pizza', 'Categoria que fala sobre pizzas');
INSERT INTO `sitap`.`categoria` (`idcategoria`, `nome`, `descricao`) VALUES (2, 'Bacon', 'Categoria que fala de Bacon');

COMMIT;

-- -----------------------------------------------------
-- Data for table `sitap`.`Comentario`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`Comentario` (`idUsuario`, `idartigo`, `corpo`, `data`) VALUES (1, 0, 'Alo ha', '2014-10-10');
INSERT INTO `sitap`.`Comentario` (`idUsuario`, `idartigo`, `corpo`, `data`) VALUES (2, 3, 'Alo ha', '2014-10-01');

COMMIT;
