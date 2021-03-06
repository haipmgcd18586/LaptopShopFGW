USE [master]
GO
/****** Object:  Database [ShopOnline]    Script Date: 10/7/2021 11:31:23 AM ******/
CREATE DATABASE [ShopOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShopOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShopOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopOnline] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopOnline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopOnline] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopOnline] SET  MULTI_USER 
GO
ALTER DATABASE [ShopOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopOnline] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopOnline', N'ON'
GO
ALTER DATABASE [ShopOnline] SET QUERY_STORE = OFF
GO
USE [ShopOnline]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 10/7/2021 11:31:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ProducerID] [nvarchar](10) NULL,
	[ProducerName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/7/2021 11:31:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [nvarchar](10) NOT NULL,
	[TypeProductID] [nvarchar](10) NULL,
	[ProducerID] [nvarchar](10) NULL,
	[ProductName] [nvarchar](max) NULL,
	[Setting] [text] NULL,
	[Image] [nvarchar](50) NULL,
	[Image1] [nvarchar](50) NULL,
	[Image2] [nvarchar](50) NULL,
	[Image3] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[View] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 10/7/2021 11:31:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[TypeProductID] [nvarchar](10) NULL,
	[TypeProductName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Producer] ([ProducerID], [ProducerName]) VALUES (N'NSX01', N'Macbook')
INSERT [dbo].[Producer] ([ProducerID], [ProducerName]) VALUES (N'NSX02', N'Acer')
INSERT [dbo].[Producer] ([ProducerID], [ProducerName]) VALUES (N'NSX03', N'Asus')
INSERT [dbo].[Producer] ([ProducerID], [ProducerName]) VALUES (N'NSX04', N'Dell')
GO
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP01', N'P01', N'NSX01', N'Macbook Air 2017 i5 128GB', N'No data', N'1.png', NULL, NULL, NULL, 18490000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP02', N'P01', N'NSX01', N'MacBook Pro 2020 13 inch', N'No data', N'2.png', NULL, NULL, NULL, 18490000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP03', N'P02', N'NSX01', N'Apple MacBook Air M1 256GB', N'No data', N'3.png', NULL, NULL, NULL, 18490000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP04', N'P03', N'NSX01', N'Apple MacBook Pro 13 Touch Bar M1 256GB', N'No data', N'4.png', NULL, NULL, NULL, 18490000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP05', N'P01', N'NSX02', N'Laptop Acer Nitro Gaming AN515', N'No data', N'5.png', NULL, NULL, NULL, 25990000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP06', N'P01', N'NSX02', N'Laptop Acer Predator Gaming PH315', N'No data', N'6.png', NULL, NULL, NULL, 25990000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP07', N'P02', N'NSX02', N'Laptop Acer Nitro Gaming AN515-57-77KU i7 11800H', N'No data', N'7.png', NULL, NULL, NULL, 25990000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP08', N'P03', N'NSX02', N'Laptop Acer Predator Helios Gaming PH315-54-78W5 i7 11800H', N'No data', N'8.png', NULL, NULL, NULL, 25990000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP09', N'P01', N'NSX03', N'Asus ZenBook Flip 13 UX363EA-HP130T', N'No data', N'9.png', NULL, NULL, NULL, 32120000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP10', N'P02', N'NSX03', N'
ASUS Vivobook F512J (Core I3-1005G1, Ram 4G,', N'No data', N'10.png', NULL, NULL, NULL, 32120000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP11', N'P01', N'NSX03', N'Asus Vivobook Pro 14 OLED M3401QA-KM040T', N'No data', N'11.png', NULL, NULL, NULL, 32120000, 0, 0, N'0         ')
INSERT [dbo].[Product] ([ProductID], [TypeProductID], [ProducerID], [ProductName], [Setting], [Image], [Image1], [Image2], [Image3], [Price], [SoLuongDaBan], [View], [TinhTrang]) VALUES (N'SP12', N'P02', N'NSX03', N'Asus E210MA-GJ353T', N'No data', N'12.png', NULL, NULL, NULL, 32120000, 0, 0, N'0         ')
GO
INSERT [dbo].[TypeProduct] ([TypeProductID], [TypeProductName]) VALUES (N'P01', N'Good')
INSERT [dbo].[TypeProduct] ([TypeProductID], [TypeProductName]) VALUES (N'P02', N'Normal')
INSERT [dbo].[TypeProduct] ([TypeProductID], [TypeProductName]) VALUES (N'P03', N'Luxury')
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_View]  DEFAULT ((0)) FOR [View]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
USE [master]
GO
ALTER DATABASE [ShopOnline] SET  READ_WRITE 
GO
