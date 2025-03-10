USE vetpetshop
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spsListaAnimalByPK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].spsListaAnimalByPK
GO

CREATE PROCEDURE [dbo].[spsListaAnimalByPK] 
	
@IdAnimal int
	
AS

SET NOCOUNT ON

BEGIN

SELECT
a.Id,
a.Nome,
a.Peso,
a.Raca,
a.DataNascimento,
a.IdTipoAnimal,
a.IdCliente,
a.Sexo
FROM Animal a 
where Id = @IdAnimal
	
END

SET NOCOUNT OFF