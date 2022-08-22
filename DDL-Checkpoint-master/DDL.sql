/*Tables Creation*/

CREATE TABLE Customer (
	Customer_id (VARCHAR2(20)) CONSTRAINT pr_key PRIMARY KEY,

	Customer_Name (VARCHAR2(20)) CONSTRAINT n_n NOT NULL,
	Customer_tel NUMBER NULL,
);
CREATE TABLE Product (
	Product_id (VARCHAR2(20)) CONSTRAINT pr_key PRIMARY KEY,
	Product_Name (VARCHAR2(20)) CONSTRAINT n_n  NOT NULL,
	Price NUMBER CONSTRAINT price_value CHECK (Price > 0),

);
CREATE TABLE Orders ( 
Quantity NUMBER ,
Total_amount NUMBER
CONSTRAINT fk_Orders_Customer FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id) ,
CONSTRAINT fk_Orders_Product FOREIGN KEY (Product_id) REFERENCES Product (Product_id) 
) ;



/*Tables Additions*/


ALTER TABLE PRODUCT ADD Category (VARCHAR2(20));
ALTER TABLE ORDERS ADD OrderDate (DATE) DEFAULT SYSDATE();