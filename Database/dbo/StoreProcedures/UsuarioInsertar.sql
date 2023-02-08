CREATE PROCEDURE [dbo].[UsuarioInsertar]
	
	@Usuario varchar(50),
	@Nombre varchar(50),
	@Contrasena varchar(50),
	@Rol varchar(50),
	@Estado bit,
	@UsuarioRegistro varchar(50)

AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	INSERT INTO dbo.Usuario
	(
	 Usuario,
	 Nombre,
	 Contrasena,
	 Rol,
	 Estado,
	 UsuarioRegistro
	)
	VALUES
	(
	
	 @Usuario,
	 @Nombre,
	 @Contrasena,
	 @Rol,
	 @Estado,
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



