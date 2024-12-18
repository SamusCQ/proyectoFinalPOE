USE [DbCelular]
GO
/****** Object:  StoredProcedure [dbo].[sp_GuardarCliente]    Script Date: 22/11/2024 17:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GuardarCliente]
    @nombre NVARCHAR(50),
    @apellido NVARCHAR(50),
    @nu_cedula NVARCHAR(20),
    @nu_celular NVARCHAR(20),
    @correo NVARCHAR(100),
    @bd_est INT
AS
BEGIN
    INSERT INTO CLIENTE (nombre, apellido, nu_cedula, nu_celular, correo, bd_est)
    VALUES (@nombre, @apellido, @nu_cedula, @nu_celular, @correo, @bd_est)
END
GO
