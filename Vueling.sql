-- MySQL Workbench Synchronization
-- Generated: 2020-10-20 20:09
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Mariajo

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE TABLE IF NOT EXISTS `vueling`.`avions` (
  `id_avió` INT(10) UNSIGNED NOT NULL COMMENT 'Aquí incloem l\'id únic de cada avió',
  `capacitat` INT(11) NULL DEFAULT NULL COMMENT 'Aquí incloem el nombre de seients',
  `model` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Aquí incloem el model de l\'avió',
  PRIMARY KEY (`id_avió`),
  INDEX `capacitat` (`capacitat` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `vueling`.`seients` (
  `id-seient` INT(10) UNSIGNED NOT NULL COMMENT 'Aquest és l\'id del seient',
  `taula-avions_id_avió` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id-seient`, `taula-avions_id_avió`),
  INDEX `fk_taula-seients_taula-avions_idx` (`taula-avions_id_avió` ASC) VISIBLE,
  CONSTRAINT `fk_taula-seients_taula-avions`
    FOREIGN KEY (`taula-avions_id_avió`)
    REFERENCES `vueling`.`avions` (`id_avió`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
