alter procedure spgetcustomers (@city varchar(15),@custcount int output)
as 
begin 
	--select * from customer where city=@city
	select @custcount=count(*) from customer where city=@city
end



select * from customer

declare @count int
exec spgetcustomers 'Paris',@count out
print @count




create procedure spgetcustomers1 (@city varchar(15))
as 
begin 
	--select * from customer where city=@city
	return (select count(*) from customer where city=@city)

end


declare @count int
exec @count =spgetcustomers1 'New York'
print @count


