USE [Jewellery Accessories]
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteCategory]    Script Date: 01/08/2018 03:57:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	@CategoryId int
)
as
begin

begin try
	delete from Category where CategoryId=@CategoryId
end try
begin catch
print('Error occured')
end catch
end
