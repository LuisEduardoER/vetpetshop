USE vetpetshop
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spsObterAnimal]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].spsObterAnimal
GO

CREATE PROCEDURE [dbo].[spsObterAnimal]
	@IdAnimal Int
AS

SET NOCOUNT ON

BEGIN
	
	SELECT	a.Id,
			a.Nome,
			a.Peso,
			a.Raca,
			a.DataNascimento,
			a.DataProxVacinacao
	
	 FROM dbo.Animal a WHERE Id = @IdAnimal
	
END

SET NOCOUNT OFF