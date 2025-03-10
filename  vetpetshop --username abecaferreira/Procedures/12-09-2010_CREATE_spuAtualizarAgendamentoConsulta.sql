USE vetpetshop
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spuAtualizarAgendamentoConsulta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].spuAtualizarAgendamentoConsulta
GO

CREATE PROCEDURE [dbo].[spuAtualizarAgendamentoConsulta]

@id_consulta	INT,
@id_usuario		INT,
@Data			DATETIME,
@Valor			DECIMAL(9,2),
@Status			INT,
@Horario		VARCHAR(20)
AS

SET NOCOUNT ON
--spuAtualizarAgendamentoConsulta
BEGIN
		
		
		UPDATE dbo.COnsultaVeterinaria 
		
		SET		IdUsuario = @id_usuario,
				Data = @Data,
				Valor = @Valor,
				[Status] = @Status,
				HoraConsulta = @Horario
				
		WHERE	Id = @id_consulta 
		
		
	 
END

SET NOCOUNT OFF