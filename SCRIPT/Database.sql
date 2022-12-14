USE [master]
GO
/****** Object:  Database [Ecommerce_2]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE DATABASE [Ecommerce_2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ecommerce_2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Ecommerce_2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ecommerce_2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Ecommerce_2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Ecommerce_2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ecommerce_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ecommerce_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ecommerce_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ecommerce_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ecommerce_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ecommerce_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ecommerce_2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ecommerce_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ecommerce_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ecommerce_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ecommerce_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ecommerce_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ecommerce_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ecommerce_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ecommerce_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ecommerce_2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Ecommerce_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ecommerce_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ecommerce_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ecommerce_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ecommerce_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ecommerce_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ecommerce_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ecommerce_2] SET RECOVERY FULL 
GO
ALTER DATABASE [Ecommerce_2] SET  MULTI_USER 
GO
ALTER DATABASE [Ecommerce_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ecommerce_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ecommerce_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ecommerce_2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ecommerce_2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ecommerce_2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ecommerce_2', N'ON'
GO
ALTER DATABASE [Ecommerce_2] SET QUERY_STORE = OFF
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [shipper]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [shipper] WITH PASSWORD=N'l06u7RoKyU4hl0HHZ/ClFXk41eOppKfJnTVN0R1DEmo=', DEFAULT_DATABASE=[Ecommerce_2], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [shipper] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [partner]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [partner] WITH PASSWORD=N'tNOWw+LgBu0WwagQ5AwdYOgDS2EGEwmlUsMeiqaQC6U=', DEFAULT_DATABASE=[Ecommerce_2], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [partner] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [customer]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [customer] WITH PASSWORD=N'PVRG+BCXswwh4d3AlxZZnSkwM5zn+Dow7VOgKiBlyJI=', DEFAULT_DATABASE=[Ecommerce_2], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [customer] DISABLE
GO
/****** Object:  Login [ADMIN\newuser]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [ADMIN\newuser] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ADMIN\Admin]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [ADMIN\Admin] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [admin]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [admin] WITH PASSWORD=N'eNVfQ1aLWCTZq8T2L57LInZn6YzXvKMndosfdgTOW9c=', DEFAULT_DATABASE=[Ecommerce_2], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [admin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'sIzKysQcidrqp6myZ2ggW2WXRnkvz0y1jgGHKFjx9yI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'mcTsI78K7o5SYh4YQv7mKO+zcqD+YLix0cIP+rqpSJs=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ADMIN\Admin]
GO
USE [Ecommerce_2]
GO
/****** Object:  User [shipper]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE USER [shipper] FOR LOGIN [shipper] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [partner]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE USER [partner] FOR LOGIN [partner] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [customer]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE USER [customer] FOR LOGIN [customer] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [admin]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [ROLE_SHIPPER]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE ROLE [ROLE_SHIPPER]
GO
/****** Object:  DatabaseRole [ROLE_PARTNER]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE ROLE [ROLE_PARTNER]
GO
/****** Object:  DatabaseRole [ROLE_CUSTOMER]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE ROLE [ROLE_CUSTOMER]
GO
/****** Object:  DatabaseRole [ROLE_ADMIN]    Script Date: 30/8/2022 7:47:33 AM ******/
CREATE ROLE [ROLE_ADMIN]
GO
ALTER ROLE [ROLE_SHIPPER] ADD MEMBER [shipper]
GO
ALTER ROLE [ROLE_PARTNER] ADD MEMBER [partner]
GO
ALTER ROLE [ROLE_CUSTOMER] ADD MEMBER [customer]
GO
ALTER ROLE [ROLE_ADMIN] ADD MEMBER [admin]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [admin]
GO
GRANT CONNECT TO [admin] AS [dbo]
GO
GRANT CONNECT TO [customer] AS [dbo]
GO
GRANT CONNECT TO [partner] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
GRANT CONNECT TO [shipper] AS [dbo]
GO
/****** Object:  Schema [ROLE_ADMIN]    Script Date: 30/8/2022 7:47:34 AM ******/
CREATE SCHEMA [ROLE_ADMIN]
GO
/****** Object:  Schema [ROLE_CUSTOMER]    Script Date: 30/8/2022 7:47:34 AM ******/
CREATE SCHEMA [ROLE_CUSTOMER]
GO
/****** Object:  Schema [ROLE_PARTNER]    Script Date: 30/8/2022 7:47:34 AM ******/
CREATE SCHEMA [ROLE_PARTNER]
GO
/****** Object:  Schema [ROLE_SHIPPER]    Script Date: 30/8/2022 7:47:34 AM ******/
CREATE SCHEMA [ROLE_SHIPPER]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[adminId] [int] IDENTITY(1,1) NOT NULL,
	[personalId] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[adminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillingInfo]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingInfo](
	[billingId] [int] IDENTITY(1,1) NOT NULL,
	[paymentMethod] [nvarchar](50) NULL,
	[billDate] [date] NULL,
	[billAddress] [nvarchar](50) NULL,
	[customerId] [int] NOT NULL,
	[orderId] [int] NOT NULL,
 CONSTRAINT [PK_BillingInfo] PRIMARY KEY CLUSTERED 
(
	[billingId] ASC,
	[customerId] ASC,
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
GRANT DELETE ON [dbo].[BillingInfo] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT INSERT ON [dbo].[BillingInfo] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT SELECT ON [dbo].[BillingInfo] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT UPDATE ON [dbo].[BillingInfo] TO [ROLE_CUSTOMER] AS [dbo]
GO
/****** Object:  Table [dbo].[BranchAddresses]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BranchAddresses](
	[branchAddressesId] [int] NOT NULL,
	[contractId] [int] NOT NULL,
 CONSTRAINT [PK_BranchAddresses] PRIMARY KEY CLUSTERED 
(
	[branchAddressesId] ASC,
	[contractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contracts](
	[contractId] [int] IDENTITY(1,1) NOT NULL,
	[partnerId] [int] NOT NULL,
	[taxId] [nvarchar](50) NOT NULL,
	[representPerson] [nvarchar](50) NULL,
	[registerBranches] [nvarchar](50) NULL,
	[sraffId] [int] NULL,
 CONSTRAINT [PK_Contracts] PRIMARY KEY CLUSTERED 
(
	[contractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[customerId] [int] IDENTITY(1,1) NOT NULL,
	[personalId] [int] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[productId] [int] NOT NULL,
	[orderId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[saleUnitPrice] [float] NULL,
	[customerId] [int] NOT NULL,
	[partnerId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails_1] PRIMARY KEY CLUSTERED 
(
	[productId] ASC,
	[orderId] ASC,
	[customerId] ASC,
	[partnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
GRANT DELETE ON [dbo].[OrderDetails] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT INSERT ON [dbo].[OrderDetails] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT SELECT ON [dbo].[OrderDetails] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT UPDATE ON [dbo].[OrderDetails] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT SELECT ON [dbo].[OrderDetails] TO [ROLE_PARTNER] AS [dbo]
GO
GRANT SELECT ON [dbo].[OrderDetails] TO [ROLE_SHIPPER] AS [dbo]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderId] [int] NOT NULL,
	[orderDate] [datetime] NULL,
	[orderStatus] [nvarchar](50) NULL,
	[totalPrice] [float] NULL,
	[shipperId] [int] NULL,
	[customerId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC,
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
GRANT DELETE ON [dbo].[Orders] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT INSERT ON [dbo].[Orders] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT SELECT ON [dbo].[Orders] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Orders] TO [ROLE_CUSTOMER] AS [dbo]
GO
GRANT SELECT ON [dbo].[Orders] TO [ROLE_PARTNER] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Orders] TO [ROLE_PARTNER] AS [dbo]
GO
GRANT SELECT ON [dbo].[Orders] TO [ROLE_SHIPPER] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Orders] TO [ROLE_SHIPPER] AS [dbo]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[partnerId] [int] IDENTITY(1,1) NOT NULL,
	[ordersPerDay] [nvarchar](50) NOT NULL,
	[productTransportType] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[district] [nvarchar](50) NOT NULL,
	[representPerson] [nvarchar](50) NOT NULL,
	[branchesCount] [nvarchar](50) NOT NULL,
	[staffId] [int] NULL,
	[personalId] [int] NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[partnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personalInfo]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personalInfo](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[phone] [nchar](10) NULL,
	[email] [nchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[adminId] [int] NULL,
	[password] [nvarchar](100) NULL,
 CONSTRAINT [PK_personalInfo] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[unitPrice] [float] NOT NULL,
	[description] [nvarchar](50) NULL,
	[quantity] [int] NOT NULL,
	[partnerId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[productId] ASC,
	[partnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[shipperId] [int] IDENTITY(1,1) NOT NULL,
	[bankInfo] [nvarchar](50) NULL,
	[idCardNumber] [int] NULL,
	[licensePlate] [nchar](20) NULL,
	[activeArea] [nvarchar](50) NULL,
	[personalId] [int] NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[shipperId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[staffId] [int] IDENTITY(1,1) NOT NULL,
	[adminId] [int] NULL,
	[personalId] [int] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[staffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 
GO
INSERT [dbo].[Admin] ([adminId], [personalId]) VALUES (1, 1)
GO
INSERT [dbo].[Admin] ([adminId], [personalId]) VALUES (5, 3)
GO
INSERT [dbo].[Admin] ([adminId], [personalId]) VALUES (6, 3)
GO
INSERT [dbo].[Admin] ([adminId], [personalId]) VALUES (7, 4)
GO
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[BillingInfo] ON 
GO
INSERT [dbo].[BillingInfo] ([billingId], [paymentMethod], [billDate], [billAddress], [customerId], [orderId]) VALUES (1, N'MoMo', CAST(N'2022-08-20' AS Date), N'BBBBBBBBB', 1, 2)
GO
SET IDENTITY_INSERT [dbo].[BillingInfo] OFF
GO
INSERT [dbo].[BranchAddresses] ([branchAddressesId], [contractId]) VALUES (1, 1)
GO
INSERT [dbo].[BranchAddresses] ([branchAddressesId], [contractId]) VALUES (2, 2)
GO
INSERT [dbo].[BranchAddresses] ([branchAddressesId], [contractId]) VALUES (3, 3)
GO
SET IDENTITY_INSERT [dbo].[Contracts] ON 
GO
INSERT [dbo].[Contracts] ([contractId], [partnerId], [taxId], [representPerson], [registerBranches], [sraffId]) VALUES (1, 1, N'1', N'NU OA', N'1', 1)
GO
INSERT [dbo].[Contracts] ([contractId], [partnerId], [taxId], [representPerson], [registerBranches], [sraffId]) VALUES (2, 3, N'3', N'HAI THAN', N'1', 6)
GO
INSERT [dbo].[Contracts] ([contractId], [partnerId], [taxId], [representPerson], [registerBranches], [sraffId]) VALUES (3, 4, N'4', N'QUY HOA', N'2', 7)
GO
SET IDENTITY_INSERT [dbo].[Contracts] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([customerId], [personalId]) VALUES (1, 1)
GO
INSERT [dbo].[Customers] ([customerId], [personalId]) VALUES (2, NULL)
GO
INSERT [dbo].[Customers] ([customerId], [personalId]) VALUES (3, NULL)
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[OrderDetails] ([productId], [orderId], [quantity], [saleUnitPrice], [customerId], [partnerId]) VALUES (1, 2, 6, 30000, 1, 1)
GO
INSERT [dbo].[OrderDetails] ([productId], [orderId], [quantity], [saleUnitPrice], [customerId], [partnerId]) VALUES (2, 2, 3, 20000, 1, 1)
GO
INSERT [dbo].[OrderDetails] ([productId], [orderId], [quantity], [saleUnitPrice], [customerId], [partnerId]) VALUES (2, 4, 2, 35000, 1, 1)
GO
INSERT [dbo].[OrderDetails] ([productId], [orderId], [quantity], [saleUnitPrice], [customerId], [partnerId]) VALUES (3, 4, 4, 170000, 1, 3)
GO
INSERT [dbo].[Orders] ([orderId], [orderDate], [orderStatus], [totalPrice], [shipperId], [customerId]) VALUES (2, CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'CHO DUYET', 490000, 1, 1)
GO
INSERT [dbo].[Orders] ([orderId], [orderDate], [orderStatus], [totalPrice], [shipperId], [customerId]) VALUES (3, CAST(N'2022-08-30T00:00:00.000' AS DateTime), N'DANG GIAO HANG', 30000, 1, 1)
GO
INSERT [dbo].[Orders] ([orderId], [orderDate], [orderStatus], [totalPrice], [shipperId], [customerId]) VALUES (4, CAST(N'2022-08-17T00:00:00.000' AS DateTime), N'HOAN THANH', NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Partners] ON 
GO
INSERT [dbo].[Partners] ([partnerId], [ordersPerDay], [productTransportType], [city], [district], [representPerson], [branchesCount], [staffId], [personalId]) VALUES (1, N'20', N'THUC AN', N'HO CHI MINH', N'QUAN 5', N'HOANG VAN LONG', N'1', 1, 1)
GO
INSERT [dbo].[Partners] ([partnerId], [ordersPerDay], [productTransportType], [city], [district], [representPerson], [branchesCount], [staffId], [personalId]) VALUES (3, N'31', N'AN VAT', N'HO CHI MINH', N'QUAN 1', N'TRAN DINH KIEN', N'1', 6, 3)
GO
INSERT [dbo].[Partners] ([partnerId], [ordersPerDay], [productTransportType], [city], [district], [representPerson], [branchesCount], [staffId], [personalId]) VALUES (4, N'18', N'QUAN AO', N'HO CHI MINH', N'QUAN 3', N'MAN TOC', N'2', 7, 4)
GO
SET IDENTITY_INSERT [dbo].[Partners] OFF
GO
SET IDENTITY_INSERT [dbo].[personalInfo] ON 
GO
INSERT [dbo].[personalInfo] ([uid], [name], [phone], [email], [address], [adminId], [password]) VALUES (1, N'TRAN BINH AN', N'0364378196', N'AN@GMAIL.COM                                      ', N'HO CHI MINH', NULL, N'1112')
GO
INSERT [dbo].[personalInfo] ([uid], [name], [phone], [email], [address], [adminId], [password]) VALUES (3, N'HO THI CAM NHUNG', N'031541752 ', N'NHUNG@GMAIL.COM                                   ', N'HO CHI MINH', NULL, N'1112')
GO
INSERT [dbo].[personalInfo] ([uid], [name], [phone], [email], [address], [adminId], [password]) VALUES (4, N'CHUC LONG', N'031424524 ', N'LONG@GMAIL.COM                                    ', N'HO CHI MINH', NULL, N'1113')
GO
SET IDENTITY_INSERT [dbo].[personalInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([productId], [name], [unitPrice], [description], [quantity], [partnerId]) VALUES (1, N'TRA SUA TRAN CHAU DUONG NAU', 25000, N'SIZE L', 100, 1)
GO
INSERT [dbo].[Products] ([productId], [name], [unitPrice], [description], [quantity], [partnerId]) VALUES (2, N'TRA SUA TRAN CHAU DUONG PHEN', 28000, N'SIZE X', 100, 1)
GO
INSERT [dbo].[Products] ([productId], [name], [unitPrice], [description], [quantity], [partnerId]) VALUES (3, N'AO KHOAC', 150000, N'SIZE XL', 50, 3)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Shippers] ON 
GO
INSERT [dbo].[Shippers] ([shipperId], [bankInfo], [idCardNumber], [licensePlate], [activeArea], [personalId]) VALUES (1, N'ARGIBANK', 1, N'1                   ', N'HO CHI MINH', 1)
GO
INSERT [dbo].[Shippers] ([shipperId], [bankInfo], [idCardNumber], [licensePlate], [activeArea], [personalId]) VALUES (3, N'ARGIBANK', 2, N'2                   ', N'HO CHI MINH', 3)
GO
INSERT [dbo].[Shippers] ([shipperId], [bankInfo], [idCardNumber], [licensePlate], [activeArea], [personalId]) VALUES (4, N'MSB', 3, N'3                   ', N'HO CHI MINH', 4)
GO
SET IDENTITY_INSERT [dbo].[Shippers] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 
GO
INSERT [dbo].[Staff] ([staffId], [adminId], [personalId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Staff] ([staffId], [adminId], [personalId]) VALUES (6, 5, 3)
GO
INSERT [dbo].[Staff] ([staffId], [adminId], [personalId]) VALUES (7, 7, 4)
GO
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_personalInfo] FOREIGN KEY([personalId])
REFERENCES [dbo].[personalInfo] ([uid])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_personalInfo]
GO
ALTER TABLE [dbo].[BillingInfo]  WITH CHECK ADD  CONSTRAINT [FK_BillingInfo_Orders] FOREIGN KEY([orderId], [customerId])
REFERENCES [dbo].[Orders] ([orderId], [customerId])
GO
ALTER TABLE [dbo].[BillingInfo] CHECK CONSTRAINT [FK_BillingInfo_Orders]
GO
ALTER TABLE [dbo].[BranchAddresses]  WITH CHECK ADD  CONSTRAINT [FK_BranchAddresses_Contracts] FOREIGN KEY([contractId])
REFERENCES [dbo].[Contracts] ([contractId])
GO
ALTER TABLE [dbo].[BranchAddresses] CHECK CONSTRAINT [FK_BranchAddresses_Contracts]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Partners] FOREIGN KEY([partnerId])
REFERENCES [dbo].[Partners] ([partnerId])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Partners]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Staff] FOREIGN KEY([sraffId])
REFERENCES [dbo].[Staff] ([staffId])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Staff]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_personalInfo] FOREIGN KEY([personalId])
REFERENCES [dbo].[personalInfo] ([uid])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_personalInfo]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([orderId], [customerId])
REFERENCES [dbo].[Orders] ([orderId], [customerId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([productId], [partnerId])
REFERENCES [dbo].[Products] ([productId], [partnerId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([customerId])
REFERENCES [dbo].[Customers] ([customerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY([shipperId])
REFERENCES [dbo].[Shippers] ([shipperId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shippers]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_personalInfo] FOREIGN KEY([personalId])
REFERENCES [dbo].[personalInfo] ([uid])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_personalInfo]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Staff] FOREIGN KEY([staffId])
REFERENCES [dbo].[Staff] ([staffId])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Staff]
GO
ALTER TABLE [dbo].[personalInfo]  WITH CHECK ADD  CONSTRAINT [FK_personalInfo_Admin] FOREIGN KEY([adminId])
REFERENCES [dbo].[Admin] ([adminId])
GO
ALTER TABLE [dbo].[personalInfo] CHECK CONSTRAINT [FK_personalInfo_Admin]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Partners] FOREIGN KEY([partnerId])
REFERENCES [dbo].[Partners] ([partnerId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Partners]
GO
ALTER TABLE [dbo].[Shippers]  WITH CHECK ADD  CONSTRAINT [FK_Shippers_personalInfo] FOREIGN KEY([shipperId])
REFERENCES [dbo].[personalInfo] ([uid])
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [FK_Shippers_personalInfo]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Admin] FOREIGN KEY([adminId])
REFERENCES [dbo].[Admin] ([adminId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Admin]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_personalInfo] FOREIGN KEY([personalId])
REFERENCES [dbo].[personalInfo] ([uid])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_personalInfo]
GO
/****** Object:  StoredProcedure [dbo].[DIRTY_READ_TRANS1]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DIRTY_READ_TRANS1]
	@ORDERID INT,
	@ADDRESS NVARCHAR(50)
AS
BEGIN
	BEGIN TRANSACTION

	update BillingInfo 
		set billAddress = @ADDRESS
		where orderId = @ORDERID
	waitfor delay '00:00:05' 
	IF LEN(@ADDRESS) >= 50
	BEGIN
		PRINT N'Chu???i d??i h??n 50'
		ROLLBACK TRAN
		select * from BillingInfo bill where orderId = @ORDERID
		RETURN
	END
	COMMIT TRANSACTION
END
GO
/****** Object:  StoredProcedure [dbo].[DIRTY_READ_TRANS2]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DIRTY_READ_TRANS2]
	@ORDERID INT
AS
BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	--fix: SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	BEGIN TRAN
		select * from BillingInfo bill where orderId = @ORDERID
	COMMIT TRAN 
END
GO
/****** Object:  StoredProcedure [dbo].[LOST_UPDATE_TRANS1]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc	[dbo].[LOST_UPDATE_TRANS1]
	@OID INT,
	@PID INT,
	@NUMADD INT
as
begin tran
	DECLARE @QUANTITY INT = (SELECT QUANTITY FROM OrderDetails WHERE orderId=@OID AND productId=@PID)
	SELECT @QUANTITY
	waitfor delay '0:0:5'
	SET @QUANTITY = @QUANTITY + @NUMADD
	UPDATE OrderDetails SET quantity = @QUANTITY WHERE orderId=@OID AND productId=@PID
	waitfor delay '0:0:2'
commit tran
GO
/****** Object:  StoredProcedure [dbo].[LOST_UPDATE_TRANS2]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc	[dbo].[LOST_UPDATE_TRANS2]
	@OID INT,
	@PID INT,
	@NUMSUB INT
as
begin tran
	DECLARE @QUANTITY INT = (SELECT QUANTITY FROM OrderDetails WHERE orderId=@OID AND productId=@PID)
	SELECT @QUANTITY
	waitfor delay '0:0:5'
	SET @QUANTITY = @QUANTITY - @NUMSUB
	UPDATE OrderDetails SET quantity = @QUANTITY WHERE orderId=@OID AND productId=@PID
	waitfor delay '0:0:2'
commit tran
GO
/****** Object:  StoredProcedure [dbo].[PHANTOM_READ_TRANS1]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PHANTOM_READ_TRANS1]
	 @OID INT
AS
BEGIN TRAN
	WAITFOR DELAY '0:0:2'
	SELECT * FROM OrderDetails  od WITH(NOLOCK) WHERE OD.orderId = @OID
	WAITFOR DELAY '0:0:5'
	SELECT * FROM OrderDetails  od WITH(NOLOCK)WHERE OD.orderId = @OID

COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PHANTOM_READ_TRANS2]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PHANTOM_READ_TRANS2]
	@orderdetails NVARCHAR(MAX)
AS
BEGIN TRAN
	SELECT *
    INTO #tblOD
    FROM OPENJSON (@orderdetails)
    WITH ( 
        productId int '$.data.productId',
		orderId int '$.data.orderId',
		quantity int '$.data.quantity',
		saleUnitPrice int '$.data.saleUnitPrice',
		customerId int '$.data.customerId',
		partnerId int  '$.data.partnerId'
    ) 
	delete OrderDetails where orderId = 4 and productId =3 and partnerId =3
	WAITFOR DELAY '0:0:2'
	insert into 
		OrderDetails
		(productId,orderId,quantity,saleUnitPrice,customerId,partnerId) 
	select * from #tblOD
	drop table #tblOD
COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[UNREPEATABLE_READ1]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--WITH TEMP AS (SELECT * FROM personalInfo PERS WHERE PERS.uid = 1 AND PERS.PASSWORD = 1111)
--go
CREATE PROC [dbo].[UNREPEATABLE_READ1]
AS
BEGIN
	--SET TRAN ISOLATION LEVEL REPEATABLE READ
	BEGIN TRAN
		PRINT N'????ng nh???p l???n ?????u'
		IF NOT EXISTS (SELECT * FROM personalInfo PERS WHERE PERS.uid = 1 AND PERS.PASSWORD ='1111' )
		BEGIN
			PRINT N'Sai m???t kh???u'
		END
		ELSE
			PRINT N'????ng nh???p th??nh c??ng' 
		waitfor delay '00:00:05'
		PRINT N'????ng nh???p l???n hai'
		IF EXISTS (SELECT * FROM personalInfo PERS WHERE PERS.uid = 1 AND PERS.PASSWORD = '1111' )
		BEGIN
		SELECT * FROM personalInfo PERS WHERE PERS.uid = 1 AND PERS.PASSWORD = '1111'
			PRINT N'????ng nh???p th??nh c??ng' 
		END
		ELSE
			PRINT N'Sai m???t kh???u'
	COMMIT TRAN
END
GO
/****** Object:  StoredProcedure [dbo].[UNREPEATABLE_READ2]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--UPDATE personalInfo SET password = '1111' where uid = 1
CREATE PROC [dbo].[UNREPEATABLE_READ2]
AS
BEGIN
	BEGIN TRAN
		UPDATE personalInfo SET password = '1112' where uid = 1
	COMMIT TRAN 
END
GO
/****** Object:  Trigger [dbo].[orderdetails_update_trigger]    Script Date: 30/8/2022 7:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[orderdetails_update_trigger] on [dbo].[OrderDetails]
after update,insert,delete
as
begin
SET NOCOUNT ON;
	declare @total float = (
	select 
		sum((od.quantity - d.quantity + i.quantity)
			*od.saleUnitPrice)  
	from OrderDetails od
		join deleted d on od.orderId = d.orderid
			join inserted i on od.orderId = i.orderid)
	select @total
	update orders set totalPrice = @total 
	FROM orders o join inserted i on i.orderId=o.orderId
end
GO
ALTER TABLE [dbo].[OrderDetails] ENABLE TRIGGER [orderdetails_update_trigger]
GO
USE [master]
GO
ALTER DATABASE [Ecommerce_2] SET  READ_WRITE 
GO
