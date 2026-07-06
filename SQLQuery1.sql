use DM
Create table Contact(
ContactID int primary key identity (1,1),
ContactName varchar(50),
ContactEmail varchar(50),
ContactMsg varchar(max),
)

Create table Store(
StoreID int primary key identity (1,1),
StoreName varchar(50),
StoreOwner varchar(50),
StoreGender varchar(10),
StoreAddress nvarchar(max),
StorePhNumber char(12),
StoreJD date,
StoreAadhar nvarchar(12),
)

Create table Animal(
AnimalID int primary key identity (1,1),
AnimalName nvarchar(50),
AnimalPrice float,
AnimalType varchar(50),
AnimalBreed varchar(50),
AnimalQty int,
)

Create table ForgetPassword(
FPID int primary key identity (1,1),
FPemail nvarchar(50),
)

create table UserLog(
ULID int primary key identity (1,1),
ULFname varchar(50),
ULLname varchar(50),
ULUserName nvarchar(50),
ULEmail nvarchar(50),
ULPassword varbinary(256),
ULComPassword varbinary(256),
)

create table Franchise(
FrID int primary key identity (1,1),
FrName varchar(50),
FrAddress varchar(50),
FrNumber bigint,
)

create table ProOrder(
OrderID int primary key identity (1,1),
OrderProName varchar(50),
OrderQty int,
OrderAmt float,
)

create table Payment(
PaymentID int primary key identity (1,1),
PaymentCardNumber nvarchar(50),
PaymentHolder varchar(50),
PaymentExpDate date,
PaymentCVV int,
PaymentBillAddress nvarchar(max),
)

create table Enquiry(
EnquiryID int primary key identity (1,1),
EnquiryName varchar(50),
EnquiryEmail nvarchar(50),
EnquiryPhNumber nvarchar(15),
)

Create table Delivery(
DelID int primary key identity (1,1),
DelName varchar(50),
DelQty float,
DelAmt money,
DelDate date,
)