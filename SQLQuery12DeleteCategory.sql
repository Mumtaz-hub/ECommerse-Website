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
Create procedure [dbo].[SP_DeleteCategory]
(
	@CategoryName varchar(200)
)
as
begin

begin try
	delete from Category where CategoryId="CategoryId"
end try
begin catch
print('Error occured')
end catch
end
