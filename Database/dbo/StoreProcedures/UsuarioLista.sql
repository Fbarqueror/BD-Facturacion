CREATE PROCEDURE [dbo].[UsuarioLista]
AS
	BEGIN
	SET NOCOUNT ON


	SELECT
	 IdUsuario,
	 Usuario,
	 Nombre,
	 Contrasena,
	 Rol,
	 Estado,
	 UsuarioRegistro
	 
	FROM dbo.Usuario


	END
