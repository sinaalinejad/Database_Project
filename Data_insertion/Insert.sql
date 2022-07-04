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
insert into Branch_manager values ('Mohmmad', 'Kashani','mokash', '486789')
insert into Branch_manager values ('Hasan', 'Rahimi','rahim', '5645')
insert into Branch_manager values ('ShamsAli', 'Rashti','sangbarghi', '74546')
insert into Branch_manager values ('Atefeh', 'Gholami','gholamam', '484')
insert into Branch_manager values ('Danial', 'Farhadi','danifar', '65445')

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

-- Membership
insert into Membership values ('1','2')
insert into Membership values ('2','4')
insert into Membership values ('3','5')
insert into Membership values ('4','3')
insert into Membership values ('5','1')

-- Branch
insert into Branch values ('1','3','shamreh1', 'Isfahan','safavieh','4564567')
insert into Branch values ('2','4','shoamreh2', 'Natanz','pasdaran','1475289')
insert into Branch values ('3','1','shoamreh3', 'Qazvin','amirkabir','6354982')
insert into Branch values ('4','1','shoamreh4', 'Birjand','mohtasham','8546328')
insert into Branch values ('5','5','shoamreh5', 'Bojnoord','fazel','1254789')

-- Branch_phone_number
insert into Branch_phone_number values ('1','02198547')
insert into Branch_phone_number values ('2','02154763')
insert into Branch_phone_number values ('3','02152478')
insert into Branch_phone_number values ('4','02163589')
insert into Branch_phone_number values ('5','02146978')

-- clothe
insert into clothe values ('2', 'shirt', 500000,90,20, 'Gucci','Cotton','red')
insert into clothe values ('3', 'shirt',600000, 82,10,'Christian Dior','Wool','green')
insert into clothe values ('1', 'shoes',200000, 100,12,'Louis Vuitton','Leather','black')
insert into clothe values ('4', 'pants',600000, 111,16,'Guess','Lee','blue')
insert into clothe values ('5', 'jacket',964547, 115,21,'Versace Versace','Cotton','blue')

-- C_order
insert into C_order values (3, '1', '2',26541)
insert into C_order values (2, '2', '1',26542)
insert into C_order values (4, '4', '3',26543)
insert into C_order values (1, '5', '2',26544)
insert into C_order values (1, '3', '4',26545)