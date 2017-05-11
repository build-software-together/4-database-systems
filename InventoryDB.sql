// Database Name: InventoryDB

// Item Table
CREATE TABLE  `InventoryDB`.`Item` (
`Name` VARCHAR( 50 ) NOT NULL ,
`Manufacturer` VARCHAR( 40 ) NOT NULL ,
`Quantity` INT NOT NULL ,
`UnitPrice` DOUBLE NOT NULL
) ENGINE = MYISAM ;

// SoldQuantity Table
CREATE TABLE  `InventoryDB`.`SoldItem` (
`Name` VARCHAR( 50 ) NOT NULL ,
`SoldQuantity` INT( 20 ) NOT NULL
) ENGINE = MYISAM ;
