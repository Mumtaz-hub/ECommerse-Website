-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
Create Procedure [dbo].[SP_GetAllProducts]
(
	@CategoryID int
)
as
begin
begin try
	if(@CategoryID<>0)
	begin
		select *from Products where CategoryID=@CategoryID
	end
	else
	begin
		select
		p.CategoryID,
		p.ProductID,
		p.Name,
		p.Price,
		p.ImageUrl,
		c.CategoryName,
		p.ProductQuantity
	    from Products p
		inner join Category c on p.CategoryID=c.CategoryID
	end
end try
begin catch
end catch
end