-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema aegis
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `aegis` ;

-- -----------------------------------------------------
-- Schema aegis
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `aegis` DEFAULT CHARACTER SET utf8 ;
USE `aegis` ;

-- -----------------------------------------------------
-- Table `aegis`.`earthquake_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `aegis`.`earthquake_data` ;

CREATE TABLE IF NOT EXISTS `aegis`.`earthquake_data` (
  `earthquake_id` INT NOT NULL AUTO_INCREMENT,
  `latitude` FLOAT NOT NULL,
  `longitude` FLOAT NOT NULL,
  `depth` INT NOT NULL,
  `magnitude` FLOAT NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `time` VARCHAR(45) NOT NULL,
  `location` TEXT(100) NOT NULL,
  PRIMARY KEY (`earthquake_id`),
  UNIQUE INDEX `earthquake_id_UNIQUE` (`earthquake_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `aegis`.`typhoon_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `aegis`.`typhoon_data` ;

CREATE TABLE IF NOT EXISTS `aegis`.`typhoon_data` (
  `typhoon_id` INT NOT NULL AUTO_INCREMENT,
  `serial_num` VARCHAR(45) NOT NULL,
  `season` VARCHAR(45) NOT NULL,
  `number` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `nature` VARCHAR(45) NOT NULL,
  `latitude` FLOAT NOT NULL,
  `longitude` FLOAT NOT NULL,
  `wind_wmo` FLOAT NOT NULL,
  `pressure_wmo` FLOAT NOT NULL,
  PRIMARY KEY (`typhoon_id`),
  UNIQUE INDEX `typhoon_id_UNIQUE` (`typhoon_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `aegis`.`flood_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `aegis`.`flood_data` ;

CREATE TABLE IF NOT EXISTS `aegis`.`flood_data` (
  `flood_id` INT NOT NULL AUTO_INCREMENT,
  `latitude` FLOAT NOT NULL,
  `longitude` FLOAT NOT NULL,
  `flood_height` INT NOT NULL,
  `elevation` FLOAT NOT NULL,
  `precipitation` FLOAT NOT NULL,
  PRIMARY KEY (`flood_id`),
  UNIQUE INDEX `flood_id_UNIQUE` (`flood_id` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
