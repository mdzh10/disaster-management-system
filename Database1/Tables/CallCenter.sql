CREATE TABLE [dbo].[CallCenter]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [Street] VARCHAR(200) NOT NULL, 
    [City] VARCHAR(50) NOT NULL, 
    [State] VARCHAR(50) NOT NULL, 
    [Country] VARCHAR(50) NOT NULL, 
    [Zip] INT NOT NULL, 
    [Phone] VARCHAR(20) NOT NULL, 
    [Name] VARCHAR(200) NOT NULL
)
