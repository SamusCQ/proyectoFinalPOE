USE [DbCelular]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUsuarios]    Script Date: 22/11/2024 17:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetUsuarios]
AS
BEGIN
    SELECT idUsuario, Usuario, clave, idCliente, idTecnico, bd_est
    FROM USUARIO
END
GO
