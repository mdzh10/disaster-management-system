CREATE TABLE [dbo].[Disasters]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [Name] VARCHAR(MAX) NOT NULL, 
    [Category] VARCHAR(100) NOT NULL, 
    [BeginDate] DATETIME NOT NULL, 
    [EndDate] DATETIME NULL, 
    [Priority] INT NOT NULL
)
