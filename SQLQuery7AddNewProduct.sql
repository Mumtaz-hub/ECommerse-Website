USE [Jewellery Accessories]
GO
/****** Object:  StoredProcedure [dbo].[Price]    Script Date: 01/04/2018 02:03:11 ******/
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
ALTER Procedure [dbo].[SP_AddNewProduct]
(
	@ProductName varchar(500),
	@ProductPrice int,
	@ProductImage varchar(500),
	@ProductDescription varchar(5000),
	@CategoryID int
)
as

begin
	begin try
			insert into Products(Name,Price,ImageUrl,Description,CategoryID) 
			values(@ProductName,@ProductPrice,@ProductImage,@ProductDescription,@CategoryID)
	end try
begin catch

end catch

end