########################
### CRUD Operations ####
########################
// Create  - Done
// Retrive - Done
// Update  - 
// Delete  - 
########################


// Course : CSE301, DatabaseSystems
// Lab  : 01
// Dated: 11-05-2017



###################################
### Database Name: InventoryDB ####
###################################

####################
### Create Table ###
####################

// Item
CREATE TABLE  `InventoryDB`.`Item` (
`Name` VARCHAR( 50 ) NOT NULL ,
`Manufacturer` VARCHAR( 40 ) NOT NULL ,
`Quantity` INT NOT NULL ,
`UnitPrice` DOUBLE NOT NULL
) ENGINE = MYISAM ;

// SoldQuantity
CREATE TABLE  `InventoryDB`.`SoldItem` (
`Name` VARCHAR( 50 ) NOT NULL ,
`SoldQuantity` INT( 20 ) NOT NULL
) ENGINE = MYISAM ;


###################
### Insert Data ###
###################
// Item
insert into item values ('Potato', 'Bombay Sweets', 20, 15.00);
insert into item values ('Cocacola 1 Ltr', 'Coca Cola', 50, 35);
insert into item values ('Ice-cream 1.5 Ltr', 'Igloo', 10, 150);

// SoldItem
insert into solditem values ('Potato', 2);
insert into solditem values ('Cocacola 1 Ltr', 2);

#####################
### Retrive Data ####
#####################
select <<column_name>>
from <<table_name>>
where <<condition>>

// examples
select * 
from item
where quantity > 10;


### Multi-Realation Queries ##
##############################

// ex: ...retrive/display data...all matched columns : natural join
select *
from item, solditem
where item.name = solditem.name;


// ex: ...retrive/display data...required number of columns
select item.name, item.unitprice, solditem.soldquantity
from item, solditem
where item.name = solditem.name

// ex: ...retrive/display data...required number of columns
select item.name, item.unitprice, solditem.soldquantity, item.unitprice*solditem.soldquantity
from item, solditem
where item.name = solditem.name


