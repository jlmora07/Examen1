-- =============================================
-- Author:		<Juan Luis Mora>
-- Create date: <04-03-2022>
-- Description:	<Procedimiento para eliminar registros de Instituciones>
-- =============================================


CREATE PROCEDURE [dbo].[InstitucionEliminar]
	@Id_Institucion INT
AS
BEGIN
	SET NOCOUNT ON

	BEGIN TRANSACTION TRASA

	BEGIN TRY
	--PRUEBA
	DELETE FROM dbo.Institucion

	WHERE
		Id_Institucion = @Id_Institucion
	
	COMMIT TRANSACTION TRASA
		SELECT 
				0 AS CodError, 
				'' as MsgError
	END TRY

	BEGIN CATCH
		SELECT 
			   ERROR_NUMBER() AS CodError, 
			   ERROR_MESSAGE() AS MsgError

	ROLLBACK TRANSACTION TRASA

	END CATCH

END


