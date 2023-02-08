CREATE PROCEDURE [dbo].[RolesObtener]
      @IdRoles int= NULL
AS BEGIN
  SET NOCOUNT ON



 SELECT
    IdRoles,
    Nombre,
	Menu_Productos,
	Menu_Usuarios,
	Menu_Roles,
	Menu_Bitacoras,
	Actualizar_Productos,
	Eliminar_Productos,
	Actualizar_Usuarios,
	Eliminar_Usuarios,
	Actualizar_Roles,
	Eliminar_Roles,
	UsuarioRegistro
   
    FROM dbo.Roles
    WHERE
    (@IdRoles IS NULL OR IdRoles=@IdRoles)



END