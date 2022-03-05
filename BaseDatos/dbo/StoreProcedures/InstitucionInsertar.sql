-- =============================================
-- Author:		<Juan Luis Mora>
-- Create date: <04-03-2022>
-- Description:	<Procedimiento para insertar registros de Instituciones>
-- =============================================

CREATE PROCEDURE [dbo].[InstitucionInsertar]
	@Codigo varchar(250),
	@Nombre varchar(250),
	@Telefono varchar(250),
	@Estado bit
AS
BEGIN
	SET NOCOUNT ON

	BEGIN TRANSACTION TRASA

	BEGIN TRY

		INSERT INTO Institucion
		  (Codigo
		  ,Nombre
		  ,Telefono
		  ,Estado)

		  VALUES
		  (@Codigo,
		   @Nombre,
		   @Telefono,
		   @Estado
		  )

	COMMIT TRANSACTION TRASA
		SELECT
			0 AS CodError,
			'' AS MsgError
	END TRY

	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS CodError,
			ERROR_MESSAGE() AS MsgError

	ROLLBACK TRANSACTION TRASA

	END CATCH

END