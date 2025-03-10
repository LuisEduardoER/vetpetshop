USE vetpetshop
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spuAtualizarPagamentoConsulta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].spuAtualizarPagamentoConsulta
GO

CREATE PROCEDURE [dbo].[spuAtualizarPagamentoConsulta] 
	@IdConsulta INT
	
AS

SET NOCOUNT ON

BEGIN
	UPDATE ConsultaVeterinaria SET Status = '2'
	WHERE Id = @IdConsulta
END

SET NOCOUNT OFF