CREATE TABLE [dbo].[Disasters_CallCenters_Requests]
(
	[DisasterId] INT NOT NULL PRIMARY KEY, 
    [CallCenterId] INT NOT NULL, 
    [RequestId] INT NOT NULL, 
    CONSTRAINT [FK_Disasters_CallCenters_Requests_ToDisaster] FOREIGN KEY (DisasterId) REFERENCES Disasters(Id), 
    CONSTRAINT [FK_Disasters_CallCenters_Requests_ToCallCenter] FOREIGN KEY (CallCenterId) REFERENCES CallCenter(Id), 
    CONSTRAINT [FK_Disasters_CallCenters_Requests_ToRequest] FOREIGN KEY (RequestId) REFERENCES Requests(Id)
)
