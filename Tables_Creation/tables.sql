
create table Office_Manager
(
	ID int not null identity(1,1),
	firstname varchar(40),
	lastname varchar(50),
	o_password varchar(50),
	primary key(ID)
)

create table central_office(
	ID int not null identity(1,1),
	office_mager_username varchar(10),
	Office_manager_ID int not null,
	c_name varchar(40) not null,
	city varchar(40) not null,
	street varchar(40) not null,
	primary key(ID),
	foreign key(Office_manager_ID) references Office_Manager(ID)
)


create table customer_club(
	ID int not null identity(1,1),
	central_office_ID int not null,
	c_name varchar(50) not null,
	member_count int default 0,
	primary key(ID),
	foreign key(central_office_ID) references central_office(ID)
)





create table customer
(
	ID int not null identity(1,1),
	firstname varchar(40) not null default 'unknown',
	lastname varchar(50) not null default 'unknown',
	c_password varchar(50) not null,
	primary key(ID)
)

create table Membership (
	customer_ID int not null,
	customer_club_ID int not null,
	primary key(customer_ID,CUSTOMER_CLUB_ID),
	foreign key(customer_ID) references customer(ID),
	foreign key(customer_club_ID) references customer_club(ID),
)

create table Branch_manager(
	ID int not null identity(1,1),
	username varchar(20) not null,
	office_manager_ID int not null,
	firstname varchar(40) not null,
	lastname varchar(40) not null,
	b_password int not null,
	primary key (ID),
	foreign key(office_manager_ID) references Office_Manager(ID)
)
alter table Branch
add b_name varchar(50) not null,
city varchar(40) not null,
street varchar(40) not null,
postal_code varchar(40) not null;
create table Branch(
	ID int not null identity(1,1),
	central_office_ID int not null,
	branch_manager_ID int not null,
	b_name varchar(50) not null,
	city varchar(40) not null,
	street varchar(40) not null,
	postal_code varchar(40) not null,
	primary key(ID),
	foreign key(central_office_ID) references central_office(ID),
	foreign key(branch_manager_ID) references Branch_Manager(ID)
)

create table Branch_phone_number
(
	branch_ID int not null identity(1,1),
	phone_number varchar(50) not null,
	foreign key(branch_ID) references Branch(ID),
	primary key(branch_ID, phone_number)
)

create table clothe
(
	clothe_ID int not null identity(1,1),
	branch int not null,
	c_type varchar(50) not null,
	price money not null,
	size int default 0,
	left_in_stock int not null,
	brand varchar(30),
	material varchar(30),
	color varchar(20),
	primary key(clothe_ID),
	foreign key(branch) references Branch(ID),
)

create table C_order 
(
	o_count int not null,
	cloth_ID int not null,
	customer_ID int not null,
	order_number int not null,
	primary key(cloth_ID, customer_ID, order_number),
	foreign key(cloth_ID) references clothe(clothe_ID),
	foreign key(customer_ID) references customer(ID)
)