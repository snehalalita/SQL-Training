create table users (userid int primary key identity,username varchar(50))

select * from users

ALTER procedure spnameexists(@name varchar(50))
as
declare @result int
begin
if EXISTS(
	select * from users where username=@name)
	
		set @result=-1; 
	
else
	begin
		insert into users (username) values(@name)
		set @result=0
	end
RETURN @result
end


declare @result int
exec @result=spnameexists 'abcdftf'
select @result