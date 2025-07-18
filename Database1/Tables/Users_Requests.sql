CREATE TABLE [dbo].[Users_Requests]
(
	[RequestId] INT NOT NULL PRIMARY KEY, 
    [UserId] INT NOT NULL, 
    CONSTRAINT [FK_Users_Requests_ToRequests] FOREIGN KEY (RequestId) REFERENCES Requests(Id), 
    CONSTRAINT [FK_Users_Requests_ToUsers] FOREIGN KEY (UserId) REFERENCES Users(UserId)
)
