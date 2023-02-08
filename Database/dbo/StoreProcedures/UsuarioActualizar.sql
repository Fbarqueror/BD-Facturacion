CREATE PROCEDURE [dbo].[UsuarioActualizar]
    @IdUsuario int,
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
	
	UPDATE dbo.Usuario SET

	 Usuario=@Usuario,
	 Nombre=@Nombre,
	 Contrasena=@Contrasena,
	 Rol=@Rol,
	 Estado=@Estado,
	 UsuarioRegistro=@UsuarioRegistro 
	 
	WHERE 
	       IdUsuario=@IdUsuario
	
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