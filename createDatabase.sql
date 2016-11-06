drop table if exists patientRecord;
drop table if exists physician;
drop table if exists appointments;
drop table if exists diagnoses;
drop table if exists prescriptions;
drop table if exists symptoms;
drop table if exists billingInfo;
drop table if exists loginInfo;

drop view if exists patient;
drop view if exists physician;

--add zipcodes table

--need to add DOB and email
create table patientRecord(
	patientID int primary key,
	lastName varchar(20),
	firstName varchar(20),
	--DOB date,
	address varchar(50),
	city varchar(25),
	state varchar(25),
	zip int,
	phoneNumber varchar(15),
	--email varchar(75),
	accountBalance decimal(2),
	attendingPhysicianID int,
	foreign key (attendingPhysicianID) references physician(physicianID) on update cascade on delete restrict) 
	engine=innodb;

create table billingInfo(
	patientID int,
	policyNumber int,
	coPay decimal(2),
	billAmount decimal(2),
	issueDate date,
	dueDate date,
	received boolean,
	primary key (patientID, policyNumber, issueDate),
	foreign key (patientID) references patientRecord(patientID) on update cascade on delete restrict)
	engine=innodb;

create table physician(
	physicianID int primary key,
	lastName varchar(20),
	firstName varchar(20),
	address varchar(50),
	city varchar(25),
	state varchar(25),
	zip int,
	businessPhoneNumber varchar(15),
	homePhoneNumber varchar(15))
	engine=innodb;

create table appointments(
	patientID int,
	physicianID int,
	scheduledDate date,
	scheduledTime time,
	diagnosisID int,
	primary key(patientID, physicianID, scheduledDate, scheduledTime),
	foreign key(patientID) references patientRecord(patientID) on update cascade on delete restrict,
	foreign key(physicianID) references physician(physicianID) on update cascade on delete restrict,
	foreign key(diagnosisID) references diagnoses(diagnosisID) on update cascade on delete restrict)
	engine=innodb;

create table prescriptions(
        prescriptionID int primary key,
        prescriptionName varchar(50))
        engine=innodb;

create table symptoms(
        symptomID int primary key,
        symptomName varchar(50))
        engine=innodb;

create table diagnoses(
	diagnosisID int primary key,
	diagnosisName varchar(50),
	associatedSymptomID int,
	associatedPrescriptionID int,
	foreign key(associatedSymptomID) references symptoms(symptomID) on update cascade on delete restrict,
	foreign key(associatedPrescriptionID) references prescriptions(prescriptionID) on update cascade on delete restrict)
	engine=innodb;

create table usernameInfo(
	username varchar(20) primary key,
	userType boolean)
	engine=innodb;


create table patientLoginInfo(
	username varchar(20),
	password varchar(20),
	patientID int,
	primary key(username, password, patientID),
	foreign key(patientID) references patientRecord(patientID) on update cascade on delete restrict)
	engine=innodb;


create table adminLoginInfo(
	username varchar(20),
	password varchar(20),
	physicianID int,
	primary key(username, password, physicianID),
	foreign key(physicianID) references physician(physicianID) on update cascade on delete restrict)
	engine=innodb;