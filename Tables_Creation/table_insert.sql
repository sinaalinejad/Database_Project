
create table Office_Manager
(
	ID int not null identity(1,1),
	firstname varchar(40),
	lastname varchar(50),
	username varchar(50) not null,
	o_password varchar(50),
	unique(username),
	primary key(ID)
)

create table central_office(
	ID int not null identity(1,1),
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
	username varchar(50) not null,
	c_password varchar(50) not null,
	unique(username),
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
	office_manager_ID int not null,
	firstname varchar(40) not null,
	lastname varchar(40) not null,
	username varchar(50) not null,
	b_password int not null,
	unique(username),
	primary key (ID),
	foreign key(office_manager_ID) references Office_Manager(ID)
)


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

-- -------------------------------------------------------------

-- insert data
-- Office Manager
insert into Office_Manager values ('Navid', 'Ebrahimi', 'navidium','1234')
insert into Office_Manager values ('Sina', 'Alinejad','sinaalj', '4321')
insert into Office_Manager values ('Amirreza', 'Vishteh','amirreza_v1', '2587')
insert into Office_Manager values ('Ali', 'Mohebbi','amo', '4563')
insert into Office_Manager values ('Mohammad', 'Akbari','akbar', '4198')
select *
From Office_Manager

-- Customer
insert into customer values ('Mohammad', 'Osoolian','osl', '1234')
insert into customer values ('Ahamd', 'Tah','amadtah', '69475')
insert into customer values ('Farzan', 'Rahmani','farzi', '86464')
insert into customer values ('Hossein', 'Rahmani','HR200', '74154')
insert into customer values ('Amir', 'Fakhar','amiram', '56456')

-- Branch_manager
insert into Branch_manager values ('1','Mohmmad', 'Kashani','mokash', '486789')
insert into Branch_manager values ('2','Hasan', 'Rahimi','rahim', '5645')
insert into Branch_manager values ('3','ShamsAli', 'Rashti','sangbarghi', '74546')
insert into Branch_manager values ('4','Atefeh', 'Gholami','gholamam', '484')
insert into Branch_manager values ('5','Danial', 'Farhadi','danifar', '65445')

--central_office
insert into central_office values ('1','Safavieh', 'Kashan','Danesh')
insert into central_office values ('2','Hakhamanesh', 'Rasht','Mirza')
insert into central_office values ('3','Kourosh', 'Tehran','Resalat')
insert into central_office values ('4','Dariush', 'Ahvaz','Behnood')
insert into central_office values ('5','Ashkani', 'Shiraz','Rajaee')

-- customer_club
insert into customer_club values ('1','Safavieh_Club', 100)
insert into customer_club values ('2','Hakhamanesh_Club', 300)
insert into customer_club values ('3','Kourosh_Club', 400)
insert into customer_club values ('4','Dariush_Club', 350)
insert into customer_club values ('5','Ashkani_Club', 600)

--Membership
insert into Membership values ('1','2')
insert into Membership values ('2','4')
insert into Membership values ('3','5')
insert into Membership values ('4','3')
insert into Membership values ('5','1')

--Branch
insert into Branch values ('1','3','shamreh1', 'Isfahan','safavieh','4564567')
insert into Branch values ('2','4','shoamreh2', 'Natanz','pasdaran','1475289')
insert into Branch values ('3','1','shoamreh3', 'Qazvin','amirkabir','6354982')
insert into Branch values ('4','1','shoamreh4', 'Birjand','mohtasham','8546328')
insert into Branch values ('5','5','shoamreh5', 'Bojnoord','fazel','1254789')

--Branch_phone_number
insert into Branch_phone_number values ('02198547')
insert into Branch_phone_number values ('02154763')
insert into Branch_phone_number values ('02152478')
insert into Branch_phone_number values ('02163589')
insert into Branch_phone_number values ('02146978')

--clothe
insert into clothe values ('2', 'shirt', 500000,90,20, 'Gucci','Cotton','red')
insert into clothe values ('3', 'shirt',600000, 60,10,'Christian Dior','Wool','green')
insert into clothe values ('1', 'shoes',200000, 40,12,'Louis Vuitton','Leather','black')
insert into clothe values ('4', 'pants',600000, 45,16,'Guess','Lee','blue')
insert into clothe values ('5', 'jacket',964547, 55,21,'Versace Versace','Cotton','blue')

--C_order
insert into C_order values (3, '1', '2',26541)
insert into C_order values (2, '2', '1',26542)
insert into C_order values (4, '4', '3',26543)
insert into C_order values (1, '5', '2',26544)
insert into C_order values (1, '3', '4',26545)