USE [master]
GO
/****** Object:  Database [EventDB]    Script Date: 10/16/2018 09:25:50 ******/
CREATE DATABASE [EventDB] ON  PRIMARY 
( NAME = N'EventDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\EventDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EventDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\EventDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EventDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EventDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EventDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EventDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EventDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EventDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EventDB] SET ARITHABORT OFF
GO
ALTER DATABASE [EventDB] SET AUTO_CLOSE ON
GO
ALTER DATABASE [EventDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EventDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EventDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EventDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EventDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EventDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EventDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EventDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EventDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EventDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [EventDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EventDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EventDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EventDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EventDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EventDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EventDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [EventDB] SET  READ_WRITE
GO
ALTER DATABASE [EventDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [EventDB] SET  MULTI_USER
GO
ALTER DATABASE [EventDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EventDB] SET DB_CHAINING OFF
GO
USE [EventDB]
GO
/****** Object:  Table [dbo].[Venue]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venue](
	[VenueID] [int] IDENTITY(1,1) NOT NULL,
	[VenueName] [varchar](200) NULL,
	[VenueFilename] [varchar](200) NULL,
	[VenueFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[VenueCost] [int] NULL,
 CONSTRAINT [PK_Venue] PRIMARY KEY CLUSTERED 
(
	[VenueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Venue] ON
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Createdate], [VenueCost]) VALUES (1, N'BeachVenue', N'The-Wedding-Co.weddingplz1.jpg', N'VenueImages/d0894394-1dce-4b3b-87a6-1f97a05417a2.jpg', 2, CAST(0x0000A7AD00B95E33 AS DateTime), 50000)
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Createdate], [VenueCost]) VALUES (2, N'Garden Venue', N'SR-Event-Planners4.weddingplz.jpg', N'VenueImages/3b2b3b1c-643b-42b6-b815-1bebbd27d3f6.jpg', 2, CAST(0x0000A7AD00B95E33 AS DateTime), 20000)
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Createdate], [VenueCost]) VALUES (3, N'BeachVenue1', N'4cc281ec-7ed9-4232-b983-4c29ac1d707a.jpg', N'VenueImages/03ab9cbf-2da4-4a18-be0e-8a1a3a7c8331.jpg', 1, CAST(0x0000A7AD00B95E33 AS DateTime), 500)
SET IDENTITY_INSERT [dbo].[Venue] OFF
/****** Object:  Table [dbo].[States]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[States](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](200) NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (1, N'Andhra Pradesh', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (2, N'Maharashtra', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (3, N'Shanghai', 2)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (4, N'Beijing', 2)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (5, N'New Jersey', 3)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (6, N'Texas', 3)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (7, N'Sunderland', 4)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (8, N'Newport', 4)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (9, N'Berlin', 5)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (10, N'Hamburg', 5)
SET IDENTITY_INSERT [dbo].[States] OFF
/****** Object:  Table [dbo].[Roles]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Rolename] [varchar](100) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (2, N'Users')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (3, N'SuperAdmin')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (4, N'Anonymous ')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[Registration]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[City] [int] NULL,
	[State] [int] NULL,
	[Country] [int] NULL,
	[Mobileno] [varchar](20) NULL,
	[EmailID] [varchar](100) NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](100) NULL,
	[ConfirmPassword] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[Birthdate] [datetime] NULL,
	[RoleID] [int] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (1, N'Customer', N'Bandra', 5, 2, 1, N'9999999999', N'saihacksoft@gmail.com', N'Customer', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x000081A200000000 AS DateTime), 2, CAST(0x0000A7B900B60B6B AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (2, N'Admin', N'Bandra', 5, 2, 1, N'9999999999', N'saihacksoft@gmail.com', N'Admin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x000081A200000000 AS DateTime), 1, CAST(0x0000A7B900B60B6B AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (3, N'SuperAdmin', N'Bandra', 5, 2, 1, N'9999999999', N'saihacksoft@gmail.com', N'SuperAdmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x000081A200000000 AS DateTime), 3, CAST(0x0000A7B900B60B6B AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (4, N'Newadmin', N'Bandra', 2, 1, 1, N'9999999999', N'Newadmin@gmail.com', N'Newadmin', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x00007E0E00000000 AS DateTime), 1, CAST(0x0000A7B900B60B6B AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (8, N'Sai', N'sdfsdf', 5, 2, 1, N'9999999999', N'sdfsdf@gg.cin', N'Saineshwar', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x0000812500000000 AS DateTime), 2, CAST(0x0000A7B900B60B6B AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (9, N'sairock', N'pp', 1, 1, 1, N'9999999999', N'dd@gg.com', N'sairocks', N'EcMeUuVrv6U89Ul/imhLmw==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(0x000068DE00000000 AS DateTime), 2, CAST(0x0000A7B900B60B6B AS DateTime))
SET IDENTITY_INSERT [dbo].[Registration] OFF
/****** Object:  Table [dbo].[Light]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Light](
	[LightID] [int] IDENTITY(1,1) NOT NULL,
	[LightType] [char](1) NULL,
	[LightName] [varchar](200) NULL,
	[LightFilename] [varchar](200) NULL,
	[LightFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[LightCost] [int] NULL,
 CONSTRAINT [PK_Light] PRIMARY KEY CLUSTERED 
(
	[LightID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Light] ON
INSERT [dbo].[Light] ([LightID], [LightType], [LightName], [LightFilename], [LightFilePath], [Createdby], [Createdate], [LightCost]) VALUES (1, N'1', N'String Lights', N'string-lights-wedding.jpg', N'LightImages/0dfa03d5-2f9d-44f0-87ad-f07e0f0b7224.jpg', 2, CAST(0x0000A7B100A5B6F5 AS DateTime), 3000)
INSERT [dbo].[Light] ([LightID], [LightType], [LightName], [LightFilename], [LightFilePath], [Createdby], [Createdate], [LightCost]) VALUES (2, N'2', N'Acqualina outdoor Lights', N'Acqualina-outdoor-wedding-lighting-12.jpg', N'LightImages/84a52172-2dae-43d3-ba8b-e6126ef7d248.jpg', 2, CAST(0x0000A7B100A5B6F5 AS DateTime), 5000)
SET IDENTITY_INSERT [dbo].[Light] OFF
/****** Object:  Table [dbo].[Food]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Food](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [char](1) NULL,
	[MealType] [char](1) NULL,
	[DishType] [int] NULL,
	[FoodName] [varchar](200) NULL,
	[FoodFilename] [varchar](200) NULL,
	[FoodFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[FoodCost] [int] NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (1, N'1', N'1', 1, N'South India thali', N'south_indian_thali.jpg', N'FoodImages/411ea912-758d-4f02-b9e0-ea9ca9e95816.jpg', 2, CAST(0x0000A7B000B054B3 AS DateTime), 250)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (2, N'1', N'2', 2, N'North Indian Thali', N'maxim-s-cafe.jpg', N'FoodImages/6406e92b-9002-4c58-98ed-1be4e6c6d8fd.jpg', 2, CAST(0x0000A7B000B054B3 AS DateTime), 250)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (3, N'2', N'1', 1, N'Punjab Thali', N'o.jpg', N'FoodImages/e0f91736-4988-4569-b6b5-749c19b9fd14.jpg', 2, CAST(0x0000A7B000B054B3 AS DateTime), 300)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (4, N'2', N'2', 1, N'Maharashtrian thali', N'a-thali-plate.jpg', N'FoodImages/f482caad-1826-444c-8d72-a2bacd6f496b.jpg', 2, CAST(0x0000A7B000B054B3 AS DateTime), 300)
SET IDENTITY_INSERT [dbo].[Food] OFF
/****** Object:  Table [dbo].[Flower]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Flower](
	[FlowerID] [int] IDENTITY(1,1) NOT NULL,
	[FlowerName] [varchar](200) NULL,
	[FlowerFilename] [varchar](200) NULL,
	[FlowerFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[FlowerCost] [int] NULL,
 CONSTRAINT [PK_Flower] PRIMARY KEY CLUSTERED 
(
	[FlowerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Flower] ON
INSERT [dbo].[Flower] ([FlowerID], [FlowerName], [FlowerFilename], [FlowerFilePath], [Createdby], [Createdate], [FlowerCost]) VALUES (1, N'Orchids', N'Orchid.jpg', N'FlowerImages/70f41879-909d-45a8-a6d9-dba7bb33f0d6.jpg', 2, CAST(0x0000A7B000003041 AS DateTime), 3000)
INSERT [dbo].[Flower] ([FlowerID], [FlowerName], [FlowerFilename], [FlowerFilePath], [Createdby], [Createdate], [FlowerCost]) VALUES (2, N'red wedding flower-bouquets', N'red-wedding-flower-bouquets-collection.jpg', N'FlowerImages/cbd90318-99e7-45c2-bddb-3a3e2089208f.jpg', 2, CAST(0x0000A7B000003041 AS DateTime), 3000)
SET IDENTITY_INSERT [dbo].[Flower] OFF
/****** Object:  Table [dbo].[Event]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventType] [varchar](50) NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Event] ON
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (1, N'Marriage', N'1')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (2, N'FamilyFunction', N'2')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (3, N'Birthday Party', N'3')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (4, N'anniversary', N'4')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (5, N'FareWell Party', N'5')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (6, N'College Event', N'6')
SET IDENTITY_INSERT [dbo].[Event] OFF
/****** Object:  Table [dbo].[Equipment]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentName] [varchar](200) NULL,
	[EquipmentFilename] [varchar](200) NULL,
	[EquipmentFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[EquipmentCost] [int] NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [EquipmentFilename], [EquipmentFilePath], [Createdby], [Createdate], [EquipmentCost]) VALUES (1, N'DJ', N'2011-10-15 - Wedding - Brito-Lopez - Flip''s Setup - 640x512x256.jpg', N'EquipmentImages/c1bf21d9-361e-400b-b706-eb2067bd6576.jpg', 2, CAST(0x0000A7B000003041 AS DateTime), 5000)
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [EquipmentFilename], [EquipmentFilePath], [Createdby], [Createdate], [EquipmentCost]) VALUES (2, N'Speakers and Mike', N'speaker.png', N'EquipmentImages/6671822f-4a69-4aa5-a75f-a279328cf334.png', 2, CAST(0x0000A7B000003041 AS DateTime), 2000)
SET IDENTITY_INSERT [dbo].[Equipment] OFF
/****** Object:  Table [dbo].[Dishtypes]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dishtypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dishtype] [varchar](50) NULL,
 CONSTRAINT [PK_Dishtypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Dishtypes] ON
INSERT [dbo].[Dishtypes] ([ID], [Dishtype]) VALUES (1, N'Deluxe')
INSERT [dbo].[Dishtypes] ([ID], [Dishtype]) VALUES (2, N'Regular')
SET IDENTITY_INSERT [dbo].[Dishtypes] OFF
/****** Object:  Table [dbo].[Country]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (1, N'India')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (2, N'China')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (3, N'USA')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (4, N'UK')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (5, N'Germany')
SET IDENTITY_INSERT [dbo].[Country] OFF
/****** Object:  Table [dbo].[City]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](200) NULL,
	[StateID] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (1, N'Hyderabad', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (2, N'Visakhapatnam', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (3, N'Vijayawada', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (4, N'Warangal', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (5, N'Mumbai', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (6, N'Pune', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (7, N'Nagpur', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (8, N'Thane', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (9, N'Nashik', 2)
SET IDENTITY_INSERT [dbo].[City] OFF
/****** Object:  Table [dbo].[BookingVenue]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingVenue](
	[BookingVenueID] [int] IDENTITY(1,1) NOT NULL,
	[VenueID] [int] NULL,
	[EventTypeID] [int] NULL,
	[GuestCount] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NULL,
 CONSTRAINT [PK_BookingVenue] PRIMARY KEY CLUSTERED 
(
	[BookingVenueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingVenue] ON
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, 500, 1, CAST(0x0000A60200A29999 AS DateTime), 1)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (24, 1, 1, 500, 1, CAST(0x0000A7B4017B24DB AS DateTime), 24)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (25, 1, 2, 500, 1, CAST(0x0000A7B500964FFA AS DateTime), 25)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (26, 1, 1, 50, 1, CAST(0x0000A7B700A53D91 AS DateTime), 26)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (27, 1, 1, 50, 1, CAST(0x0000A7B700A6397D AS DateTime), 27)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (28, 1, 1, 55, 1, CAST(0x0000A7B700A6BFF0 AS DateTime), 28)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (29, 3, 2, 658, 1, CAST(0x0000A7B700A7B29B AS DateTime), 29)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (30, 1, 1, 500, 1, CAST(0x0000A7B700AA2D3C AS DateTime), 30)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (31, 2, 1, 4547, 1, CAST(0x0000A7B700AF899A AS DateTime), 31)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (32, 1, 2, 5000, 1, CAST(0x0000A7B800E67BD1 AS DateTime), 32)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (33, 2, 6, 5000, 1, CAST(0x0000A7B8010CFFFB AS DateTime), 33)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (34, 1, 1, 500, 1, CAST(0x0000A7B900AC6593 AS DateTime), 34)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (35, 1, 1, 600, 1, CAST(0x0000A7BB009B918E AS DateTime), 35)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (36, 1, 1, 200, 1, CAST(0x0000A7E300EDB884 AS DateTime), 36)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (37, 1, 3, 200, 1, CAST(0x0000A80D0136709C AS DateTime), 37)
SET IDENTITY_INSERT [dbo].[BookingVenue] OFF
/****** Object:  Table [dbo].[BookingLight]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingLight](
	[BookLightID] [int] IDENTITY(1,1) NOT NULL,
	[LightType] [char](1) NULL,
	[LightIDSelected] [int] NULL,
	[BookingID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_BookingLight] PRIMARY KEY CLUSTERED 
(
	[BookLightID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookingLight] ON
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (1, N'1', 1, 1, 1, CAST(0x0000A60200A2AD53 AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (2, N'1', 1, 24, 1, CAST(0x0000A7B500A21E6F AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (3, N'1', 1, 1, 1, CAST(0x0000A7B700A7C6FC AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (4, N'1', 1, 30, 1, CAST(0x0000A7B700AA4973 AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (5, N'1', 1, 31, 1, CAST(0x0000A7B700AF9D2A AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (6, N'1', 1, 32, 1, CAST(0x0000A7B800E6C1FD AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (7, N'1', 2, 32, 1, CAST(0x0000A7B800E6C22E AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (8, N'2', 1, 33, 1, CAST(0x0000A7B8010D2080 AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (9, N'2', 1, 34, 1, CAST(0x0000A7B900AC7A64 AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (10, N'2', 1, 35, 1, CAST(0x0000A7BB009BA7DC AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (11, N'2', 2, 35, 1, CAST(0x0000A7BB009BA7F0 AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (12, N'1', 1, 36, 1, CAST(0x0000A7E300EE8EE4 AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (13, N'2', 1, 37, 1, CAST(0x0000A80D013B131C AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (14, N'2', 2, 37, 1, CAST(0x0000A80D013B1328 AS DateTime))
SET IDENTITY_INSERT [dbo].[BookingLight] OFF
/****** Object:  Table [dbo].[BookingFood]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingFood](
	[BookFoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [char](1) NULL,
	[MealType] [char](1) NULL,
	[DishType] [int] NULL,
	[DishName] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NOT NULL,
 CONSTRAINT [PK_BookingFood] PRIMARY KEY CLUSTERED 
(
	[BookFoodID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookingFood] ON
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (1, N'1', N'1', 1, 1, 1, CAST(0x0000A60200A2A753 AS DateTime), 1)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (24, N'1', N'2', 1, 1, 1, CAST(0x0000A7B4017B37AA AS DateTime), 24)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (25, N'1', N'2', 1, 2, 1, CAST(0x0000A7B4017B37AE AS DateTime), 24)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (26, N'1', N'1', 1, 2, 1, CAST(0x0000A7B5009663DE AS DateTime), 25)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (27, N'1', N'1', 1, 1, 1, CAST(0x0000A7B700A7C086 AS DateTime), 29)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (28, N'1', N'1', 1, 1, 1, CAST(0x0000A7B700AA3EE6 AS DateTime), 30)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (29, N'1', N'1', 1, 2, 1, CAST(0x0000A7B700AA3EF9 AS DateTime), 30)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (30, N'1', N'1', 1, 3, 1, CAST(0x0000A7B700AA3EFE AS DateTime), 30)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (31, N'1', N'1', 2, 1, 1, CAST(0x0000A7B700AF9643 AS DateTime), 31)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (32, N'1', N'1', 2, 3, 1, CAST(0x0000A7B700AF9648 AS DateTime), 31)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (33, N'1', N'1', 2, 4, 1, CAST(0x0000A7B700AF964C AS DateTime), 31)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (34, N'1', N'2', 1, 1, 1, CAST(0x0000A7B800E6BA9F AS DateTime), 32)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (35, N'1', N'2', 1, 2, 1, CAST(0x0000A7B800E6BAA4 AS DateTime), 32)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (36, N'1', N'2', 1, 3, 1, CAST(0x0000A7B800E6BAA5 AS DateTime), 32)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (37, N'2', N'1', 1, 2, 1, CAST(0x0000A7B8010D1684 AS DateTime), 33)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (38, N'2', N'1', 1, 3, 1, CAST(0x0000A7B8010D1692 AS DateTime), 33)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (39, N'1', N'2', 1, 1, 1, CAST(0x0000A7B900AC73D6 AS DateTime), 34)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (40, N'1', N'2', 1, 2, 1, CAST(0x0000A7B900AC73EB AS DateTime), 34)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (41, N'2', N'1', 1, 1, 1, CAST(0x0000A7BB009BA167 AS DateTime), 35)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (42, N'2', N'1', 1, 2, 1, CAST(0x0000A7BB009BA183 AS DateTime), 35)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (43, N'2', N'1', 1, 3, 1, CAST(0x0000A7BB009BA185 AS DateTime), 35)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (44, N'1', N'1', 1, 1, 1, CAST(0x0000A7E300EE6450 AS DateTime), 36)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (45, N'1', N'1', 1, 2, 1, CAST(0x0000A7E300EE6455 AS DateTime), 36)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (46, N'1', N'1', 1, 1, 1, CAST(0x0000A80D01385C77 AS DateTime), 37)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (47, N'1', N'1', 1, 2, 1, CAST(0x0000A80D01385C7E AS DateTime), 37)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (48, N'1', N'1', 1, 4, 1, CAST(0x0000A80D01385C81 AS DateTime), 37)
SET IDENTITY_INSERT [dbo].[BookingFood] OFF
/****** Object:  Table [dbo].[BookingFlower]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingFlower](
	[BookingFlowerID] [int] IDENTITY(1,1) NOT NULL,
	[FlowerID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NULL,
 CONSTRAINT [PK_BookingFlower] PRIMARY KEY CLUSTERED 
(
	[BookingFlowerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingFlower] ON
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, CAST(0x0000A60200A2B48A AS DateTime), 1)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (2, 1, 1, CAST(0x0000A7B4017B3F2C AS DateTime), 24)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (4, 1, 1, CAST(0x0000A7B500966A8D AS DateTime), 25)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (5, 1, 1, CAST(0x0000A7B700AAA0B7 AS DateTime), 30)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (6, 1, 1, CAST(0x0000A7B700AFA230 AS DateTime), 31)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (7, 1, 1, CAST(0x0000A7B800E6C73D AS DateTime), 32)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (8, 2, 1, CAST(0x0000A7B800E6C747 AS DateTime), 32)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (9, 1, 1, CAST(0x0000A7B8010D27F2 AS DateTime), 33)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (10, 2, 1, CAST(0x0000A7B900AC7F48 AS DateTime), 34)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (11, 1, 1, CAST(0x0000A7BB009BAD85 AS DateTime), 35)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (12, 2, 1, CAST(0x0000A7BB009BAD9F AS DateTime), 35)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (13, 1, 1, CAST(0x0000A7E300EEBC6C AS DateTime), 36)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (14, 1, 1, CAST(0x0000A80D013B8E2C AS DateTime), 37)
SET IDENTITY_INSERT [dbo].[BookingFlower] OFF
/****** Object:  Table [dbo].[BookingEquipment]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingEquipment](
	[BookingEquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NOT NULL,
 CONSTRAINT [PK_BookingEquipment] PRIMARY KEY CLUSTERED 
(
	[BookingEquipmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingEquipment] ON
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, CAST(0x0000A60200A2A028 AS DateTime), 1)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (20, 1, 1, CAST(0x0000A7B4017B2C51 AS DateTime), 24)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (21, 1, 1, CAST(0x0000A7B500965A6B AS DateTime), 25)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (22, 1, 1, CAST(0x0000A7B700A5439E AS DateTime), 26)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (23, 1, 1, CAST(0x0000A7B700A63F7A AS DateTime), 27)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (24, 1, 1, CAST(0x0000A7B700A6CA03 AS DateTime), 28)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (25, 1, 1, CAST(0x0000A7B700A7B774 AS DateTime), 29)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (26, 1, 1, CAST(0x0000A7B700AA3170 AS DateTime), 30)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (27, 1, 1, CAST(0x0000A7B700AF8DA4 AS DateTime), 31)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (28, 1, 1, CAST(0x0000A7B800E6B299 AS DateTime), 32)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (29, 2, 1, CAST(0x0000A7B800E6B29D AS DateTime), 32)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (30, 1, 1, CAST(0x0000A7B8010D0AA9 AS DateTime), 33)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (31, 2, 1, CAST(0x0000A7B8010D0AB2 AS DateTime), 33)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (32, 1, 1, CAST(0x0000A7B900AC6B98 AS DateTime), 34)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (33, 1, 1, CAST(0x0000A7BB009B97E7 AS DateTime), 35)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (34, 2, 1, CAST(0x0000A7BB009B980D AS DateTime), 35)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (35, 1, 1, CAST(0x0000A7E300EE331B AS DateTime), 36)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (36, 1, 1, CAST(0x0000A80D01374F3D AS DateTime), 37)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (37, 2, 1, CAST(0x0000A80D01374F41 AS DateTime), 37)
SET IDENTITY_INSERT [dbo].[BookingEquipment] OFF
/****** Object:  Table [dbo].[BookingDetails]    Script Date: 10/16/2017 09:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingDetails](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[BookingNo] [varchar](50) NULL,
	[BookingDate] [date] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingApproval] [varchar](1) NULL,
	[BookingApprovalDate] [datetime] NULL,
	[BookingCompletedFlag] [varchar](1) NULL,
 CONSTRAINT [PK_BookingDetails] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookingDetails] ON
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (1, N'BK-2016-1', CAST(0x613B0B00 AS Date), 1, CAST(0x0000A60200A29979 AS DateTime), N'A', CAST(0x0000A7B700A1B21D AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (24, N'BK-2017-24', CAST(0x0F3D0B00 AS Date), 1, CAST(0x0000A7B4017B249D AS DateTime), N'C', CAST(0x0000A7B700B292C4 AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (25, N'BK-2017-25', CAST(0x113D0B00 AS Date), 1, CAST(0x0000A7B500964EED AS DateTime), N'R', CAST(0x0000A7E300ECB052 AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (26, N'BK-2017-26', CAST(0x133D0B00 AS Date), 1, CAST(0x0000A7B700A53D56 AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (27, N'BK-2017-27', CAST(0x153D0B00 AS Date), 1, CAST(0x0000A7B700A63968 AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (28, N'BK-2017-28', CAST(0x183D0B00 AS Date), 1, CAST(0x0000A7B700A6BFEA AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (29, N'BK-2017-29', CAST(0x183D0B00 AS Date), 1, CAST(0x0000A7B700A7B262 AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (30, N'BK-2017-30', CAST(0x1A3D0B00 AS Date), 1, CAST(0x0000A7B700AA2CF1 AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (31, N'BK-2017-31', CAST(0x133D0B00 AS Date), 1, CAST(0x0000A7B700AF8963 AS DateTime), N'R', CAST(0x0000A7B700B08BC1 AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (32, N'BK-2017-32', CAST(0x193D0B00 AS Date), 1, CAST(0x0000A7B800E67B4E AS DateTime), N'A', CAST(0x0000A7B800E6ECFF AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (33, N'BK-2017-33', CAST(0x153D0B00 AS Date), 1, CAST(0x0000A7B8010CFFB7 AS DateTime), N'A', CAST(0x0000A7B8010E0D55 AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (34, N'BK-2017-34', CAST(0x1B3D0B00 AS Date), 1, CAST(0x0000A7B900AC64DF AS DateTime), N'A', CAST(0x0000A7B900AC9DBA AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (35, N'BK-2017-35', CAST(0x1F3D0B00 AS Date), 1, CAST(0x0000A7BB009B90B1 AS DateTime), N'A', CAST(0x0000A7BB009BE529 AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (36, N'BK-2017-36', CAST(0x483D0B00 AS Date), 1, CAST(0x0000A7E300EDB843 AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (37, N'BK-2017-37', CAST(0x6F3D0B00 AS Date), 1, CAST(0x0000A80D01367022 AS DateTime), N'P', NULL, N'C')
SET IDENTITY_INSERT [dbo].[BookingDetails] OFF
/****** Object:  Default [DF_Venue_Createdate]    Script Date: 10/16/2017 09:25:51 ******/
ALTER TABLE [dbo].[Venue] ADD  CONSTRAINT [DF_Venue_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
/****** Object:  Default [DF_Light_Createdate]    Script Date: 10/16/2017 09:25:51 ******/
ALTER TABLE [dbo].[Light] ADD  CONSTRAINT [DF_Light_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
/****** Object:  Default [DF_Food_Createdate]    Script Date: 10/16/2017 09:25:51 ******/
ALTER TABLE [dbo].[Food] ADD  CONSTRAINT [DF_Food_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
/****** Object:  Default [DF_Flower_Createdate]    Script Date: 10/16/2017 09:25:51 ******/
ALTER TABLE [dbo].[Flower] ADD  CONSTRAINT [DF_Flower_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
/****** Object:  Default [DF_Equipment_Createdate]    Script Date: 10/16/2017 09:25:51 ******/
ALTER TABLE [dbo].[Equipment] ADD  CONSTRAINT [DF_Equipment_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
