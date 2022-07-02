create view branch_bmanager_customerclub_centeraloffice
As
SELECT B.ID BranchID , BM.username MANAGERNAME , Cf.office_mager_username OFFICEUSERNAME , CC.ID CustomerCLUBID
From Branch B Join Branch_manager BM ON B.branch_manager_ID=BM.ID join central_office Cf On Cf.Office_manager_ID=BM.office_manager_ID join customer_club CC ON CC.central_office_ID=Cf.ID



Create View numberoforder
AS
SELECT (C.firstname+C.lastname) fullname ,O.order_number , sum(cl.price*O.o_count) toatal_price
From customer C join C_order O on  C.ID= O.customer_ID   join Clothe cl On cl.clothe_ID=O.cloth_ID
group by O.order_number,O.o_count,(C.firstname+C.lastname),cl.price


