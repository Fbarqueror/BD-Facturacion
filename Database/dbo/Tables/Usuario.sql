CREATE TABLE [dbo].[Usuario]
(
	 IdUsuario INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Usuario PRIMARY KEY CLUSTERED(IdUsuario)
	, Usuario VARCHAR(250) NOT NULL
	, Nombre varchar(500) not null
	, Contrasena varchar(500) NOT NULL
	, Rol varchar(500) NOT NULL
	, Estado BIT NOT NULL
	, UsuarioRegistro VARCHAR(50) NOT NULL
)
