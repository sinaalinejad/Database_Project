select distinct(branch) from clothe where c_type = 'shirt' and price > 10 and left_in_stock > 0;
-- find branches that have shirts with price > 10

select distinct(brand) from clothe where c_type = 'pants'
-- find brands of pants

select CONCAT('city: ', B.city,', street: ', B.street,', postal code: ', B.postal_code) from Branch B where B.ID IN (
	select distinct(branch) from clothe where c_type = 'shirt' and material = 'cotton' and left_in_stock > 0
);
-- address of branches that have shirts with cotton material

select distinct(color) from clothe c where c.branch = 2 and c.c_type = 'shirt' and c.size > 85 and c.left_in_stock > 0;
-- colors of shirts with size > 85 in branch 2

select CONCAT(bm.firstname, ' ', bm.lastname) full_name, COUNT(*) number_of_clothes 
from clothe c INNER JOIN Branch b on c.branch = b.ID INNER JOIN Branch_manager bm on b.branch_manager_ID = bm.ID
where c.left_in_stock > 0
group by bm.firstname, bm.lastname
-- number of clothes sold at branches managed by every branch manager

select o.customer_ID from C_order o INNER JOIN clothe c on o.cloth_ID=c.clothe_ID where o.o_count * c.price > 500;
-- customers that have had orders with cost > 500 dollars (rich customers)

select o.customer_ID from C_order o 
group by o.customer_ID
having count(*) > 20
-- customers that have more that 20 buys (man of credit customers)

select COUNT(*) number_of_clubs from customer C INNER JOIN Membership M ON C.ID = M.customer_ID 
GROUP BY C.ID
-- number of clubs that every customer is joined

select count(*) number_of_clubs
from customer_club cc INNER JOIN central_office c on cc.central_office_ID=c.ID INNER JOIN Office_Manager o on c.Office_manager_ID=o.ID
where o.firstname='mahmood' and o.lastname='khayyami'
-- number of clubs that belong to central offices managed by mahmood khayyami

select distinct(bpn.phone_number)
from clothe c INNER JOIN Branch b on c.branch = b.ID INNER JOIN Branch_phone_number bpn on b.ID = bpn.branch_ID
where c.price < 5 and c.c_type = 'sweater' and c.left_in_stock > 0
-- phone numbers of branches having sweaters with price < 5

select * from customer_club where member_count > 50
-- customer clubs with more that 50 members

select * from clothe c INNER JOIN Branch b on c.branch = b.ID
where c.branch = 2 and c.c_type = 'shoes' order by c.price DESC
-- ordering the shoes sold at branch with id 2 in the descending order

select c.cloth_ID from C_order c group by c.cloth_ID having count(*) > 20
-- clothes that have been bought in more than 20 orders (interesting clothes)

select c.cloth_ID from C_order c group by c.cloth_ID having SUM(c.o_count) > 100
-- clothes that have been bought more than 100 number (another criterion for interest)

select distinct(size) from clothe c where c.c_type = 'shirt' and c.brand = 'puma' and c.left_in_stock > 0
-- different sizes of shirts made by puma

select bpn.phone_number from Branch b INNER JOIN Branch_phone_number bpn on b.ID = bpn.branch_ID where b.street = 'Hemmat'
-- phone numbers of branches located in Hemmat street

select distinct( CONCAT(bm.firstname, ' ', bm.lastname) ) full_name 
From Branch b INNER JOIN Branch_manager bm on b.branch_manager_ID=bm.ID where b.city <> 'tehran'
-- branch managers that manage branches located in cities except tehran

select distinct(M.customer_ID) from Membership M INNER JOIN customer_club cc on M.customer_club_ID = cc.ID where cc.member_count < 10
-- customers that has joined in customer clubs with less than 10 members

select distinct(o.customer_ID) from C_order o INNER JOIN clothe c on o.cloth_ID=c.clothe_ID 
where c.size > 110 and c.c_type = 'shirt'
-- customers that have bought shirts with size > 110 ( fat customers )

select distinct(o.customer_ID) from C_order o where o.o_count > 50
-- major donkey customers ( customers that buy their things in vast amount and in one stage )