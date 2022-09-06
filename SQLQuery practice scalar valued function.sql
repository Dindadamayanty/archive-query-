-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
/*CREATE FUNCTION [dbo].[totalharga]
(
-- Add the parameters for the function here
	@NB varchar (20)
)

RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @TH int

	-- Add the T-SQL statements to compute the return value here
	SELECT @TH = jumlah * harga from barang where namabarang=@NB

	-- Return the result of the function
	RETURN @TH

END*/

select [dbo].[totalharga] ('kopi hitam')

GO

