USE [Ecommerce_2]
GO
EXEC SP_ADDLOGIN 'admin','1','Ecommerce_2'
GO
EXEC SP_ADDLOGIN 'customer','1','Ecommerce_2'
GO
EXEC SP_ADDLOGIN 'partner','1','Ecommerce_2'
GO
EXEC SP_ADDLOGIN 'shipper','1','Ecommerce_2'
GO
EXEC SP_ADDROLE 'ROLE_ADMIN'
GO
EXEC SP_ADDROLE 'ROLE_CUSTOMER'
GO
EXEC SP_ADDROLE 'ROLE_PARTNER'
GO
EXEC SP_ADDROLE 'ROLE_SHIPPER'
GO
/****** Object:  User [admin]    Script Date: 30/8/2022 12:03:48 AM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [customer]    Script Date: 30/8/2022 12:03:48 AM ******/
CREATE USER [customer] FOR LOGIN [customer] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [partner]    Script Date: 30/8/2022 12:03:48 AM ******/
CREATE USER [partner] FOR LOGIN [partner] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [shipper]    Script Date: 30/8/2022 12:03:48 AM ******/
CREATE USER [shipper] FOR LOGIN [shipper] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [admin]
GO
