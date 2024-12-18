USE [DbCelular]
GO
/****** Object:  Table [dbo].[CAJAD]    Script Date: 22/11/2024 17:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAJAD](
	[idNegocio] [int] NOT NULL,
	[nu_movim] [int] NOT NULL,
	[nu_detalle] [int] NOT NULL,
	[idFormaPago] [int] NOT NULL,
	[idBanco] [int] NOT NULL,
	[valor] [decimal](18, 0) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CAJAD]  WITH CHECK ADD FOREIGN KEY([idBanco])
REFERENCES [dbo].[BANCO] ([idBanco])
GO
ALTER TABLE [dbo].[CAJAD]  WITH CHECK ADD FOREIGN KEY([idFormaPago])
REFERENCES [dbo].[FORMAPAGO] ([idFormaPago])
GO
ALTER TABLE [dbo].[CAJAD]  WITH CHECK ADD FOREIGN KEY([idNegocio])
REFERENCES [dbo].[NEGOCIO] ([idNegocio])
GO
ALTER TABLE [dbo].[CAJAD]  WITH CHECK ADD FOREIGN KEY([nu_movim])
REFERENCES [dbo].[CAJA] ([nu_movim])
GO
