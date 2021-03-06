USE [master]
GO
/****** Object:  Database [ClothingStore]    Script Date: 5/6/2021 11:05:16 AM ******/
CREATE DATABASE [ClothingStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClothingStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.KHUATCHUNG\MSSQL\DATA\ClothingStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ClothingStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.KHUATCHUNG\MSSQL\DATA\ClothingStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ClothingStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClothingStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClothingStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClothingStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClothingStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClothingStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClothingStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClothingStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ClothingStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClothingStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClothingStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClothingStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClothingStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClothingStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClothingStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClothingStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClothingStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ClothingStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClothingStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClothingStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClothingStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClothingStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClothingStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClothingStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClothingStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClothingStore] SET  MULTI_USER 
GO
ALTER DATABASE [ClothingStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClothingStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClothingStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClothingStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ClothingStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ClothingStore] SET QUERY_STORE = OFF
GO
USE [ClothingStore]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Slug] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[OrderBy] [int] NULL,
	[Description] [nvarchar](4000) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__Brand__3214EC072F1F38A3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Slug] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[OrderBy] [int] NULL,
	[Description] [nvarchar](4000) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__Category__3214EC07AC5AD897] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Value] [nvarchar](250) NULL,
	[OrderBy] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfigProduct]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SizeId] [int] NULL,
	[ColorId] [int] NULL,
	[Stock] [int] NULL,
	[Price] [decimal](10, 0) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](250) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Avatar] [nvarchar](max) NULL,
	[BirthDay] [datetime] NULL,
	[IdCard] [nvarchar](250) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](500) NULL,
	[Address] [nvarchar](250) NULL,
	[Note] [nvarchar](4000) NULL,
	[IsAdmin] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__Employee__3214EC074302899F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Import]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[Note] [nvarchar](4000) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportDetail]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImportId] [int] NULL,
	[ConfigProductId] [int] NULL,
	[Stock] [int] NULL,
	[Price] [decimal](10, 0) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[CustomerId] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[Address] [nvarchar](4000) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ConfigProductId] [int] NULL,
	[Stock] [int] NULL,
	[Price] [decimal](10, 0) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Slug] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](4000) NULL,
	[Content] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[BrandId] [int] NULL,
	[OrderBy] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__Product__3214EC07614E2ECC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 5/6/2021 11:05:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[OrderBy] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'Vans', N'vans', N'/Image/Upload/20210506012713logo.jpg', 1, N'Chung', 1, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2021-05-06T10:49:47.207' AS DateTime), 1, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, N'Converse', N'converse', N'/Image/Upload/20210506012813Library.png', 1, NULL, NULL, CAST(N'2021-05-06T10:44:10.207' AS DateTime), NULL, CAST(N'2021-05-06T10:51:05.607' AS DateTime), 1, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (3, N'Chung', N'chung', N'~/Image/Static/avatar.jpg', 1, N'okok', NULL, CAST(N'2021-05-06T10:46:37.557' AS DateTime), NULL, CAST(N'2021-05-06T10:46:38.273' AS DateTime), 1, 1)
INSERT [dbo].[Brand] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (4, N'Converse', N'converse', N'/Image/Upload/20210506012713logo.jpg', 1, N'111', NULL, CAST(N'2021-05-06T10:51:25.190' AS DateTime), NULL, CAST(N'2021-05-06T10:52:43.110' AS DateTime), 1, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (5, N'Nguyen Duc D', N'nguyen-duc-d', N'/Image/Static/avatar.jpg', 2, N'123123', NULL, CAST(N'2021-05-06T10:52:32.133' AS DateTime), NULL, CAST(N'2021-05-06T10:52:32.900' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'Áo', NULL, N'~/Image/Static/avatar.jpg', 0, N'T-Shirt', 1, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'T-Shirt Custom', NULL, N'~/Image/Upload/Static/avatar.jpg', N'......', N'..........', 1, 1, 1, 1, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Brand] ADD  CONSTRAINT [DF__Brand__CreatedDa__2C3393D0]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Brand] ADD  CONSTRAINT [DF__Brand__UpdatedDa__2D27B809]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__Create__300424B4]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__Update__30F848ED]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Color] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Color] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ConfigProduct] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ConfigProduct] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__Create__24927208]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__Update__25869641]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Import] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Import] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ImportDetail] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ImportDetail] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Created__3B75D760]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Updated__3C69FB99]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Size] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Size] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
USE [master]
GO
ALTER DATABASE [ClothingStore] SET  READ_WRITE 
GO
