USE [DbCelular]
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarCliente]    Script Date: 22/11/2024 17:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarCliente]
    @idCliente INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Eliminar los registros en la tabla rol_usuario que referencian al usuario
    DELETE FROM rol_usuario WHERE idUsuario IN (SELECT idUsuario FROM USUARIO WHERE idCliente = @idCliente);

    -- Eliminar los registros en la tabla USUARIO que referencian al cliente
    DELETE FROM USUARIO WHERE idCliente = @idCliente;

    -- Ahora puedes eliminar el cliente
    DELETE FROM CLIENTE WHERE idCliente = @idCliente;
END

GO
