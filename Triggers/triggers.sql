create or alter trigger protect_and_update_cloth_count on C_order
instead of insert
as
Declare @Stock int;
begin
	SET NOCOUNT ON;
	set @Stock = (select c.left_in_stock from clothe c where c.clothe_ID = (select top 1 cloth_ID from inserted) ) - 
		( select top 1 o_count from inserted )
	If ( @Stock >= 0 )
		begin
			insert into C_order select * from inserted;
			update clothe set left_in_stock = @Stock where clothe_ID = (select top 1 clothe_ID from inserted)
		end;
	else
		begin
			RAISERROR('number of ordered clothe is more than available ones', 15,1);
			ROLLBACK TRANSACTION;
		end;
end;

create or alter trigger increase_member_count on Membership
after insert
as
Declare @Mem_cnt int;
Declare @Club_id int;
begin
	SET NOCOUNT ON;
	set @Mem_cnt = (select top 1 customer_club_ID from inserted) + 1;
	set @Club_id = (select top 1 customer_club_ID from inserted)
	update customer_club set member_count = @Mem_cnt where ID = @Club_id;
end;


create or alter trigger decrease_member_count on Membership
after delete
as
Declare @Mem_cnt int;
Declare @Club_id int;
begin
	SET NOCOUNT ON;
	set @Mem_cnt = (select top 1 customer_club_ID from inserted) - 1;
	set @Club_id = (select top 1 customer_club_ID from inserted)
	update customer_club set member_count = @Mem_cnt where ID = @Club_id;
end;
