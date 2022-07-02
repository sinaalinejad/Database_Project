create or alter procedure increase_clothe_left_in_stock (@clothe_ID INT, @number_to_add INT)
as
begin
	declare @Stock INT;
	set @Stock = (select left_in_stock from clothe where clothe_ID=@clothe_ID) + @number_to_add
	update clothe set left_in_stock = @Stock where clothe_ID = @clothe_ID
end;
--exec increase_clothe_left_in_stock @clothe_ID = 4, @number_to_add = 5;



create or alter procedure change_password (@pass int, @cid int)
as
begin
	update customer set c_password = @pass where ID = @cid
end;