CREATE TABLE [dbo].[Donations]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [Category] VARCHAR(100) NOT NULL, 
    [Quantity] INT NOT NULL, 
    [Status] VARCHAR(20) NOT NULL DEFAULT 'In Progress', 
    [ItemName] VARCHAR(200) NOT NULL
)
