CREATE TABLE [dbo].[Requests]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [Category] VARCHAR(100) NOT NULL, 
    [ItemName] VARCHAR(200) NOT NULL, 
    [Quantity] INT NOT NULL, 
    [Status] VARCHAR(20) NOT NULL DEFAULT 'In Progress'
)
