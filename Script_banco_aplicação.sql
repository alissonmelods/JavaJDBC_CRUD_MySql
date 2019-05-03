-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dbloja
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbloja
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbloja` DEFAULT CHARACTER SET utf8 ;
USE `dbloja` ;

-- -----------------------------------------------------
-- Table `dbloja`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbloja`.`categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbloja`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbloja`.`produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(100) NULL,
  `qtd` INT NULL,
  `valor` DOUBLE NULL,
  `categoria_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produto_categoria_idx` (`categoria_id` ASC),
  CONSTRAINT `fk_produto_categoria`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `dbloja`.`categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;