drop DATABASE IF EXISTS housingDB;

create database housingDB;

USE housingDB;

DROP TABLE IF EXISTS Invoice;
DROP TABLE IF EXISTS Lease;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Advisor;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Hall;
DROP TABLE IF EXISTS Flat;
DROP TABLE IF EXISTS Inspection;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Enrollment;
DROP TABLE IF EXISTS NextOfKin;
DROP TABLE IF EXISTS ParkingLot;
DROP TABLE IF EXISTS Vehicle;

Create Table Advisor (

advisorNo smallint Not Null, 
fName varChar(50), 
lName varChar(50) Not Null, 
position VarChar(30) Not Null,
deptName VarChar(50),
internalPhone VarChar(15),
email VarChar(65) Not Null,
roomNo VarChar(10),

Primary Key (advisorNo)

);

CREATE TABLE Student (

muNo Integer Not Null,
advisorNo smallint Not Null,
fName varChar(50), 
lName varChar(50) Not Null, 
street varChar(50) Not Null,
city varChar(100) Not Null, 
zipCode int(5) Not Null,
mobileNo varChar(20), 
email varChar(65) Not Null,
DOB DATE Not Null, 
gender Char(1),
category varChar(10), 
nationality Char(3), 
specialNeeds varChar(255), 
additionalComments varChar(255), 
currentStatus Char(7),
major varChar(25), 
minor varChar(25),

Primary Key (muNo), 
Foreign Key (advisorNo) References Advisor (advisorNo)

);


Create Table Hall(

hallNo tinyint Not Null, 
managerNo integer Not Null, 
name VarChar(20) Not Null, 
street varChar(50) Not Null,
city varChar(100) Not Null, 
zipCode smallint Not Null,
phone varChar(20), 

Primary Key (hallNo) 

);

Create Table Flat(

flatNo smallint Not Null,
street varChar(50) Not Null,
city varChar(100) Not Null, 
zipCode smallint Not Null,
roomsAvailable tinyint Not Null,

Primary Key (flatNo)

);

Create Table Room(

placeNo integer Not Null,
flatNo smallint, 
hallNo tinyint, 
roomNo smallint Not Null,
monthlyRate Decimal(13,2) Not Null,

Primary Key (placeNo), 
Foreign Key (flatNo) References Flat (flatNo), 
Foreign Key (hallNo) References Hall (hallNo)

);

Create Table Lease(

leaseNo Integer Not Null,
placeNo Integer Not Null, 
muNo Integer Not Null,
duration tinyInt Not Null,
entryDate Date Not Null,
exitDate Date Not Null,

Primary Key (leaseNo),
Foreign Key (placeNo) References Room (placeNo),
Foreign Key (muNo) References Student (muNo)

);

Create Table Invoice (

invoiceNo Integer Not Null,
leaseNo Integer Not Null,
semester VarChar(15) Not Null,
paymentDue decimal(13, 2) not null,
datePaid DATE,
dateReminder1 Date,
dateReminder2 Date,
methodOfPayment VarChar(10),

Primary Key (invoiceNo),
Foreign Key (leaseNo) References Lease (leaseNo)

);

Create Table Staff(

staffNo Integer Not Null,
hallNo tinyInt,
fName varChar(50), 
lName varChar(50) Not Null, 
street varChar(50),
city varChar(100), 
zipCode smallint, 
email varChar(65) Not Null,
DOB DATE Not Null, 
gender Char(1),
position varChar(15) Not Null,

Primary Key (staffNo),
Foreign Key (hallNo) References Hall (hallNo)

);

Alter Table Hall 
Add Foreign Key (managerNo) References Staff (staffNo);


Create Table Inspection(

inspectionNo Integer Not Null,
staffNo Integer Not Null,
flatNo smallint Not Null,
inspectionDate Date Not Null,
roomCondition varChar(16) Not Null,
comments varChar(255),

Primary Key (inspectionNo),
Foreign Key (staffNo) References Staff (staffNo),
Foreign Key (flatNo) References Flat (flatNo)

);

Create Table Course(

courseNo smallint Not Null,
title VarChar(50) Not null,
instructor VarChar(100) Not null,
instructorPhone VarChar(20),
instructorEmail VarChar(65) Not null,
roomNo VarChar(10),
deptName VarChar(50),

Primary Key (courseNo)

);

Create Table Enrollment(

enrollmentNo Integer Not Null,
semester varChar(15) Not null,
courseNo smallint not null,
studentNo integer not null,

Primary Key (enrollmentNo),
Foreign Key (courseNo) References Course (courseNo),
Foreign Key (studentNo) References Student (muNo)

);

Create Table NextOfKin(

nextOfKinNo Integer not null,
muNo integer not null,
name varchar(50) not null,
relationship varchar(20) not null,
street varChar(50),
city varChar(100), 
zipCode smallint, 
phone varchar(20),

Primary Key (nextOfKinNo),
Foreign Key (muNo) References Student (muNo)

);

Create Table ParkingLot(

lotNo smallint not null,
lotName varChar(30) Not null,
street varChar(50) Not null,
city varChar(100) Not null, 
zipCode smallint Not null,
maxSpaces smallint not null,
spacesAvailable smallint not null,

Primary Key (lotNo)

);

Create Table Vehicle(

VIN char(17) not null,
muNo Integer not null,
lotNo smallint not null,
plateNo Char(8) Not null,
color varChar(16),
manufacturer varChar(20),
brand varChar(20),

Primary Key (VIN),
Foreign Key (muNo) References Student (muNo),
Foreign Key (lotNo) References ParkingLot (lotNo)

);