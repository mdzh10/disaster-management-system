CREATE TABLE [dbo].[Users]
(
	[UserId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [First_Name] VARCHAR(50) NOT NULL, 
    [Last_Name] VARCHAR(50) NOT NULL, 
    [Address] VARCHAR(200) NOT NULL, 
    [Email] VARCHAR(200) NOT NULL, 
    [Phone] VARCHAR(50) NOT NULL, 
    [User_Type] INT NOT NULL, 
    [Password] BINARY(64) NOT NULL, 
    [City] VARCHAR(50) NOT NULL, 
    [State] VARCHAR(50) NOT NULL, 
    [Zip] INT NOT NULL, 
    [Country] VARCHAR(50) NOT NULL, 
    [Status] VARCHAR(20) NOT NULL DEFAULT 'inactive',
    CONSTRAINT [FK_Users_ToUserTypes] FOREIGN KEY ([User_Type]) REFERENCES [UserTypes]([Id])
)
