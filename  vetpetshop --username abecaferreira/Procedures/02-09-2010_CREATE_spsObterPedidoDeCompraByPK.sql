USE vetpetshop
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spsObterPedidoDeCompraByPK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].spsObterPedidoDeCompraByPK
GO

CREATE PROCEDURE [dbo].[spsObterPedidoDeCompraByPK] 
	@IdNota INT
AS

SET NOCOUNT ON

BEGIN
	SELECT 
	IdUsuario,
	DataCadastro,
	Valor,
	Status
	FROM NotaFiscal WHERE Id = @IdNota
END

SET NOCOUNT OFF