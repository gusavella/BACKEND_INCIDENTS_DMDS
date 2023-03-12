-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DMDS
-- -----------------------------------------------------
drop SCHEMA IF EXISTS `DMDS`;
-- -----------------------------------------------------
-- Schema DMDS
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DMDS` DEFAULT CHARACTER SET utf8 ;
USE `DMDS` ;

-- -----------------------------------------------------
-- Table `DMDS`.`Departament`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`Departament` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) );


-- -----------------------------------------------------
-- Table `DMDS`.`City`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`City` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `id_departament` INT NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) ,
  INDEX `id_departament_idx` (`id_departament` ASC) ,
  CONSTRAINT `id_departament`
    FOREIGN KEY (`id_departament`)
    REFERENCES `DMDS`.`Departament` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `DMDS`.`Local`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`Local` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `id_city` INT NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) ,
  INDEX `id_local_idx` (`id_city` ASC) ,
  CONSTRAINT `id_local`
    FOREIGN KEY (`id_city`)
    REFERENCES `DMDS`.`City` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `DMDS`.`Role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`Role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) );


-- -----------------------------------------------------
-- Table `DMDS`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `names` VARCHAR(100) NOT NULL,
  `surnames` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(50) NULL,
  `id_local` INT NOT NULL,
  `id_role` INT NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) ,
  INDEX `id_local1_idx` (`id` ASC, `id_local` ASC) ,
  INDEX `id_role_idx` (`id_role` ASC) ,
  CONSTRAINT `id_local1`
    FOREIGN KEY (`id_local`)
    REFERENCES `DMDS`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_role`
    FOREIGN KEY (`id_role`)
    REFERENCES `DMDS`.`Role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);




-- -----------------------------------------------------
-- Table `DMDS`.`Mark`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`Mark` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(500) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC));


-- -----------------------------------------------------
-- Table `DMDS`.`Model`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`Model` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(500) NOT NULL,
    `id_mark` INT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  INDEX `Model_mark_idx` (`id_mark` ASC),
  CONSTRAINT `Model_mark`
    FOREIGN KEY (`id_mark`)
    REFERENCES `DMDS`.`Mark` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



-- -----------------------------------------------------
-- Table `DMDS`.`Machine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`Machine` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `serial` VARCHAR(45) NOT NULL,
  `id_model` INT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) ,
  UNIQUE INDEX `serial_UNIQUE` (`serial` ASC) ,
  INDEX `id_model_idx` (`id_model` ASC) ,
  CONSTRAINT `id_model`
    FOREIGN KEY (`id_model`)
    REFERENCES `DMDS`.`Model` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `DMDS`.`Local_machine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`Local_machine` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_local` INT NOT NULL,
  `id_machine` INT NOT NULL,
  `internal_number` INT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  INDEX `id_local_idx` (`id_local` ASC) ,
  INDEX `id_machine_idx` (`id_machine` ASC) ,
  CONSTRAINT `id_local_machine_local`
    FOREIGN KEY (`id_local`)
    REFERENCES `DMDS`.`Local` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_locla_machine_machine`
    FOREIGN KEY (`id_machine`)
    REFERENCES `DMDS`.`Machine` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `DMDS`.`repair_state`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`repair_state` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC));


-- -----------------------------------------------------
-- Table `DMDS`.`repair_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`repair_category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC));


-- -----------------------------------------------------
-- Table `DMDS`.`Repair`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`Repair` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_machine` INT NOT NULL,
  `id_repair_category` INT NOT NULL,
  `id_repair_state` INT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  INDEX `id_machine_idx` (`id_machine` ASC) ,
  INDEX `id_repair_state_idx` (`id_repair_state` ASC) ,
  INDEX `id_repair_category_idx` (`id_repair_category` ASC) ,
  CONSTRAINT `id_machine`
    FOREIGN KEY (`id_machine`)
    REFERENCES `DMDS`.`Machine` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_repair_state`
    FOREIGN KEY (`id_repair_state`)
    REFERENCES `DMDS`.`repair_state` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_repair_category`
    FOREIGN KEY (`id_repair_category`)
    REFERENCES `DMDS`.`repair_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `DMDS`.`User_repair`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`User_repair` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NOT NULL,
  `id_repair` INT NOT NULL,
  `observation` VARCHAR(500) NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  INDEX `id_user_idx` (`id_user` ASC) ,
  INDEX `id_repair_idx` (`id_repair` ASC) ,
  CONSTRAINT `id_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `DMDS`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_repair`
    FOREIGN KEY (`id_repair`)
    REFERENCES `DMDS`.`Repair` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `DMDS`.`Spare_part`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`Spare_part` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(500) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) );


-- -----------------------------------------------------
-- Table `DMDS`.`Repair_Spare_part`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DMDS`.`Repair_Spare_part` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `quantity` INT NOT NULL,
  `id_repair` INT NOT NULL,
  `id_spare_part` INT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `delete_time` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  INDEX `id_repair_idx` (`id_repair` ASC) ,
  INDEX `id_spare_part_idx` (`id_spare_part` ASC) ,
  CONSTRAINT `id_repair_spare_part_repair`
    FOREIGN KEY (`id_repair`)
    REFERENCES `DMDS`.`Repair` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_repair_spare_part_spare_part`
    FOREIGN KEY (`id_spare_part`)
    REFERENCES `DMDS`.`Spare_part` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
