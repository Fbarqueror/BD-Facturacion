CREATE TABLE [dbo].[Roles]
(
	IdRoles INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Roles PRIMARY KEY CLUSTERED(IdRoles)
  , Nombre VARCHAR(50) NOT NULL 
  , Menu_Productos bit NOT NULL
  , Menu_Usuarios bit NOT NULL
  , Menu_Roles bit NOT NULL
  , Menu_Bitacoras bit NOT NULL
  , Actualizar_Productos bit NOT NULL
  , Actualizar_Usuarios bit NOT NULL
  , Actualizar_Roles bit NOT NULL
  , Eliminar_Productos bit NOT NULL
  , Eliminar_Usuarios bit NOT NULL
  , Eliminar_Roles bit NOT NULL
  , UsuarioRegistro VARCHAR(50) NOT NULL
)
WITH (DATA_COMPRESSION = PAGE)
GO
