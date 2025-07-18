CREATE TABLE [dbo].[Users_Donations]
(
	[UserId] INT NOT NULL, 
    [DonationId] INT NOT NULL PRIMARY KEY, 
    CONSTRAINT [FK_Users_Donations_ToUser] FOREIGN KEY (UserId) REFERENCES Users(UserId), 
    CONSTRAINT [FK_Users_Donations_ToDonation] FOREIGN KEY (DonationId) REFERENCES Donations(Id)
)
