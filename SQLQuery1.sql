CREATE DATABASE[TicketsForCinema]
GO
USE[TicketsForCinema]
GO

CREATE TABLE [Genre](
	[Id] INT PRIMARY KEY IDENTITY(1, 1),
	[Value] NVARCHAR(20) NOT NULL,
)
GO
CREATE TABLE [Country](
	[Id] INT PRIMARY KEY IDENTITY(1, 1),
	[Value] NVARCHAR(150) NOT NULL,
)
GO
CREATE TABLE [Movie](
	[Id] INT PRIMARY KEY IDENTITY(1, 1),
	[Name] NVARCHAR(50) NOT NULL,
	[Description] NVARCHAR(200) NOT NULL,
	[GenreId] INT FOREIGN KEY REFERENCES [Genre](Id) NOT NULL,
	[MovieId] INT FOREIGN KEY REFERENCES [Movie](id) NOT NULL,
)
GO
CREATE TABLE [User](
[Id] INT PRIMARY KEY IDENTITY(1, 1),
[UserId] INT FOREIGN KEY REFERENCES [User](id) NOT NULL,
[FullName] NVARCHAR(200) NOT NULL,
[Email] NVARCHAR(320) NOT NULL,
[Password] NVARCHAR(100) NOT NULL, 
[Phone] NVARCHAR(20) NOT NULL
)
GO
CREATE TABLE[Ticket](
[Id] INT PRIMARY KEY IDENTITY(1, 1),
[TicketId] INT FOREIGN KEY REFERENCES [Ticket](id) NOT NULL,
[Time] DATETIME NOT NULL,
[Site] NVARCHAR(200),
[Price] NVARCHAR(350),
)