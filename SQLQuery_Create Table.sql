
CREATE TABLE DimCustomer(
	CustomerId int NOT NULL PRIMARY KEY,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	Age int NOT NULL,
	Gender varchar(50) NOT NULL,
	City varchar(50) NOT NULL,
	NoHp varchar(50) NOT NULL,
	CustomerName Varchar(255)
);

CREATE TABLE DimProduct(
	ProductId int NOT NULL PRIMARY KEY,
	ProductName varchar (255) NOT NULL,
	ProductCategory varchar (255) NOT NULL,
	ProductUnitPrice int NULL
);

CREATE TABLE DimStatusOrder(
	StatusId int NOT NULL PRIMARY KEY,
	StatusOrder varchar(50) NOT NULL,
	StatusOrderDesc varchar(50) NOT NULL
);


CREATE TABLE FactSalesOrder(
	OrderId int NOT NULL PRIMARY KEY,
	CustomerId int NOT NULL,
	ProductId int NOT NULL,
	Quantity int NOT NULL,
	Amount int NOT NULL,
	StatusId int NOT NULL,
	OrderDate date NOT NULL,
	FOREIGN KEY (CustomerId) REFERENCES DimCustomer(CustomerId),
	FOREIGN KEY (ProductId) REFERENCES DimProduct(ProductId),
	FOREIGN KEY (StatusId) REFERENCES DimStatusOrder(StatusId)
);




