CREATE PROCEDURE [dbo].[Register]
	@firstName varchar(50),
	@lastName varchar(50),
	@address varchar(200), 
	@city varchar(50), 
	@state varchar(50),
	@country varchar(50), 
	@zip int, 
	@email varchar(200), 
	@phone varchar(50), 
	@userType int, 
	@password binary(64),
	@callcenter int

AS
	DECLARE @NewID INT
	DECLARE @EmpID INT

	INSERT INTO [USERS] (First_Name, Last_Name, Address, City, State, Country , Zip, Email, Phone, User_Type, Password)
	VALUES (@firstName, @lastName, @address, @city, @state, @country, @zip, @email, @phone, @userType, @password)
	
	SELECT @NewID = SCOPE_IDENTITY();

	IF (@userType = 1 OR @userType = 2)
	BEGIN
		INSERT INTO [Employee] (CallCenter)
		VALUES (@callcenter)

		SELECT @EmpID = SCOPE_IDENTITY();

		INSERT INTO [Users_Employees] (UserId, EmployeeId)
		VALUES (@NewID, @EmpID)
	END
RETURN 0
