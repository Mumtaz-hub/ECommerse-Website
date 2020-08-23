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
Create procedure [dbo].[SP_AddNewCategory]
(
	@CategoryName varchar(200)
)
as
begin

begin try
	insert into Category values(@CategoryName)
end try
begin catch
print('Error occured')
end catch
end
