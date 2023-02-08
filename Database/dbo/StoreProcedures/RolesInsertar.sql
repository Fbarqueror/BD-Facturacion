CREATE PROCEDURE [dbo].[RolesInsertar]
		
	
	@Nombre varchar(50),
	@Menu_Productos bit,
	@Menu_Usuarios bit,
	@Menu_Roles bit,
	@Menu_Bitacoras bit,
	@Actualizar_Productos bit,
	@Eliminar_Productos bit,
	@Actualizar_Usuarios bit,
	@Eliminar_Usuarios bit,
	@Actualizar_Roles bit,
	@Eliminar_Roles bit,
	@UsuarioRegistro varchar(50)

AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	INSERT INTO dbo.Roles
	(
	
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
	)
	VALUES
	(
	
	@Nombre,
	@Menu_Productos,
	@Menu_Usuarios,
	@Menu_Roles,
	@Menu_Bitacoras,
	@Actualizar_Productos,
	@Eliminar_Productos,
	@Actualizar_Usuarios,
	@Eliminar_Usuarios,
	@Actualizar_Roles,
	@Eliminar_Roles,
	@UsuarioRegistro
	)

  COMMIT TRANSACTION TRASA
  SELECT 0 AS CodeError, '' AS MsgError

  END TRY

  BEGIN CATCH

   SELECT 
         ERROR_NUMBER() AS CodeError,
		 ERROR_MESSAGE() AS MsgError
   
   ROLLBACK TRANSACTION TRASA

   END CATCH

 END



