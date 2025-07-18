CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [CallCenter] INT NOT NULL, 
    CONSTRAINT [FK_Employee_ToCallCenter] FOREIGN KEY ([CallCenter]) REFERENCES [CallCenter]([Id]) 
)
