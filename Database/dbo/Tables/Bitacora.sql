CREATE TABLE [dbo].[Bitacora]
(
	  IdBitacora INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Bitacora PRIMARY KEY CLUSTERED(IdBitacora)
	, UsuarioRegistro VARCHAR(250) NOT NULL
	, Movimiento varchar(500)
	, Rol varchar(500)
	, FechaRegistro DATETIME NOT NULL
)
