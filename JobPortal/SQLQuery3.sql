CREATE TABLE [dbo].[tblUserInfo] (
    [UserInfoID]     INT           IDENTITY (1, 1) NOT NULL,
    [Email]          VARCHAR (255) NOT NULL,
    [Fname]          VARCHAR (30)  NOT NULL,
    [Lname]          VARCHAR (30)  NOT NULL,
    [State]          VARCHAR (50)  NOT NULL,
    [Gender]         CHAR (1)      NOT NULL,
    [Address]        VARCHAR (200) NOT NULL,
    [Preferences]    VARCHAR (MAX) NULL,
    [Mobile]         VARCHAR (12)  NOT NULL,
    [Merttal_status] CHAR (1)      NOT NULL,
    PRIMARY KEY CLUSTERED ([UserInfoID] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC),
);

