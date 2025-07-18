CREATE PROCEDURE [dbo].[AddDonation]
	@userid int,
	@itemname varchar(200),
	@category varchar(100),
	@quantity int
AS
DECLARE @newId int
BEGIN
	INSERT INTO [Donations] (Category, ItemName, Quantity, Status)
	VALUES(@category, @itemname, @quantity, 'In Progress')

	SELECT @newId = SCOPE_IDENTITY()

	INSERT INTO [Users_Donations] (UserId, DonationId)
	VALUES (@userid, @newId)
END
RETURN 0
