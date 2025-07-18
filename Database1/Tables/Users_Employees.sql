CREATE TABLE [dbo].[Users_Employees]
(
	[UserId] INT NOT NULL PRIMARY KEY, 
    [EmployeeId] INT NOT NULL, 
    CONSTRAINT [FK_Users_Employees_ToUsers] FOREIGN KEY (UserId) REFERENCES Users(UserID), 
    CONSTRAINT [FK_Users_Employees_ToEmployees] FOREIGN KEY (EmployeeId) REFERENCES Employee(Id)
)
