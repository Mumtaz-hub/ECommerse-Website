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
Create Procedure [dbo].[CategoryAction]
(
 --variable  declareations 
  @Action varchar (10),
 @CategoryId int,
 @CategoryName varchar(100)=null
 )
as
Begin 
  SET NOCOUNT ON;

If @Action='Insert'   --used to insert records
Begin
   Insert Into Category(CategoryId,CategoryName)values(@CategoryId,@CategoryName)
End  
else if @Action='Select'   --used to Select records
Begin
    select *from Category
end
else if @Action='Update'  --used to update records
Begin
   update Category set CategoryName=@CategoryName where CategoryId=@CategoryId
 End
 Else If @Action='delete'  --used to delete records
 Begin
   delete from Category where CategoryId=@CategoryId
 end
 End