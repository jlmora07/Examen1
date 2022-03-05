
-- =============================================
-- Author:		<Juan Luis Mora>
-- Create date: <04-03-2022>
-- Description:	<Procedimiento que devuelve el listado de Instituciones registradas>
-- =============================================


CREATE PROCEDURE [dbo].[InstitucionObtener]
	@Id_Institucion int = NULL
AS
BEGIN
	SET NOCOUNT ON
	SELECT Id_Institucion,
		   Codigo,
		   Nombre,
		   Telefono,
		   Estado
	FROM 
		dbo.Institucion
	WHERE
		(@Id_Institucion IS NULL OR Id_Institucion = @Id_Institucion)

END