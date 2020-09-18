-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clients` (
  `idClients` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `adress` VARCHAR(255) NOT NULL,
  `tlf` INT NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `createTime` DATETIME NULL DEFAULT NULL,
  `recommended` BINARY(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idClients`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee` (
  `idEmployee` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idEmployee`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Providers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Providers` (
  `idProviders` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `street` VARCHAR(255) NOT NULL,
  `number` INT UNSIGNED NOT NULL,
  `floor` INT NOT NULL,
  `door` INT NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `CP` INT UNSIGNED NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `tlf` INT NOT NULL,
  `fax` VARCHAR(45) NOT NULL,
  `NIF` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProviders`),
  UNIQUE INDEX `idProviders_UNIQUE` (`idProviders` ASC) VISIBLE,
  UNIQUE INDEX `NIF_UNIQUE` (`NIF` ASC) VISIBLE,
  UNIQUE INDEX `tlf_UNIQUE` (`tlf` ASC) VISIBLE,
  UNIQUE INDEX `fax_UNIQUE` (`fax` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
