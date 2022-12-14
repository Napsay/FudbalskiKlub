USE [master]
GO
/****** Object:  Database [FudbalskiKlub]    Script Date: 10/13/2022 7:04:49 PM ******/
CREATE DATABASE [FudbalskiKlub] ON  PRIMARY 
( NAME = N'FudbalskiKlub', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FudbalskiKlub.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FudbalskiKlub_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FudbalskiKlub_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FudbalskiKlub].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FudbalskiKlub] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET ARITHABORT OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FudbalskiKlub] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FudbalskiKlub] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FudbalskiKlub] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FudbalskiKlub] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FudbalskiKlub] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FudbalskiKlub] SET  MULTI_USER 
GO
ALTER DATABASE [FudbalskiKlub] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FudbalskiKlub] SET DB_CHAINING OFF 
GO
USE [FudbalskiKlub]
GO
/****** Object:  Table [dbo].[Igrac]    Script Date: 10/13/2022 7:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Igrac](
	[IgracID] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [varchar](25) NULL,
	[Prezime] [varchar](25) NULL,
	[Godine] [int] NULL,
	[Pozicija] [varchar](20) NULL,
	[KlubID] [int] NULL,
 CONSTRAINT [PK_Igrac] PRIMARY KEY CLUSTERED 
(
	[IgracID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klub]    Script Date: 10/13/2022 7:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klub](
	[KlubID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [varchar](25) NULL,
	[Stadion] [varchar](25) NULL,
	[GodinaOsnivanja] [int] NULL,
	[Grad] [varchar](25) NULL,
 CONSTRAINT [PK_Klub] PRIMARY KEY CLUSTERED 
(
	[KlubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Igrac] ON 

INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (1, N'Milan', N'Borjan', 34, N'Golman', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (2, N'Marko', N'Gobeljic', 30, N'Odbrana', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (3, N'Strahinja', N'Erakovic', 21, N'Odbrana', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (4, N'Aleksandar', N'Dragovic', 31, N'Odbrana', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (5, N'Milan', N'Rodic', 31, N'Odbrana', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (6, N'Stefan', N'Mitrovic', 21, N'Veznjak', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (7, N'Sekou', N'Sanogo', 33, N'Veznjak', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (8, N'Guelor', N'Kanga', 32, N'Veznjak', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (9, N'Mirko', N'Ivanic', 29, N'Veznjak', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (10, N'Aleksandar', N'Katai', 31, N'Napadac', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (11, N'Aleksandar', N'Pesic', 30, N'Napadac', 1)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (12, N'Aleksandar', N'Popovic', 23, N'Golman', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (13, N'Slobodan', N'Urosevic', 28, N'Odbrana', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (14, N'Svetozar', N'Markovic', 22, N'Odbrana', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (15, N'Igor', N'Vujacic', 28, N'Odbrana', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (16, N'Aleksandar', N'Filipovic', 27, N'Veznjak', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (17, N'Queensy', N'Menig', 27, N'Veznjak', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (18, N'Hamidu', N'Traore', 26, N'Napadac', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (19, N'Bibars', N'Natcho', 34, N'Veznjak', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (20, N'Fousseni', N'Diabate', 26, N'Napadac', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (21, N'Ricardo', N'Gomes', 30, N'Napadac', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (22, N'Andrija', N'Pavlovic', 28, N'Napadac', 2)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (23, N'Ederson', N'Moraes', 29, N'Golman', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (24, N'Kyle', N'Walker', 32, N'Odbrana', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (25, N'Manuel', N'Akanji', 27, N'Odbrana', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (26, N'Nathan', N'Ake', 27, N'Odbrana', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (27, N'Joao', N'Cancelo', 28, N'Odbrana', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (28, N'Kevin', N'De Bruyne', 31, N'Vezanjak', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (29, N'Ilkay', N'Gundogan', 31, N'Veznjak', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (30, N'Bernardo', N'Silva', 28, N'Veznjak', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (31, N'Phil', N'Foden', 22, N'Napadac', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (32, N'Erling', N'Haaland', 22, N'Napadac', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (33, N'Jack', N'Greakish', 27, N'Napadac', 3)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (34, N'David', N'De Gea', 31, N'Golman', 4)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (35, N'Tyrell', N'Malacia', 23, N'Odbrana', 4)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (36, N'Lisandro', N'Martinez', 24, N'Odbrana', 4)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (37, N'Raphael', N'Varane', 29, N'Odbrana', 4)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (38, N'Diogo', N'Dalot', 23, N'Odbrana', 4)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (39, N'Christian', N'Eriksen', 30, N'Veznjak', 4)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (40, N'Scott', N'McTominay', 25, N'Veznjak', 4)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (41, N'Jadon', N'Sancho', 22, N'Napadac', 4)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (42, N'Bruno', N'Fernandes', 28, N'Veznjak', 4)
INSERT [dbo].[Igrac] ([IgracID], [Ime], [Prezime], [Godine], [Pozicija], [KlubID]) VALUES (43, N'Antony', N'Mateos', 22, N'Napadac', 4)
SET IDENTITY_INSERT [dbo].[Igrac] OFF
GO
SET IDENTITY_INSERT [dbo].[Klub] ON 

INSERT [dbo].[Klub] ([KlubID], [Naziv], [Stadion], [GodinaOsnivanja], [Grad]) VALUES (1, N'Crvena Zvezda', N'Rajko Mitic', 1945, N'Beograd')
INSERT [dbo].[Klub] ([KlubID], [Naziv], [Stadion], [GodinaOsnivanja], [Grad]) VALUES (2, N'Partizan', N'JNA', 1945, N'Beograd')
INSERT [dbo].[Klub] ([KlubID], [Naziv], [Stadion], [GodinaOsnivanja], [Grad]) VALUES (3, N'Manchester City', N'Etihad', 1880, N'Manchester')
INSERT [dbo].[Klub] ([KlubID], [Naziv], [Stadion], [GodinaOsnivanja], [Grad]) VALUES (4, N'Manchester United', N'Old Trafford', 1878, N'Manchester')
SET IDENTITY_INSERT [dbo].[Klub] OFF
GO
ALTER TABLE [dbo].[Igrac]  WITH CHECK ADD  CONSTRAINT [FK_Igrac_Klub] FOREIGN KEY([KlubID])
REFERENCES [dbo].[Klub] ([KlubID])
GO
ALTER TABLE [dbo].[Igrac] CHECK CONSTRAINT [FK_Igrac_Klub]
GO
USE [master]
GO
ALTER DATABASE [FudbalskiKlub] SET  READ_WRITE 
GO
