USE [DbCelular]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 22/11/2024 17:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[idFactura] [int] IDENTITY(1,1) NOT NULL,
	[idNegocio] [int] NULL,
	[idReparacion] [int] NULL,
	[idCliente] [int] NULL,
	[valor] [decimal](10, 2) NULL,
	[fecha] [datetime] NULL,
	[bd_est] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK__FACTURA__idClien__66603565] FOREIGN KEY([idCliente])
REFERENCES [dbo].[CLIENTE] ([idCliente])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK__FACTURA__idClien__66603565]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK__FACTURA__idNegoc__6477ECF3] FOREIGN KEY([idNegocio])
REFERENCES [dbo].[NEGOCIO] ([idNegocio])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK__FACTURA__idNegoc__6477ECF3]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK__FACTURA__idRepar__656C112C] FOREIGN KEY([idReparacion])
REFERENCES [dbo].[REPARACIONES] ([idReparacion])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK__FACTURA__idRepar__656C112C]
GO
