use Dinda_Damayanty
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE insertdata 
	-- Add the parameters for the stored procedure here
	kodebarang varchar(50),
	namabarang varchar(50),
	satuan varchar(50),
	jumlah int,
	harga int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into barang (kodebarang, namabarang, satuan, jumlah, harga)
	values (@kodebarang, @namabarang, @satuan, @jumlah, @harga)
END
GO

exec insertdata 'B0901', 'indomie','PCS',1,3000
exec insertdata 'B0902','kopi hitam','PCS',2,2000
exec insertdata 'B0903','beras','KG',2,24000

