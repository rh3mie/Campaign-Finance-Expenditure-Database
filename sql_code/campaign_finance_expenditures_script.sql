-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema campaign_finance_expenditures
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema campaign_finance_expenditures
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `campaign_finance_expenditures` DEFAULT CHARACTER SET utf8 ;
USE `campaign_finance_expenditures` ;

-- -----------------------------------------------------
-- Table `campaign_finance_expenditures`.`addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign_finance_expenditures`.`addresses` (
  `address_id` INT NOT NULL,
  `payee_address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(15) NOT NULL,
  `state` VARCHAR(2) NULL,
  `zipcode` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`address_id`),
  UNIQUE INDEX `address_id_UNIQUE` (`address_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign_finance_expenditures`.`payees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign_finance_expenditures`.`payees` (
  `payee_ID` INT NOT NULL,
  `lname` VARCHAR(20) NULL,
  `fname` VARCHAR(20) NULL,
  `organization` VARCHAR(45) NULL,
  `payee_type` VARCHAR(45) NOT NULL,
  `address_id` INT NOT NULL,
  PRIMARY KEY (`payee_ID`),
  UNIQUE INDEX `payee_ID_UNIQUE` (`payee_ID` ASC) VISIBLE,
  INDEX `fk_payees_addresses1_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `fk_payees_addresses1`
    FOREIGN KEY (`address_id`)
    REFERENCES `campaign_finance_expenditures`.`addresses` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign_finance_expenditures`.`report_types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign_finance_expenditures`.`report_types` (
  `report_type_id` INT NOT NULL,
  `report_filed` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`report_type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign_finance_expenditures`.`expenses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign_finance_expenditures`.`expenses` (
  `expense_id` INT NOT NULL,
  `expense_desc` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`expense_id`),
  UNIQUE INDEX `expense_id_UNIQUE` (`expense_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign_finance_expenditures`.`expenditure_types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign_finance_expenditures`.`expenditure_types` (
  `expenditure_type_id` INT NOT NULL,
  `expenditure_type` VARCHAR(30) NULL,
  PRIMARY KEY (`expenditure_type_id`),
  UNIQUE INDEX `expenditure_id_UNIQUE` (`expenditure_type_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign_finance_expenditures`.`paid_bys`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign_finance_expenditures`.`paid_bys` (
  `paid_by_id` INT NOT NULL,
  `lname` VARCHAR(20) NULL,
  `fname` VARCHAR(20) NULL,
  `organization` VARCHAR(45) NULL,
  PRIMARY KEY (`paid_by_id`),
  UNIQUE INDEX `paid_by_id_UNIQUE` (`paid_by_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign_finance_expenditures`.`payee_paid_by`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign_finance_expenditures`.`payee_paid_by` (
  `payee_id` INT NOT NULL,
  `paid_by_id` INT NOT NULL,
  PRIMARY KEY (`payee_id`, `paid_by_id`),
  INDEX `fk_payee_paid_by_paid_bys1_idx` (`paid_by_id` ASC) VISIBLE,
  CONSTRAINT `fk_payee_paid_by_payees1`
    FOREIGN KEY (`payee_id`)
    REFERENCES `campaign_finance_expenditures`.`payees` (`payee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_payee_paid_by_paid_bys1`
    FOREIGN KEY (`paid_by_id`)
    REFERENCES `campaign_finance_expenditures`.`paid_bys` (`paid_by_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign_finance_expenditures`.`payments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign_finance_expenditures`.`payments` (
  `payment_id` INT NOT NULL,
  `payment_amount` DECIMAL(9,2) NOT NULL,
  `payment_date` DATE NOT NULL,
  `report_outside_texas` BINARY NULL,
  `political_obligation` BINARY NULL,
  `reimbursement_intended` BINARY NULL,
  `correction` BINARY NULL,
  `date_reported` DATE NOT NULL,
  `transaction_id` INT NOT NULL,
  `payee_id` INT NOT NULL,
  `paid_by_id` INT NOT NULL,
  `expenditure_type_id` INT NOT NULL,
  `expense_id` INT NOT NULL,
  `report_type_id` INT NOT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE INDEX `payment_id_UNIQUE` (`payment_id` ASC) VISIBLE,
  INDEX `fk_payments_report_types1_idx` (`report_type_id` ASC) VISIBLE,
  INDEX `fk_payments_expenses1_idx` (`expense_id` ASC) VISIBLE,
  INDEX `fk_payments_expenditure_types1_idx` (`expenditure_type_id` ASC) VISIBLE,
  INDEX `fk_payments_payee_paid_by1_idx` (`payee_id` ASC, `paid_by_id` ASC) VISIBLE,
  CONSTRAINT `fk_payments_report_types1`
    FOREIGN KEY (`report_type_id`)
    REFERENCES `campaign_finance_expenditures`.`report_types` (`report_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_payments_expenses1`
    FOREIGN KEY (`expense_id`)
    REFERENCES `campaign_finance_expenditures`.`expenses` (`expense_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_payments_expenditure_types1`
    FOREIGN KEY (`expenditure_type_id`)
    REFERENCES `campaign_finance_expenditures`.`expenditure_types` (`expenditure_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_payments_payee_paid_by1`
    FOREIGN KEY (`payee_id` , `paid_by_id`)
    REFERENCES `campaign_finance_expenditures`.`payee_paid_by` (`payee_id` , `paid_by_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `campaign_finance_expenditures`.`report_websites`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `campaign_finance_expenditures`.`report_websites` (
  `report_website_id` INT NOT NULL,
  `view_report` VARCHAR(45) NOT NULL,
  `report_type_id` INT NOT NULL,
  PRIMARY KEY (`report_website_id`),
  INDEX `fk_report_websites_report_types1_idx` (`report_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_report_websites_report_types1`
    FOREIGN KEY (`report_type_id`)
    REFERENCES `campaign_finance_expenditures`.`report_types` (`report_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
