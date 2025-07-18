CREATE TABLE [dbo].[Donations_Requests]
(
	[DonationId] INT NOT NULL PRIMARY KEY, 
    [RequestId] INT NOT NULL, 
    [QuantityDiff] INT NOT NULL, 
    CONSTRAINT [FK_Donations_Requests_ToDonation] FOREIGN KEY (DonationId) REFERENCES Donations(Id), 
    CONSTRAINT [FK_Donations_Requests_ToRequest] FOREIGN KEY (RequestId) REFERENCES Requests(Id)
)
