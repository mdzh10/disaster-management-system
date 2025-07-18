

-- =============================================
-- Author:		Lucas
-- Create date: 4/7/2016
-- Description:	
-- =============================================
CREATE PROCEDURE addRequest 
	-- Add the parameters for the stored procedure here
	
	@category varchar(100) = 0, 
	@itemname varchar(100) = 0,
	@quantity int = 0,
	@userid int = 0

AS
DECLARE @newID int
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [Requests] (Category, ItemName, Quantity, Status)
	VALUES( @category, @itemname, @quantity, 'In Progress')

	SELECT @newID = SCOPE_IDENTITY()

	INSERT INTO [Users_Requests] (UserId, RequestId)
	VALUES (@userid, @newId)


END