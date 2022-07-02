CREATE OR ALTER FUNCTION number_of_branches_managed_by_office_manager(@off_id int)
returns int
as
begin
	return (
	select count(*) num_of_branches from 
	(select * from central_office co where co.Office_manager_ID = @off_id) result inner join Branch b on b.central_office_ID=result.ID
	);
end;
GO
CREATE OR ALTER FUNCTION get_customers_that_have_bought_clothe_from_branch(@bid int)
returns table
as
	return (select distinct ( CONCAT(cu.firstname, ' ', cu.lastname) ) fullname 
	from Branch b inner join clothe c on b.ID=c.branch inner join C_order o on c.clothe_ID=o.cloth_ID
	inner join customer cu on o.customer_ID=cu.ID
	);


