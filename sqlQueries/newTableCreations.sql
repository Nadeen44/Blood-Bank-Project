use BloodBankDB

create table People(
P_ID int identity,
PName varchar(50) not null,
PGender varchar(50) not null,
PBlood varchar(5) not null,
PBirthDate date not null,
P_Age as (year(getdate()) - year(PBirthDate)),
PPhone varchar(50) not null,
PCity VarChar(50) not null, 
PType VarChar(5) not null
constraint PeoplePK primary key(P_ID),
constraint PGenderCheck check(PGender in ('Male', 'Female')),
constraint PTypeCheck check(PType in ('D', 'P')), --0 for patients and 1 for Donors
constraint PBloodCheck check(PBlood in ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'))
)



-- create Donoations History Table
create table Donations(
D_ID int not null, 
D_Date date not null
constraint IDforeign foreign key(D_ID) references People(P_ID)
	on delete cascade on update cascade,
constraint PrimaryKey primary key(D_ID, D_Date)
)


-- create Transfers History Table
create table Transfers(
P_ID int not null, 
P_Date date not null
constraint IDforeign1 foreign key(P_ID) references People(P_ID)
	on delete cascade on update cascade
constraint PrimaryKey1 primary key(P_ID, P_Date)
)


-- Creating Bloods table
create table Bloods(
BGroup varchar(5) not null primary key,
BCounts int not null default 0
)