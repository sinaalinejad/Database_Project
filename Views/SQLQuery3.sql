Create View clothe_customer_order
AS
SELECT (C.firstname+C.lastname) fullname ,O.o_count countoforder , (cl.price*O.o_count) toatal_price
From customer C join C_order O on  C.ID= O.customer_ID   join Clothe cl On cl.clothe_ID=O.cloth_ID



Create View numberoforder
AS
SELECT (C.firstname+C.lastname) fullname ,O.order_number , sum(cl.price*O.o_count) toatal_price
From customer C join C_order O on  C.ID= O.customer_ID   join Clothe cl On cl.clothe_ID=O.cloth_ID
group by O.order_number,O.o_count,(C.firstname+C.lastname),cl.price


