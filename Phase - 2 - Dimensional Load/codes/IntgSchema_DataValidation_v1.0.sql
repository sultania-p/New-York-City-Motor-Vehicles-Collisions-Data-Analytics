select * from iowa.dbo.Dim_Iowa_City where City = 'OAKLAND'
select * from iowa.dbo.Dim_Iowa_City where City_SK = 1
select * from iowa.dbo.Dim_Iowa_County where County_SK=1
select * from iowa.dbo.Dim_Iowa_County where County= ''
select * from iowa.dbo.Dim_Iowa_City where City= 'WEST DES MOINES'
select * from iowa.dbo.Dim_Iowa_City where City= ''
select * from iowa.dbo.Dim_Iowa_Liquor_Product_Categories where category_number in (-99, -1) category_sk in (150, 0)

select * from iowa.dbo.Dim_Iowa_Liquor_Product_Categories where 
	--category_number in (-99, -1)
	category_sk in (27, 99,20,109)
	
	