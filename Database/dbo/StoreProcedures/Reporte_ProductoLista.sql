CREATE PROCEDURE [dbo].[Reporte_ProductoLista]
AS
	BEGIN
	SET NOCOUNT ON


	SELECT
	 IdProducto,
	 Nombre,
	 Precio,
	 IVA,
	 FechaRegistro,
	 UsuarioRegistro
	FROM dbo.Producto


	END
