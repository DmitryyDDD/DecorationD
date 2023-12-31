USE [master]
GO
/****** Object:  Database [Trade_Koptsev]    Script Date: 25.11.2023 14:04:51 ******/
CREATE DATABASE [Trade_Koptsev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Trade_Koptsev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Trade_Koptsev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Trade_Koptsev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Trade_Koptsev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Trade_Koptsev] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trade_Koptsev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trade_Koptsev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trade_Koptsev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trade_Koptsev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Trade_Koptsev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trade_Koptsev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET RECOVERY FULL 
GO
ALTER DATABASE [Trade_Koptsev] SET  MULTI_USER 
GO
ALTER DATABASE [Trade_Koptsev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trade_Koptsev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trade_Koptsev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trade_Koptsev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Trade_Koptsev] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Trade_Koptsev', N'ON'
GO
ALTER DATABASE [Trade_Koptsev] SET QUERY_STORE = OFF
GO
USE [Trade_Koptsev]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Trade_Koptsev]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryName] [nvarchar](100) NOT NULL,
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Categori__19093A2BD90C07E8] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[Discount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProviderID] [int] NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Measure] [nvarchar](10) NOT NULL,
	[MaxDiscount] [tinyint] NOT NULL,
	[ProductPhoto] [nvarchar](max) NULL,
 CONSTRAINT [PK__Product__2EA7DCD5595AD11B] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerName] [nvarchar](100) NOT NULL,
	[ManufacturerID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Manufact__357E5CA174BF8D57] PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ViewProduct]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewProduct]
AS
SELECT        dbo.Product.ProductArticleNumber AS Артикул, dbo.Product.ProductName AS Название, dbo.Product.ProductDescription AS Описание, dbo.Product.ProductCost AS Стоимость, dbo.Product.Discount AS [Размер скидки], 
                         dbo.Product.ProductQuantityInStock AS Количество, dbo.Provider.ProviderName AS Поставщик, dbo.Manufacturer.ManufacturerName AS Производитель, dbo.Categories.CategoryName AS Категория
FROM            dbo.Product INNER JOIN
                         dbo.Provider ON dbo.Product.ProviderID = dbo.Provider.ProviderID INNER JOIN
                         dbo.Manufacturer ON dbo.Product.ManufacturerID = dbo.Manufacturer.ManufacturerID INNER JOIN
                         dbo.Categories ON dbo.Product.CategoryID = dbo.Categories.CategoryID
GO
/****** Object:  Table [dbo].[Order]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(0,1) NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderStatusID] [int] NOT NULL,
	[PickupPointID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ReceiptCode] [int] NOT NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK__Order__C3905BAF8DA8B248] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK__OrderPro__817A2662531EEE14] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pickup_Point]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pickup_Point](
	[Adresses] [nvarchar](200) NOT NULL,
	[PickupPointID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Pickup_Point] PRIMARY KEY CLUSTERED 
(
	[PickupPointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[OrderStatus] [nvarchar](20) NOT NULL,
	[OrderStatusID] [int] IDENTITY(0,1) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.11.2023 14:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryName], [CategoryID]) VALUES (N'Ароматы для дома', 1)
INSERT [dbo].[Categories] ([CategoryName], [CategoryID]) VALUES (N'Вазы', 2)
INSERT [dbo].[Categories] ([CategoryName], [CategoryID]) VALUES (N'Свечи', 3)
INSERT [dbo].[Categories] ([CategoryName], [CategoryID]) VALUES (N'Горшки и подставки', 4)
INSERT [dbo].[Categories] ([CategoryName], [CategoryID]) VALUES (N'Часы', 5)
INSERT [dbo].[Categories] ([CategoryName], [CategoryID]) VALUES (N'Картины и фоторамки', 6)
INSERT [dbo].[Categories] ([CategoryName], [CategoryID]) VALUES (N'Шкатулки и подставки', 7)
INSERT [dbo].[Categories] ([CategoryName], [CategoryID]) VALUES (N'Интерьерные аксессуары', 8)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'Esteban', 1)
INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'Home Philosophy', 2)
INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'Весна', 3)
INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'True Scents', 4)
INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'Valley', 5)
INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'Cube Color', 6)
INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'Umbra', 7)
INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'Miksdo', 8)
INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'Aroma', 9)
INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'Gallery', 10)
INSERT [dbo].[Manufacturer] ([ManufacturerName], [ManufacturerID]) VALUES (N'Kersten', 11)
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderDeliveryDate], [OrderStatusID], [PickupPointID], [OrderDate], [ReceiptCode], [UserID]) VALUES (0, CAST(N'2011-05-07T00:00:00.000' AS DateTime), 0, 1, CAST(N'2011-05-01T00:00:00.000' AS DateTime), 0, 51)
INSERT [dbo].[Order] ([OrderID], [OrderDeliveryDate], [OrderStatusID], [PickupPointID], [OrderDate], [ReceiptCode], [UserID]) VALUES (1, CAST(N'2011-05-08T00:00:00.000' AS DateTime), 0, 8, CAST(N'2011-05-01T00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDeliveryDate], [OrderStatusID], [PickupPointID], [OrderDate], [ReceiptCode], [UserID]) VALUES (2, CAST(N'2011-05-09T00:00:00.000' AS DateTime), 0, 10, CAST(N'2011-05-03T00:00:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDeliveryDate], [OrderStatusID], [PickupPointID], [OrderDate], [ReceiptCode], [UserID]) VALUES (3, CAST(N'2011-05-10T00:00:00.000' AS DateTime), 1, 1, CAST(N'2011-05-04T00:00:00.000' AS DateTime), 3, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDeliveryDate], [OrderStatusID], [PickupPointID], [OrderDate], [ReceiptCode], [UserID]) VALUES (4, CAST(N'2011-05-10T00:00:00.000' AS DateTime), 0, 5, CAST(N'2011-05-05T00:00:00.000' AS DateTime), 4, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDeliveryDate], [OrderStatusID], [PickupPointID], [OrderDate], [ReceiptCode], [UserID]) VALUES (5, CAST(N'2011-05-11T00:00:00.000' AS DateTime), 0, 8, CAST(N'2011-05-06T00:00:00.000' AS DateTime), 5, 52)
INSERT [dbo].[Order] ([OrderID], [OrderDeliveryDate], [OrderStatusID], [PickupPointID], [OrderDate], [ReceiptCode], [UserID]) VALUES (6, CAST(N'2011-05-13T00:00:00.000' AS DateTime), 1, 10, CAST(N'2011-05-07T00:00:00.000' AS DateTime), 6, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDeliveryDate], [OrderStatusID], [PickupPointID], [OrderDate], [ReceiptCode], [UserID]) VALUES (7, CAST(N'2011-05-14T00:00:00.000' AS DateTime), 0, 15, CAST(N'2011-05-08T00:00:00.000' AS DateTime), 7, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDeliveryDate], [OrderStatusID], [PickupPointID], [OrderDate], [ReceiptCode], [UserID]) VALUES (8, CAST(N'2011-05-15T00:00:00.000' AS DateTime), 1, 30, CAST(N'2011-05-09T00:00:00.000' AS DateTime), 8, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderDeliveryDate], [OrderStatusID], [PickupPointID], [OrderDate], [ReceiptCode], [UserID]) VALUES (9, CAST(N'2011-05-16T00:00:00.000' AS DateTime), 0, 36, CAST(N'2011-05-10T00:00:00.000' AS DateTime), 9, 53)
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (0, N'F933T5', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (0, N'K478R4', 0)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (1, N'D034T5', 6)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (1, N'S563T4', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (3, N'D816T5', 0)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (3, N'K083T5', 0)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (4, N'B037T5', 0)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (4, N'D831R1', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (5, N'D044T5', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (5, N'R911T5', 7)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (6, N'F933T5', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (6, N'V783T5', 0)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (7, N'H937R3', 0)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (7, N'S039T5', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (8, N'F903T5', 4)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (8, N'F937R4', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (9, N'D816T5', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (9, N'R836R5', 0)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (10, N'D044T5', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Quantity]) VALUES (10, N'D831R1', 5)
SET IDENTITY_INSERT [dbo].[Pickup_Point] ON 

INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'344288, г. Ковров, ул. Чехова, 1', 1)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'614164, г.Ковров,  ул. Степная, 30', 2)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'394242, г. Ковров, ул. Коммунистическая, 43', 3)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'660540, г. Ковров, ул. Солнечная, 25', 4)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'125837, г. Ковров, ул. Шоссейная, 40', 5)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'125703, г. Ковров, ул. Партизанская, 49', 6)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'625283, г. Ковров, ул. Победы, 46', 7)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'614611, г. Ковров, ул. Молодежная, 50', 8)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'454311, г.Ковров, ул. Новая, 19', 9)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'660007, г.Ковров, ул. Октябрьская, 19', 10)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'603036, г. Ковров, ул. Садовая, 4', 11)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'450983, г.Ковров, ул. Комсомольская, 26', 12)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'394782, г. Ковров, ул. Чехова, 3', 13)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'603002, г. Ковров, ул. Дзержинского, 28', 14)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'450558, г. Ковров, ул. Набережная, 30', 15)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'394060, г.Ковров, ул. Фрунзе, 43', 16)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'410661, г. Ковров, ул. Школьная, 50', 17)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'625590, г. Ковров, ул. Коммунистическая, 20', 18)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'625683, г. Ковров, ул. 8 Марта', 19)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'400562, г. Ковров, ул. Зеленая, 32', 20)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'614510, г. Ковров, ул. Маяковского, 47', 21)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'410542, г. Ковров, ул. Светлая, 46', 22)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'620839, г. Ковров, ул. Цветочная, 8', 23)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'443890, г. Ковров, ул. Коммунистическая, 1', 24)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'603379, г. Ковров, ул. Спортивная, 46', 25)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'603721, г. Ковров, ул. Гоголя, 41', 26)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'410172, г. Ковров, ул. Северная, 13', 27)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'420151, г. Ковров, ул. Вишневая, 32', 28)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'125061, г. Ковров, ул. Подгорная, 8', 29)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'630370, г. Ковров, ул. Шоссейная, 24', 30)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'614753, г. Ковров, ул. Полевая, 35', 31)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'426030, г. Ковров, ул. Маяковского, 44', 32)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'450375, г. Ковров ул. Клубная, 44', 33)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'625560, г. Ковров, ул. Некрасова, 12', 34)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'630201, г. Ковров, ул. Комсомольская, 17', 35)
INSERT [dbo].[Pickup_Point] ([Adresses], [PickupPointID]) VALUES (N'190949, г. Ковров, ул. Мичурина, 26', 36)
SET IDENTITY_INSERT [dbo].[Pickup_Point] OFF
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'B025Y5', N'Блюдо', N'Блюдо декоративное flower 35 см Home Philosophy', CAST(1890.0000 AS Decimal(19, 4)), 3, 8, 1, 2, 8, N'шт', 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'B037T5', N'Блюдо', N'Блюдо декоративное Flower 35 см', CAST(690.0000 AS Decimal(19, 4)), 2, 14, 1, 2, 8, N'шт', 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'D034T5', N'Диффузор', N'Диффузор Mikado intense Апельсин с корицей', CAST(800.0000 AS Decimal(19, 4)), 2, 15, 2, 8, 1, N'шт', 20, N'E:\Проекты Windows Forms\Decoration\Decoration\Resources\D034T5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'D044T5', N'Декор настенный', N'Декор настенный', CAST(1790.0000 AS Decimal(19, 4)), 3, 7, 1, 2, 8, N'шт', 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'D826T5', N'Диффузор', N'Диффузор True Scents 45 мл манго', CAST(600.0000 AS Decimal(19, 4)), 2, 13, 2, 4, 1, N'шт', 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'D832R2', N'Растение', N'Декоративное растение 102 см', CAST(1000.0000 AS Decimal(19, 4)), 3, 15, 1, 2, 8, N'шт', 10, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'D947R5', N'Диффузор', N'Диффузор Aroma Harmony Lavender', CAST(500.0000 AS Decimal(19, 4)), 4, 6, 2, 9, 1, N'шт', 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'F837T5', N'Фоторамка', N'Шкатулка для украшений из дерева Stowit', CAST(999.0000 AS Decimal(19, 4)), 2, 15, 2, 10, 6, N'шт', 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'F903T5', N'Фоторамка', N'Фоторамка Gallery 20х30 см', CAST(600.0000 AS Decimal(19, 4)), 2, 3, 2, 10, 6, N'шт', 15, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'F928T5', N'Фоторамка', N'Фоторамка Prisma 10х10 см', CAST(1590.0000 AS Decimal(19, 4)), 2, 13, 1, 7, 6, N'шт', 25, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'F933T5', N'Кашпо', N'Настольное кашпо с автополивом Cube Color', CAST(1400.0000 AS Decimal(19, 4)), 4, 23, 2, 6, 4, N'шт', 20, N'E:\Проекты Windows Forms\Decoration\Decoration\Resources\F933T5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'F937R4', N'Фоторамка', N'Фоторамка 10х15 см 10 серый с патиной/золотой', CAST(359.0000 AS Decimal(19, 4)), 4, 17, 2, 10, 6, N'шт', 15, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'H023R8', N'Часы', N'Часы настенные Ribbon 30,5 см', CAST(5600.0000 AS Decimal(19, 4)), 2, 6, 1, 7, 5, N'шт', 15, N'E:\Проекты Windows Forms\Decoration\Decoration\Resources\H023R8.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'H937R3', N'Часы', N'Часы настенные 6500 30,2 см', CAST(999.0000 AS Decimal(19, 4)), 3, 4, 2, 7, 5, N'шт', 10, N'E:\Проекты Windows Forms\Decoration\Decoration\Resources\H937R3.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'K083T5', N'Аромат', N'Сменный аромат Figue noire 250 мл', CAST(2790.0000 AS Decimal(19, 4)), 2, 6, 1, 1, 1, N'шт', 20, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'K478R4', N'Аромат', N'Аромат для декобукета Esteban', CAST(3500.0000 AS Decimal(19, 4)), 4, 4, 1, 1, 1, N'шт', 30, N'E:\Проекты Windows Forms\Decoration\Decoration\Resources\K478R4.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'K937T4', N'Аромат', N'Деко-букет Кедр 250 мл', CAST(7900.0000 AS Decimal(19, 4)), 2, 17, 1, 1, 1, N'шт', 25, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'P846R4', N'Подставка', N'Подставка для цветочных горшков 55x25x35 см Valley', CAST(1400.0000 AS Decimal(19, 4)), 3, 12, 1, 5, 4, N'шт', 15, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'P927R2', N'Подставка', N'Подставка для цветочных горшков Valley', CAST(4000.0000 AS Decimal(19, 4)), 2, 4, 1, 5, 4, N'шт', 15, N'E:\Проекты Windows Forms\Decoration\Decoration\Resources\P927R2.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'P936E4', N'Подставка', N'Подставка для газет и журналов Zina', CAST(3590.0000 AS Decimal(19, 4)), 4, 9, 1, 7, 4, N'шт', 15, N'E:\Проекты Windows Forms\Decoration\Decoration\Resources\P936E4.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'R836R5', N'Шкатулка', N'Шкатулка для украшений из дерева Stowit', CAST(8000.0000 AS Decimal(19, 4)), 5, 3, 1, 7, 7, N'шт', 30, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'R922T5', N'Шкатулка', N'Шкатулка из керамики Lana 6х7 см', CAST(690.0000 AS Decimal(19, 4)), 2, 4, 1, 2, 7, N'шт', 10, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'S039T5', N'Свеча', N'Свеча True Moods Feel happy', CAST(250.0000 AS Decimal(19, 4)), 2, 18, 2, 4, 3, N'шт', 10, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'S563T4', N'Свеча', N'Свеча в стакане True Scents', CAST(1000.0000 AS Decimal(19, 4)), 3, 12, 2, 4, 3, N'шт', 20, N'E:\Проекты Windows Forms\Decoration\Decoration\Resources\S563T4.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'S936Y5', N'Свеча', N'Свеча в стакане True Scents', CAST(299.0000 AS Decimal(19, 4)), 3, 4, 2, 4, 1, N'шт', 15, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'S937T5', N'Подсвечник', N'Подсвечник 37 см', CAST(2600.0000 AS Decimal(19, 4)), 3, 23, 1, 11, 1, N'шт', 10, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'V432R6', N'Ваза', N'Ваза из фаянса 28,00 x 9,50 x 9,50 см', CAST(1990.0000 AS Decimal(19, 4)), 3, 30, 1, 11, 2, N'шт', 10, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'V483R7', N'Ваза', N'Ваза «Весна» 18 см стекло, цвет прозрачный', CAST(100.0000 AS Decimal(19, 4)), 3, 7, 2, 3, 2, N'шт', 15, N'E:\Проекты Windows Forms\Decoration\Decoration\Resources\V483R7.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'V783T5', N'Ваза', N'Ваза из керамики Betty', CAST(1300.0000 AS Decimal(19, 4)), 2, 13, 1, 2, 2, N'шт', 25, N'E:\Проекты Windows Forms\Decoration\Decoration\Resources\V783T5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCost], [Discount], [ProductQuantityInStock], [ProviderID], [ManufacturerID], [CategoryID], [Measure], [MaxDiscount], [ProductPhoto]) VALUES (N'V937E4', N'Ваза', N'Ваза 18H2535S 30,5 см', CAST(1999.0000 AS Decimal(19, 4)), 3, 21, 2, 11, 2, N'шт', 15, NULL)
SET IDENTITY_INSERT [dbo].[Provider] ON 

INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (1, N'Стокманн')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (2, N'Hoff')
SET IDENTITY_INSERT [dbo].[Provider] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Администратор')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([OrderStatus], [OrderStatusID]) VALUES (N'Новый', 0)
INSERT [dbo].[Status] ([OrderStatus], [OrderStatusID]) VALUES (N'Завершён', 1)
SET IDENTITY_INSERT [dbo].[Status] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Алексеев ', N'Владислав', N'Аркадьевич', N'loginDEbct2018', N'Qg3gff', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Савельева ', N'Евфросиния', N'Арсеньевна', N'loginDEvtg2018', N'ETMNzL', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Никонов ', N'Мэлс', N'Лукьевич', N'loginDEuro2018', N'a1MIcO', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Горшкова ', N'Агафья', N'Онисимовна', N'loginDEpst2018', N'0CyGnX', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Горбачёв ', N'Пантелеймон', N'Германович', N'loginDEpsu2018', N'Vx9cQ{', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Ершова ', N'Иванна', N'Максимовна', N'loginDEzqs2018', N'qM9p7i', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Туров ', N'Денис', N'Геласьевич', N'loginDEioe2018', N'yMPu&2', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Носова ', N'Наина', N'Эдуардовна', N'loginDEcmk2018', N'3f+b0+', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Куликов ', N'Андрей', N'Святославович', N'loginDEfsp2018', N'&dtlI+', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Нестеров ', N'Агафон', N'Георгьевич', N'loginDExcd2018', N'SZXZNL', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Козлов ', N'Геласий', N'Христофорович', N'loginDEvlf2018', N'O5mXc2', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Борисова ', N'Анжелика', N'Анатольевна', N'loginDEanv2018', N'Xiq}M3', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Суханов ', N'Станислав', N'Фролович', N'loginDEzde2018', N'tlO3x&', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Тетерина ', N'Феврония', N'Эдуардовна', N'loginDEriv2018', N'GJ2mHL', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (15, N'Муравьёва ', N'Александра', N'Ростиславовна', N'loginDEhcp2018', N'n2nfRl', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (16, N'Новикова ', N'Лукия', N'Ярославовна', N'loginDEwjv2018', N'ZfseKA', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (17, N'Агафонова ', N'Лариса', N'Михаиловна', N'loginDEiry2018', N'5zu7+}', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (18, N'Сергеева ', N'Агата', N'Юрьевна', N'loginDEgbr2018', N'}+Ex1*', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (19, N'Колобова ', N'Елена', N'Евгеньевна', N'loginDExxv2018', N'+daE|T', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (20, N'Ситников ', N'Николай', N'Филатович', N'loginDEbto2018', N'b1iYMI', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (21, N'Белов ', N'Роман', N'Иринеевич', N'loginDEfbs2018', N'v90Rep', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (22, N'Волкова ', N'Алла', N'Лукьевна', N'loginDEple2018', N'WlW+l8', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (23, N'Кудрявцева ', N'Таисия', N'Игоревна', N'loginDEhhx2018', N'hmCHeQ', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (24, N'Семёнова ', N'Октябрина', N'Христофоровна', N'loginDEayn2018', N'Ka2Fok', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (25, N'Смирнов ', N'Сергей', N'Яковович', N'loginDEwld2018', N'y9HStF', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (26, N'Брагина ', N'Алина', N'Валерьевна', N'loginDEhuu2018', N'X31OEf', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (27, N'Евсеев ', N'Игорь', N'Донатович', N'loginDEmjb2018', N'5mm{ch', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (28, N'Суворов ', N'Илья', N'Евсеевич', N'loginDEdgp2018', N'1WfJjo', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (29, N'Котов ', N'Денис', N'Мартынович', N'loginDEgyi2018', N'|7nYPc', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (30, N'Бобылёва ', N'Юлия', N'Егоровна', N'loginDEmvn2018', N'Mrr9e0', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (31, N'Брагин ', N'Бронислав', N'Георгьевич', N'loginDEfoj2018', N'nhGc+D', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (32, N'Александров ', N'Владимир', N'Дамирович', N'loginDEuuo2018', N'42XmH1', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (33, N'Фокин ', N'Ириней', N'Ростиславович', N'loginDEhsj2018', N's+jrMW', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (34, N'Воронов ', N'Митрофан', N'Антонович', N'loginDEvht2018', N'zMyS8Z', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (35, N'Маслов ', N'Мстислав', N'Антонинович', N'loginDEeqo2018', N'l5CBqA', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (36, N'Щербаков ', N'Георгий', N'Богданович', N'loginDExrf2018', N'mhpRIT', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (37, N'Кириллова ', N'Эмилия', N'Федосеевна', N'loginDEfku2018', N'a1m+8c', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (38, N'Васильев ', N'Серапион', N'Макарович', N'loginDExix2018', N'hzxtnn', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (39, N'Галкина ', N'Олимпиада', N'Владленовна', N'loginDEqrf2018', N'mI8n58', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (40, N'Яковлева ', N'Ксения', N'Онисимовна', N'loginDEhlk2018', N'g0jSed', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (41, N'Калашникова ', N'Александра', N'Владимировна', N'loginDEwoe2018', N'yOtw2F', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (42, N'Медведьева ', N'Таисия', N'Тихоновна', N'loginDExyu2018', N'7Fg}9p', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (43, N'Карпова ', N'Ольга', N'Лукьевна', N'loginDEcor2018', N'2cIrC8', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (44, N'Герасимов ', N'Мстислав', N'Дамирович', N'loginDEqon2018', N'YeFbh6', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (45, N'Тимофеева ', N'Ксения', N'Валерьевна', N'loginDEyfd2018', N'8aKdb0', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (46, N'Горбунов ', N'Вячеслав', N'Станиславович', N'loginDEtto2018', N'qXYDuu', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (47, N'Кошелева ', N'Кира', N'Владиславовна', N'loginDEdal2018', N'cJWXL0', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (48, N'Панфилова ', N'Марина', N'Борисовна', N'loginDEbjs2018', N'Xap2ct', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (49, N'Кудрявцев ', N'Матвей', N'Игоревич', N'loginDEdof2018', N'kD|LRU', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (50, N'Зуев ', N'Эдуард', N'Пантелеймонович', N'loginDEsnh2018', N'GH1_!CrF', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (51, N'Архипова', N'Оливия', N'Дмитриевна', N'loginDErfv2018', N'HS&!_5', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (52, N'Никонова', N'Татьяна', N'Захаровна', N'loginDElaf2018', N'JDkjH12js', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (53, N'Рябова', N'Диана', N'Павловна', N'loginDEwwr2018', N'DTshu21_12', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__OrderStat__6FE99F9F] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[Status] ([OrderStatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__OrderStat__6FE99F9F]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__PickupPoi__70DDC3D8] FOREIGN KEY([PickupPointID])
REFERENCES [dbo].[Pickup_Point] ([PickupPointID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__PickupPoi__70DDC3D8]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__UserID__7B5B524B] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__UserID__7B5B524B]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK__Product__Categor__4F7CD00D] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Categor__4F7CD00D]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK__Product__Provide__49C3F6B7] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Provide__49C3F6B7]
GO
ALTER TABLE [dbo].[User]  WITH NOCHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
/****** Object:  StoredProcedure [dbo].[LoginProc]    Script Date: 25.11.2023 14:04:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[LoginProc]

@login nvarchar(max),
@password nvarchar(max)

as
begin
select * from [User] where UserLogin = @login and UserPassword = @password
end
GO
/****** Object:  StoredProcedure [dbo].[Search]    Script Date: 25.11.2023 14:04:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Search]
@ProductName nvarchar(max),
@Filter nvarchar(max)
as
begin
if @Filter = '0-9,99%'
	select * from [Product] where ProductName like @ProductName and Discount >= 0 and Discount < 10
if @Filter = '10-14,99%'
	select * from [Product] where ProductName like @ProductName and Discount >= 10 and Discount < 15
if @Filter = '15% и более'
	select * from [Product] where ProductName like @ProductName and Discount >= 15
else
	select * from [Product] where ProductName like @ProductName
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 254
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Provider"
            Begin Extent = 
               Top = 13
               Left = 329
               Bottom = 109
               Right = 503
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Manufacturer"
            Begin Extent = 
               Top = 224
               Left = 352
               Bottom = 320
               Right = 545
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Categories"
            Begin Extent = 
               Top = 139
               Left = 565
               Bottom = 235
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3195
         Alias = 1335
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewProduct'
GO
USE [master]
GO
ALTER DATABASE [Trade_Koptsev] SET  READ_WRITE 
GO
