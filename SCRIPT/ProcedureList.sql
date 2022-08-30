USE [Ecommerce_2]
GO
/****** Object:  StoredProcedure [dbo].[DIRTY_READ_TRANS1]    Script Date: 29/8/2022 11:21:07 PM ******/
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
		PRINT N'Chuỗi dài hơn 50'
		ROLLBACK TRAN
		select * from BillingInfo bill where orderId = @ORDERID
		RETURN
	END
	COMMIT TRANSACTION
END
GO
/****** Object:  StoredProcedure [dbo].[DIRTY_READ_TRANS2]    Script Date: 29/8/2022 11:21:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[LOST_UPDATE_TRANS1]    Script Date: 29/8/2022 11:21:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[LOST_UPDATE_TRANS2]    Script Date: 29/8/2022 11:21:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[PHANTOM_READ_TRANS1]    Script Date: 29/8/2022 11:21:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[PHANTOM_READ_TRANS2]    Script Date: 29/8/2022 11:21:07 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UNREPEATABLE_READ1]    Script Date: 29/8/2022 11:21:07 PM ******/
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
		PRINT N'Đăng nhập lần đầu'
		IF NOT EXISTS (SELECT * FROM personalInfo PERS WHERE PERS.uid = 1 AND PERS.PASSWORD ='1111' )
		BEGIN
			PRINT N'Sai mật khẩu'
		END
		ELSE
			PRINT N'Đăng nhập thành công' 
		waitfor delay '00:00:05'
		PRINT N'Đăng nhập lần hai'
		IF EXISTS (SELECT * FROM personalInfo PERS WHERE PERS.uid = 1 AND PERS.PASSWORD = '1111' )
		BEGIN
		SELECT * FROM personalInfo PERS WHERE PERS.uid = 1 AND PERS.PASSWORD = '1111'
			PRINT N'Đăng nhập thành công' 
		END
		ELSE
			PRINT N'Sai mật khẩu'
	COMMIT TRAN
END
GO
/****** Object:  StoredProcedure [dbo].[UNREPEATABLE_READ2]    Script Date: 29/8/2022 11:21:07 PM ******/
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
