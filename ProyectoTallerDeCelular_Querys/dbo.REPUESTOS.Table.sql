USE [DbCelular]
GO
/****** Object:  Table [dbo].[REPUESTOS]    Script Date: 22/11/2024 17:10:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPUESTOS](
	[idRepuesto] [int] IDENTITY(1,1) NOT NULL,
	[idMarca] [int] NULL,
	[idModelo] [int] NULL,
	[descripcion] [varchar](255) NULL,
	[idTipo] [int] NULL,
	[valor] [decimal](10, 2) NULL,
	[bd_est] [int] NULL,
	[cantidad] [int] NULL,
	[fechaIngreso] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idRepuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
