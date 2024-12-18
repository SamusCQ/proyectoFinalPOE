USE [DbCelular]
GO
/****** Object:  Table [dbo].[CAJAD1]    Script Date: 22/11/2024 17:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAJAD1](
	[idNegocio] [int] NOT NULL,
	[nu_movim] [int] NOT NULL,
	[idFactura] [int] NOT NULL,
	[va_valor] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CAJAD1]  WITH CHECK ADD  CONSTRAINT [FK__CAJAD1__idFactur__76969D2E] FOREIGN KEY([idFactura])
REFERENCES [dbo].[factura] ([idFactura])
GO
ALTER TABLE [dbo].[CAJAD1] CHECK CONSTRAINT [FK__CAJAD1__idFactur__76969D2E]
GO
ALTER TABLE [dbo].[CAJAD1]  WITH CHECK ADD FOREIGN KEY([idNegocio])
REFERENCES [dbo].[NEGOCIO] ([idNegocio])
GO
ALTER TABLE [dbo].[CAJAD1]  WITH CHECK ADD FOREIGN KEY([nu_movim])
REFERENCES [dbo].[CAJA] ([nu_movim])
GO
