ALTER TABLE `clients` DROP COLUMN `secondPhoneNumber`;
ALTER TABLE `clients` CHANGE `firstPhoneNumber` `phoneNumber` INT(10);
ALTER TABLE `clients` MODIFY `phoneNumber` VARCHAR(10); 
ALTER TABLE `clients` ADD `zipCode` VARCHAR(255); 
ALTER TABLE `clients` ADD `city` VARCHAR(255); 