USE vetpetshop
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spsListarAnimaisTodos]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].spsListarAnimaisTodos
GO

CREATE PROCEDURE [dbo].[spsListarAnimaisTodos]

AS

SET NOCOUNT ON

BEGIN
	
	SELECT	a.Id,
			a.Nome,
			a.Peso,
			a.Raca,
			a.DataNascimento,
			a.DataProxVacinacao
	
	 FROM dbo.Animal a
	
END

SET NOCOUNT OFF