USE vetpetshop
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spiInserirAdministrador]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].spiInserirAdministrador
GO

CREATE PROCEDURE [dbo].[spiInserirAdministrador]

@Nome_Prof VARCHAR(50),
@Nome_Usuario VARCHAR(20),
@Tipo INT,
@Senha VARCHAR(50),
@Email VARCHAR(50)

AS

SET NOCOUNT ON

BEGIN

INSERT INTO dbo.Administrador (Nome) VALUES (@Nome_Prof)

DECLARE @idAmin INT

SELECT @idAmin = SCOPE_IDENTITY()

	INSERT INTO dbo.Usuario 
	(IdAdministrador, 
	IdVeterinario,
	IdVendedor,
	Nome,
	TipoUsuario,
	Senha,
	Email)	
	VALUES
	(@idAmin,
	NULL,
	NULL,
	@Nome_Usuario,
	@Tipo,
	@Senha,
	@Email)
END

SET NOCOUNT OFF