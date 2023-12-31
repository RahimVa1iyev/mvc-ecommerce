USE [master]
GO
/****** Object:  Database [JuanDb]    Script Date: 17.07.2023 03:47:38 ******/
CREATE DATABASE [JuanDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JuanDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\JuanDb.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JuanDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\JuanDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [JuanDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JuanDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JuanDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JuanDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JuanDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JuanDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JuanDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [JuanDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JuanDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JuanDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JuanDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JuanDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JuanDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JuanDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JuanDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JuanDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JuanDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JuanDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JuanDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JuanDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JuanDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JuanDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JuanDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [JuanDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JuanDb] SET RECOVERY FULL 
GO
ALTER DATABASE [JuanDb] SET  MULTI_USER 
GO
ALTER DATABASE [JuanDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JuanDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JuanDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JuanDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JuanDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JuanDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'JuanDb', N'ON'
GO
ALTER DATABASE [JuanDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [JuanDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [JuanDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[IsAdmin] [bit] NULL,
	[ConnectionId] [nvarchar](max) NULL,
	[IsOnline] [bit] NULL,
	[LastOnlineAt] [datetime2](7) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BasketItems]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasketItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_BasketItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campanies]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campanies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CampanyTitle] [nvarchar](max) NULL,
	[DisPrice] [nvarchar](max) NULL,
	[CampanyDes] [nvarchar](max) NULL,
	[BacgroundImg] [nvarchar](max) NULL,
 CONSTRAINT [PK_Campanies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImageName] [nvarchar](100) NOT NULL,
	[ImageStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[UnitSalePrice] [decimal](18, 2) NOT NULL,
	[UnitCostPrice] [decimal](18, 2) NOT NULL,
	[UnitDiscountedPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[FullName] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](65) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Address] [nvarchar](65) NOT NULL,
	[Text] [text] NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReviews]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[Rate] [tinyint] NOT NULL,
	[Text] [text] NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ProductReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SalePrice] [money] NOT NULL,
	[CostPrice] [money] NOT NULL,
	[DiscountedPrice] [money] NOT NULL,
	[Description] [text] NOT NULL,
	[StockStatus] [bit] NOT NULL,
	[Gender] [tinyint] NOT NULL,
	[IsNew] [bit] NOT NULL,
	[Rate] [tinyint] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSizes]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSizes](
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
 CONSTRAINT [PK_ProductSizes] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstTitle] [nvarchar](20) NOT NULL,
	[SecondTitle] [nvarchar](20) NOT NULL,
	[BackgroundColor] [nvarchar](20) NOT NULL,
	[IconImage] [nvarchar](100) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Key] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order] [int] NOT NULL,
	[FirstTitle] [nvarchar](25) NOT NULL,
	[SecondTitle] [nvarchar](25) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[ButtonText] [nvarchar](25) NOT NULL,
	[ButtonUrl] [nvarchar](25) NOT NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsors]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sponsors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserContacts]    Script Date: 17.07.2023 03:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[FullName] [nvarchar](25) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](80) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Text] [nvarchar](200) NULL,
 CONSTRAINT [PK_UserContacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230706191240_AddJuanDbWithTables', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230706202416_ChangeConfiguration', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230706214208_AddDataAnnotationAllTables', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230707174334_GenderandProductGenderTable', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230707204507_ChangeSliderDescriptionLength', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230707213602_DeleteGenderTableandAddGenderPropert', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230708162423_ProductDecimalPropertitoMoney', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230708195343_AddServiceTable', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230709142614_AppUserAdd', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230709233338_AddBasketItem', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230710122209_AddIsRoleToAppUser', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230710132606_AddtoIsAdminProp', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230710203631_CreateOrdersTable', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230710203918_AddDataAnnotationOrdersTableProp', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230710222413_deleteRequiredFromText', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230711215340_AddBookReview', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230711215704_ChangeReviewName', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230711222152_AddRatePropToProduct', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230711222851_DateToReview', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230713142940_AddSettingTable', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230713151152_AddCampanyTable', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230714124338_AddSponsorTable', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230715144951_ChangeTableAppUser', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230715211337_AddUserContactTable', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230715211556_AddToDatabaseContacttable', N'6.0.19')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230715213737_removerequiredfromtext', N'6.0.19')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'236e6b80-b6d9-4616-ba72-9b4684b59e23', N'SuperAdmin', N'SUPERADMIN', N'd5a12f4f-7745-4cbb-aa58-cf18128211e5')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2c3feb16-986d-494c-a7a1-f02aae54dcd4', N'Admin', N'ADMIN', N'2e82ed9a-f8a0-4fa9-b3e1-341731bdc3fd')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6e4adbfd-ff86-4568-8bc2-b4868a058345', N'Member', N'MEMBER', N'4e8a7187-4a50-4eb5-9489-d57bf135ceab')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7a865005-1602-43f6-bead-35efdac72dc2', N'Hr', N'HR', N'df671172-d9cd-47cf-8b21-af813d212c64')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd35aaaca-bd65-49fd-93bb-215833043d1e', N'236e6b80-b6d9-4616-ba72-9b4684b59e23')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1d25b90e-deb2-476a-a118-54d5590ee35c', N'2c3feb16-986d-494c-a7a1-f02aae54dcd4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2ad0397f-8bd1-4b23-99f7-da6414767e0a', N'6e4adbfd-ff86-4568-8bc2-b4868a058345')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e2cafe5f-a23a-4492-a8b4-9e6d05920d68', N'6e4adbfd-ff86-4568-8bc2-b4868a058345')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fc03cd3b-194f-4f11-9cd9-649006d2107c', N'6e4adbfd-ff86-4568-8bc2-b4868a058345')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAdmin], [ConnectionId], [IsOnline], [LastOnlineAt]) VALUES (N'1d25b90e-deb2-476a-a118-54d5590ee35c', N'AppUser', N'RahimValiyev', N'Admin', N'ADMIN', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEOctEbmhkS7BIC8qozHSP1VpIhtsq5Z+CB+UP2YHP7z4nZtWztA+yIyOeFNf+ZJ3gA==', N'VJETDSRCJD5YBZLEUAMQ4MXY7WP3NGT5', N'b1d525ce-42da-4f41-8e32-4e61ba0710da', NULL, 0, 0, NULL, 1, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAdmin], [ConnectionId], [IsOnline], [LastOnlineAt]) VALUES (N'2ad0397f-8bd1-4b23-99f7-da6414767e0a', N'AppUser', N'RahimValiyev', N'rahomcode', N'RAHOMCODE', N'rahimav@code.edu.az', N'RAHIMAV@CODE.EDU.AZ', 1, N'AQAAAAEAACcQAAAAEOygLMXGfX33uERaEG0u7IsHiEQL/9Cs/I1TfwdmWCHTCszmInN8LqNiHIbbHeTRhQ==', N'QTLP2FOBBRO4GDRZSGIMLU6FCMKD4UGL', N'ebcdb161-9434-4262-bc4f-4126e20127c6', N'0513335195', 0, 0, NULL, 1, 0, 0, N'VghvfqGMvO0Op6eZA2AbvQ', 1, CAST(N'2023-07-16T23:03:34.7451612' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAdmin], [ConnectionId], [IsOnline], [LastOnlineAt]) VALUES (N'd35aaaca-bd65-49fd-93bb-215833043d1e', N'AppUser', N'SuperAdmin', N'SuperAdmin', N'SUPERADMIN', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEPi3F1zrd1VW8BBgPQ39APmEJS+iELhMVitRCnFNEGY/28hIQ+yf9bVjXk1FYdnQnA==', N'ZNZVBO3W2C5O3RK3R7SGLUCWMIHNRZA4', N'53d2e2ce-284b-4080-9fb1-807408b98d3c', NULL, 0, 0, NULL, 1, 0, 1, NULL, 0, CAST(N'2023-07-17T03:36:27.2852625' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAdmin], [ConnectionId], [IsOnline], [LastOnlineAt]) VALUES (N'e2cafe5f-a23a-4492-a8b4-9e6d05920d68', N'AppUser', N'RahimValiyev', N'rahimvaliyev', N'RAHIMVALIYEV', N'rahimvaliyev99@gmail.com', N'RAHIMVALIYEV99@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFmESEtzm4escpMQMKpjqz+Q+F8dPKzCTgCbl0Q4NzLmi7+XYSAxxilvLQ69rLPYQQ==', N'N3HWE46PXK64F43ANZ36VLDNW3SH3V7W', N'80f3aa8d-c04f-4397-b43a-32f55e88461b', N'0513335195', 0, 0, NULL, 1, 0, 0, NULL, 0, CAST(N'2023-07-17T01:49:18.0449211' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [IsAdmin], [ConnectionId], [IsOnline], [LastOnlineAt]) VALUES (N'fc03cd3b-194f-4f11-9cd9-649006d2107c', N'AppUser', N'Aysen', N'Pionocu', N'PIONOCU', N'valiyevaaysen2010@gmail.com', N'VALIYEVAAYSEN2010@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMYHmoWEaAwSl2hpPh/O5yxPKIal2dSd62t2Sqg6qmXa3tBTR6ewLTQ8jU6zhZ7ClA==', N'BEUOCANPWNRADETSW7HEDHFTKIS2WTER', N'4d747b8c-97f1-43ea-8bb9-50e1f680ad55', N'555555555555555', 0, 0, NULL, 1, 0, 0, NULL, 0, CAST(N'2023-07-16T16:14:46.6709511' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[BasketItems] ON 

INSERT [dbo].[BasketItems] ([Id], [ProductId], [AppUserId], [Count]) VALUES (20, 5, N'e2cafe5f-a23a-4492-a8b4-9e6d05920d68', 1)
SET IDENTITY_INSERT [dbo].[BasketItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name]) VALUES (3, N'Nike')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (4, N'Adidas')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (5, N'Puma')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (6, N'Reebok')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (7, N'Converse')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (8, N'Gucci')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (9, N'Balenciaga')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (10, N'Prada')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (11, N'Salomo')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (12, N'Timberland')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Campanies] ON 

INSERT [dbo].[Campanies] ([Id], [CampanyTitle], [DisPrice], [CampanyDes], [BacgroundImg]) VALUES (1, N'SPORTS SHOES', N'20', N'FOR SPORTS MEN', N'https://localhost:7012/assets/img/banner/banner-1.jpg')
INSERT [dbo].[Campanies] ([Id], [CampanyTitle], [DisPrice], [CampanyDes], [BacgroundImg]) VALUES (2, N'SPORTS SHOES', N'20', N'FOR SPORTS MEN', N'https://localhost:7012/assets/img/banner/banner-2.jpg')
SET IDENTITY_INSERT [dbo].[Campanies] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Athletic Shoe')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Casual Shoe')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'High Heel')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Sandal')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Boot')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Slipper')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Flat')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (20, N'dsadsa')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (21, N'sasa')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (22, N'saas')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name]) VALUES (1, N'Red')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (2, N'Blue')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (3, N'Green')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (4, N'Black')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (5, N'White')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (6, N'Yellow')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (7, N'Orange')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (8, N'Purple')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (9, N'Brown')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (10, N'Pink')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (11, N'Grey')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (12, N'Gold')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (13, N'Silver')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (14, N'Light Green')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (11, 3, N'1dd28b6e-76a1-4c88-90c2-a4471319de94pr-1.png', 1)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (12, 3, N'edc6728e-faaf-4c66-8fda-f37d34eb9795pr-2.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (13, 3, N'3e4d0f90-7e0f-46f1-9122-c9961193c25apr-3.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (14, 3, N'e9429f4c-8214-429b-ae84-d66a5bcff97cpr4.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (15, 3, N'21f48ab0-16f6-4838-bc1c-7c5a8c53af79pr5.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (16, 4, N'148c1865-563b-4469-9707-0e8c53faff84pr6.png', 1)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (17, 4, N'00e95c29-a78b-403b-a84f-880be7b69132pr7.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (18, 4, N'c24274eb-17e2-42d9-8eb3-e05b54c553a2pr8.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (19, 4, N'9b7500e6-aa3b-42d8-9274-f389f685c43cpr9.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (20, 5, N'c2683452-5132-481f-a214-e8f0cee4c201pr10.png', 1)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (25, 6, N'7c94e805-564d-4daa-ab29-07312dd9fc20pr15.png', 1)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (28, 7, N'e4abc190-2c60-43bf-a61e-98db97498897pr18.png', 1)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (31, 7, N'3ea78512-186b-40cd-9f4b-95da61d13429pr21.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (32, 8, N'8d67a8b7-33c2-4e44-9abf-63d9f5a7737fpr22.png', 1)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (33, 8, N'a6555749-8cc1-4a5d-95f9-0a348a556218pr23.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (34, 8, N'26460472-2419-4b57-969e-3839d07f2f47pr24.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (35, 8, N'ca811d47-0d50-4d1a-a7b6-1f44b7caebb0pr25.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (36, 9, N'e3e72bec-60d5-4724-9edb-2676d7522933pr26.png', 1)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (37, 9, N'687bdc1a-7cc4-4745-be36-ff6750f19171pr27.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (38, 9, N'331c6059-0a23-4145-8c0a-b6af4930e73epr28.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (39, 9, N'4c10fa6b-11fc-4d53-98d3-067fa70374ebpr29.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (40, 10, N'8c9dded3-a5d3-4f04-89d7-94ee64773c77pr32.png', 1)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (41, 10, N'bb2bc1c4-3f40-4090-bd32-c35aeba6a415pr33.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (42, 10, N'4466d715-f75a-4da5-a0e6-2312e0be6543pr30.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (43, 10, N'8a2b5d2e-07af-4d8e-9451-cf1359baf19epr31.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (50, 7, N'f8617805-770c-4011-b690-9edf8ea20c70pr20.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (51, 5, N'810b8393-1d5c-46ea-bcdb-08803c8ce4d7pr11.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (52, 5, N'd12b9bfe-af24-4443-b1b3-10e694535ecapr12.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (53, 5, N'755ed4de-17d5-4a55-bb83-76fbc4b04772pr13.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (54, 5, N'75a47ed6-52ce-4007-8dd0-a98206eccb0bpr14.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (55, 6, N'36eb9b35-89be-4089-aadd-617b532b8965pr16.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (56, 6, N'f5961d4b-d13e-4d1c-ba86-885d7923e68dpr17.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (57, 12, N'39b8c329-82c6-4e83-82b3-b480c9b24a0dpr.23.png', 1)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (58, 12, N'1dd93e58-f32c-4bfd-9075-7ca0d4b76af0pr.24.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (59, 12, N'94c3c3d6-2301-4391-8d55-9e035d51449fpr.25.png', 0)
INSERT [dbo].[Images] ([Id], [ProductId], [ImageName], [ImageStatus]) VALUES (60, 12, N'5bdc7e48-7ab3-4384-891b-32ab9ae724a0pr.26.png', 0)
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (20, 6, 14, 1, CAST(90.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (21, 4, 15, 1, CAST(140.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (22, 6, 16, 1, CAST(90.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (23, 3, 17, 1, CAST(150.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (24, 5, 18, 1, CAST(140.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (25, 5, 19, 1, CAST(140.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (26, 4, 20, 1, CAST(140.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (27, 4, 21, 1, CAST(140.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (28, 4, 22, 1, CAST(140.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (29, 4, 23, 1, CAST(140.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (30, 5, 24, 1, CAST(140.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (31, 6, 25, 1, CAST(90.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (32, 3, 26, 1, CAST(150.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (33, 4, 27, 1, CAST(140.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (34, 4, 28, 1, CAST(140.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (35, 6, 29, 1, CAST(90.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (36, 4, 30, 1, CAST(140.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (37, 5, 31, 1, CAST(140.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (38, 5, 32, 1, CAST(140.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (39, 5, 33, 1, CAST(140.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (40, 5, 34, 1, CAST(140.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (41, 6, 35, 1, CAST(90.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (42, 7, 36, 1, CAST(140.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (43, 6, 37, 1, CAST(90.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (44, 4, 37, 2, CAST(140.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (45, 3, 37, 1, CAST(150.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (46, 4, 38, 1, CAST(140.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (47, 5, 38, 1, CAST(140.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderItems] ([Id], [ProductId], [OrderId], [Count], [UnitSalePrice], [UnitCostPrice], [UnitDiscountedPrice]) VALUES (48, 6, 38, 1, CAST(90.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (14, NULL, CAST(N'2023-07-15T13:29:56.9762283' AS DateTime2), N'dasdas', N'rahimvaliyev99@gmail.com', N'45454545', N'Samir Cəfərov', NULL, CAST(80.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (15, NULL, CAST(N'2023-07-15T13:34:53.4241696' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'11515155', N'Samir Cəfərov', NULL, CAST(110.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (16, NULL, CAST(N'2023-07-15T13:36:06.0797542' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'4545545454', N'Samir Cəfərov', NULL, CAST(80.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (17, NULL, CAST(N'2023-07-15T13:38:38.8157325' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'sadsadasds', N'Samir Cəfərov', NULL, CAST(130.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (18, NULL, CAST(N'2023-07-15T13:40:46.7901761' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'54545', N'Samir Cəfərov', NULL, CAST(130.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (19, NULL, CAST(N'2023-07-15T13:41:47.6923594' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'a4', N'Samir Cəfərov', NULL, CAST(130.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (20, NULL, CAST(N'2023-07-15T13:44:50.3244767' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'5454545', N'Samir Cəfərov', NULL, CAST(110.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (21, NULL, CAST(N'2023-07-15T13:46:06.8358094' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'4545544545', N'Samir Cəfərov', NULL, CAST(110.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (22, NULL, CAST(N'2023-07-15T13:51:49.8871366' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'54545445', N'Samir Cəfərov', NULL, CAST(110.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (23, NULL, CAST(N'2023-07-15T13:54:43.3748991' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'12131131', N'Samir Cəfərov', NULL, CAST(110.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (24, NULL, CAST(N'2023-07-15T13:59:41.8244439' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'545454545', N'Samir Cəfərov', NULL, CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (25, NULL, CAST(N'2023-07-15T14:01:38.1878897' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'45454545', N'Samir Cəfərov', NULL, CAST(80.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (26, NULL, CAST(N'2023-07-15T14:05:21.1918038' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'545454', N'Samir Cəfərov', NULL, CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (27, NULL, CAST(N'2023-07-15T14:07:12.5312193' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'454644', N'Samir Cəfərov', NULL, CAST(110.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (28, NULL, CAST(N'2023-07-15T14:09:44.9207025' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'564646', N'Samir Cəfərov', NULL, CAST(110.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (29, NULL, CAST(N'2023-07-15T14:11:54.0853972' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'46464546', N'Samir Cəfərov', NULL, CAST(80.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (30, NULL, CAST(N'2023-07-15T14:14:01.2574596' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'545454', N'Samir Cəfərov', NULL, CAST(110.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (31, NULL, CAST(N'2023-07-15T14:14:29.7684740' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'4544545446', N'Samir Cəfərov', NULL, CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (32, NULL, CAST(N'2023-07-15T14:16:44.5456621' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'5545454', N'Samir Cəfərov', NULL, CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (33, NULL, CAST(N'2023-07-15T14:37:47.7713510' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'5454545455', N'Samir Cəfərov', NULL, CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (34, NULL, CAST(N'2023-07-15T14:38:27.5169843' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'54546544', N'Samir Cəfərov', NULL, CAST(130.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (35, NULL, CAST(N'2023-07-15T14:39:39.8740322' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'454644', N'Samir Cəfərov', NULL, CAST(80.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (36, N'fc03cd3b-194f-4f11-9cd9-649006d2107c', CAST(N'2023-07-16T16:05:13.6943529' AS DateTime2), N'Aysen', N'valiyevaaysen2010@gmail.com', N'555555555555555', N'Kalifornia', N'Tez catdirin gozduyemmirem ayyaqim yoxdu cole cixmaga', CAST(120.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (37, NULL, CAST(N'2023-07-16T23:02:39.2401948' AS DateTime2), N'Rahim', N'rahimvaliyev99@gmail.com', N'54544554', N'Samir Cəfərov', N'SS', CAST(430.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [CreatedAt], [FullName], [Email], [Phone], [Address], [Text], [TotalAmount], [Status]) VALUES (38, N'2ad0397f-8bd1-4b23-99f7-da6414767e0a', CAST(N'2023-07-16T23:03:34.5354950' AS DateTime2), N'RahimValiyev', N'rahimav@code.edu.az', N'0513335195', N'Samir Cəfərov', N'sada', CAST(320.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductReviews] ON 

INSERT [dbo].[ProductReviews] ([Id], [ProductId], [AppUserId], [Rate], [Text], [CreatedAt]) VALUES (10, 5, N'e2cafe5f-a23a-4492-a8b4-9e6d05920d68', 5, N'asdsd', CAST(N'2023-07-15T01:51:27.9774206' AS DateTime2))
INSERT [dbo].[ProductReviews] ([Id], [ProductId], [AppUserId], [Rate], [Text], [CreatedAt]) VALUES (11, 3, N'e2cafe5f-a23a-4492-a8b4-9e6d05920d68', 5, N'dasdadsd', CAST(N'2023-07-15T01:52:33.0419471' AS DateTime2))
INSERT [dbo].[ProductReviews] ([Id], [ProductId], [AppUserId], [Rate], [Text], [CreatedAt]) VALUES (12, 4, N'fc03cd3b-194f-4f11-9cd9-649006d2107c', 2, N'Cirilmayan ayyaqqabidi xosuma geldi', CAST(N'2023-07-16T16:08:26.5178849' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductReviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [ColorId], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [Gender], [IsNew], [Rate]) VALUES (3, 1, 3, 1, N'Nike Air Jordan', 150.0000, 120.0000, 130.0000, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 1, 1, 0, 5)
INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [ColorId], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [Gender], [IsNew], [Rate]) VALUES (4, 1, 3, 11, N'Nike Air Jordan', 140.0000, 130.0000, 110.0000, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 1, 1, 1, 2)
INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [ColorId], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [Gender], [IsNew], [Rate]) VALUES (5, 1, 3, 6, N'Nike Air Jordan', 140.0000, 100.0000, 130.0000, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 1, 1, 0, 5)
INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [ColorId], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [Gender], [IsNew], [Rate]) VALUES (6, 1, 4, 4, N'Adidas Ultra Boost', 90.0000, 60.0000, 80.0000, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 1, 3, 1, 5)
INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [ColorId], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [Gender], [IsNew], [Rate]) VALUES (7, 1, 5, 9, N'PUMA RS-X', 140.0000, 100.0000, 120.0000, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 1, 3, 1, 3)
INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [ColorId], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [Gender], [IsNew], [Rate]) VALUES (8, 1, 6, 5, N'Classic Leather Shoes', 100.0000, 80.0000, 60.0000, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 1, 3, 0, 3)
INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [ColorId], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [Gender], [IsNew], [Rate]) VALUES (9, 5, 12, 9, N'Timberland Earthkeepers ', 150.0000, 120.0000, 130.0000, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 1, 1, 1, 4)
INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [ColorId], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [Gender], [IsNew], [Rate]) VALUES (10, 1, 8, 12, N'Gucci Rhyton', 150.0000, 120.0000, 130.0000, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 1, 3, 0, 2)
INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [ColorId], [Name], [SalePrice], [CostPrice], [DiscountedPrice], [Description], [StockStatus], [Gender], [IsNew], [Rate]) VALUES (12, 2, 4, 5, N'XT-6 rubber-trimmed', 150.0000, 110.0000, 130.0000, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 1, 1, 0, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (3, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (6, 4)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (3, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (6, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (7, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (10, 5)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (3, 6)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (5, 6)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (6, 6)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (7, 6)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (10, 6)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (5, 7)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (7, 7)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (10, 7)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (4, 8)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (7, 8)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (8, 8)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (10, 8)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (12, 8)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (4, 9)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (6, 9)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (8, 9)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (12, 9)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (4, 10)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (5, 10)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (6, 10)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (8, 10)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (9, 10)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (12, 10)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (3, 11)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (5, 11)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (8, 11)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (9, 11)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (9, 12)
INSERT [dbo].[ProductSizes] ([ProductId], [SizeId]) VALUES (9, 13)
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [FirstTitle], [SecondTitle], [BackgroundColor], [IconImage]) VALUES (1, N'FREE SHIPPING', N'Free shipping on all', N'#fcedda', N'3b6089ad-4da5-472c-af0d-1c88fef82671policy-1.png')
INSERT [dbo].[Services] ([Id], [FirstTitle], [SecondTitle], [BackgroundColor], [IconImage]) VALUES (2, N'ONLINE SUPPORT', N'Online support 24 ho', N'#f2fbcb', N'a2800ea3-3b14-43d9-b8ac-0ac7a3df8cfbpolicy-2.png')
INSERT [dbo].[Services] ([Id], [FirstTitle], [SecondTitle], [BackgroundColor], [IconImage]) VALUES (3, N'MONEY RETURN', N'Back guarantee under', N'#f7d8f9', N'abbd1e0f-b744-4341-a2f5-0e515f70d95cpolicy-3.png')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'HeaderLogo', N'https://localhost:7012/assets/img/logo/logo.png')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Location', N'184 Main Rd E, St Albans VIC 3021, Australia')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Mail', N'yourmail@gmail.com')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'NewPr', N'https://localhost:7012/assets/img/banner/banner-3.jpg')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Phone', N'+ 00 254 254565')
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (1, N'32')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (2, N'33')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (3, N'34')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (4, N'35')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (5, N'36')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (6, N'37')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (7, N'38')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (8, N'39')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (9, N'40')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (10, N'41')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (11, N'42')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (12, N'43')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (13, N'44')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (15, N'45')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Order], [FirstTitle], [SecondTitle], [Description], [ButtonText], [ButtonUrl], [Image]) VALUES (1, 1, N'Top Selling!', N'New Collection', N'Lorem ipsum dolor sit amet, consectetur  adipisicing elit       ', N'Shop Now', N'shop/index', N'49dfce3b-eb95-42b9-b8a9-7ec4b1157209slider-1.jpg')
INSERT [dbo].[Sliders] ([Id], [Order], [FirstTitle], [SecondTitle], [Description], [ButtonText], [ButtonUrl], [Image]) VALUES (2, 3, N'Best Selling!', N'Top Collection', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incidid', N'Shop Now', N'shop/index', N'b8b61e22-80e4-4181-8cb4-a1e22e7b4b54slider-2.jpg')
INSERT [dbo].[Sliders] ([Id], [Order], [FirstTitle], [SecondTitle], [Description], [ButtonText], [ButtonUrl], [Image]) VALUES (7, 2, N'Black Friday', N'Free Weekend', N'Nə alırsan al 1 Man', N'Shop Now', N'shop/index', N'86a4479b-c8bb-4f48-a36a-fdaf77a76c66b25def263cc819c98edcf9e43aabbfaa.jpg')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Sponsors] ON 

INSERT [dbo].[Sponsors] ([Id], [Logo]) VALUES (1, N'br1.png')
INSERT [dbo].[Sponsors] ([Id], [Logo]) VALUES (2, N'br2.png')
INSERT [dbo].[Sponsors] ([Id], [Logo]) VALUES (3, N'br3.png')
INSERT [dbo].[Sponsors] ([Id], [Logo]) VALUES (4, N'br4.png')
SET IDENTITY_INSERT [dbo].[Sponsors] OFF
GO
SET IDENTITY_INSERT [dbo].[UserContacts] ON 

INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (2, NULL, N'Rahim', N'0513335195', N'rahimvaliyev99@gmail.com', N'Test', N'Salam')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (3, NULL, N'Rahim', N'0513335195', N'rahimvaliyev99@gmail.com', N'Test', N'nnnj')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (4, NULL, N'Rahim', N'0513335195', N'rahimvaliyev99@gmail.com', N'Test', N'SAL')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (5, NULL, N'Rahim', N'0513335195', N'rahimvaliyev99@gmail.com', N'Test', N'xfg')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (6, NULL, N'Rahim', N'0513335195', N'rahimvaliyev99@gmail.com', N'Test', N'dfgc')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (7, N'e2cafe5f-a23a-4492-a8b4-9e6d05920d68', N'Rahim', N'0513335195', N'rahimvaliyev99@gmail.com', N'Test', N'vvgvhh')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (8, NULL, N'Xalid', N'45454545', N'xalid@gmail.com', N'Test2', N'dasdas')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (9, N'e2cafe5f-a23a-4492-a8b4-9e6d05920d68', N'RahimValiyev', N'0513335195', N'rahimvaliyev99@gmail.com', N'sdasds', N'asdasdd')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (10, N'e2cafe5f-a23a-4492-a8b4-9e6d05920d68', N'RahimValiyev', N'0513335195', N'rahimvaliyev99@gmail.com', N'asdas', N'adas')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (11, N'e2cafe5f-a23a-4492-a8b4-9e6d05920d68', N'RahimValiyev', N'0513335195', N'rahimvaliyev99@gmail.com', N'sadsad', N'asdasds')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (12, NULL, N'dasdad', N'dsadasda', N'asdsdaad', N'sadsads', N'asdsad')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (13, NULL, N'asdasdasd', N'sadasd', N'sadasd', N'asdsad', N'sadsad')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (14, NULL, N'asdasd', N'asdasd', N'sadasd', N'asdas', N'asdas')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (15, NULL, N'sdasd', N'asdasd', N'asdasd@sada', N'asdas', N'adasd')
INSERT [dbo].[UserContacts] ([Id], [AppUserId], [FullName], [Phone], [Email], [Subject], [Text]) VALUES (16, N'fc03cd3b-194f-4f11-9cd9-649006d2107c', N'Aysen', N'555555555555555', N'valiyevaaysen2010@gmail.com', N'Nese', N'hele fikiresirem.Fikirlesib qutarannan sonra cavab yazacam')
SET IDENTITY_INSERT [dbo].[UserContacts] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 17.07.2023 03:47:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 17.07.2023 03:47:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BasketItems_AppUserId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_AppUserId] ON [dbo].[BasketItems]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BasketItems_ProductId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_ProductId] ON [dbo].[BasketItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Images_ProductId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_Images_ProductId] ON [dbo].[Images]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_ProductId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_ProductId] ON [dbo].[OrderItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductReviews_AppUserId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_ProductReviews_AppUserId] ON [dbo].[ProductReviews]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductReviews_ProductId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_ProductReviews_ProductId] ON [dbo].[ProductReviews]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_ColorId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_Products_ColorId] ON [dbo].[Products]
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductSizes_SizeId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_ProductSizes_SizeId] ON [dbo].[ProductSizes]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserContacts_AppUserId]    Script Date: 17.07.2023 03:47:38 ******/
CREATE NONCLUSTERED INDEX [IX_UserContacts_AppUserId] ON [dbo].[UserContacts]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [FullName]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [Email]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [Phone]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [Address]
GO
ALTER TABLE [dbo].[ProductReviews] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([tinyint],(0))) FOR [Gender]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsNew]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([tinyint],(0))) FOR [Rate]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_Products_ProductId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK_ProductReviews_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK_ProductReviews_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK_ProductReviews_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK_ProductReviews_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors_ColorId]
GO
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Sizes_SizeId]
GO
ALTER TABLE [dbo].[UserContacts]  WITH CHECK ADD  CONSTRAINT [FK_UserContacts_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserContacts] CHECK CONSTRAINT [FK_UserContacts_AspNetUsers_AppUserId]
GO
USE [master]
GO
ALTER DATABASE [JuanDb] SET  READ_WRITE 
GO
