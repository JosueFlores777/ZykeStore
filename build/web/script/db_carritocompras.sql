USE [Proyec]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](45) NOT NULL,
 CONSTRAINT [PK__categori__8A3D240CE078A713] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [varchar](9) NULL,
	[Nombres] [varchar](255) NULL,
	[Direccion] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Password] [varchar](20) NULL,
	[Foto] [varchar](255) NULL,
	[idRol] [int] NOT NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compras]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compras](
	[idCompras] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idPago] [int] NOT NULL,
	[FechaCompras] [varchar](11) NULL,
	[Monto] [decimal](18, 0) NULL,
	[descuento] [decimal](18, 0) NULL,
	[igv] [decimal](18, 0) NULL,
	[montoFinal] [decimal](18, 0) NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_compras] PRIMARY KEY CLUSTERED 
(
	[idCompras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_compras]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_compras](
	[idDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[idCompras] [int] NOT NULL,
	[Cantidad] [int] NULL,
	[PrecioCompra] [decimal](18, 0) NULL,
	[descuento] [decimal](18, 0) NULL,
	[precioFinal] [decimal](18, 0) NULL,
	[subtotal] [decimal](18, 0) NULL,
 CONSTRAINT [PK_detalle_compras] PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[idPago] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [decimal](18, 0) NULL,
	[idTarjeta] [int] NOT NULL,
 CONSTRAINT [PK_pago] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](255) NULL,
	[Foto] [varchar](255) NULL,
	[Descripcion] [varchar](255) NULL,
	[Precio] [decimal](18, 0) NULL,
	[Stock] [int] NULL,
	[idCategoria] [int] NOT NULL,
	[estado] [varchar](11) NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](45) NOT NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarjeta]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarjeta](
	[idTarjeta] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](45) NOT NULL,
	[Numero] [varchar](20) NOT NULL,
	[FechaCaducidad] [varchar](5) NOT NULL,
	[CodSeguridad] [varchar](3) NOT NULL,
	[saldo] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_tarjeta] PRIMARY KEY CLUSTERED 
(
	[idTarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categoria] ON 

INSERT [dbo].[categoria] ([idCategoria], [Descripcion]) VALUES (1, N'Teclado')
INSERT [dbo].[categoria] ([idCategoria], [Descripcion]) VALUES (2, N'Mouse ')
INSERT [dbo].[categoria] ([idCategoria], [Descripcion]) VALUES (3, N'Mouse Pad')
INSERT [dbo].[categoria] ([idCategoria], [Descripcion]) VALUES (4, N'Cascos')
INSERT [dbo].[categoria] ([idCategoria], [Descripcion]) VALUES (5, N'Controles')
INSERT [dbo].[categoria] ([idCategoria], [Descripcion]) VALUES (6, N'Microfonos')
INSERT [dbo].[categoria] ([idCategoria], [Descripcion]) VALUES (7, N'Case')
INSERT [dbo].[categoria] ([idCategoria], [Descripcion]) VALUES (8, N'Monitores')
SET IDENTITY_INSERT [dbo].[categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[cliente] ON 

INSERT [dbo].[cliente] ([idCliente], [Dni], [Nombres], [Direccion], [Email], [Password], [Foto], [idRol]) VALUES (1, N'12345678', N'Administrador', N'Las Camelias', N'admin@gmail.com', N'123', N'img/fotouser/logo01.png', 1)
INSERT [dbo].[cliente] ([idCliente], [Dni], [Nombres], [Direccion], [Email], [Password], [Foto], [idRol]) VALUES (6, N'46123456', N'Jean Flores', N'Las Calles Perdidas', N'jean@gmail.com', N'123', N'img/fotouser/logo02.png', 2)
INSERT [dbo].[cliente] ([idCliente], [Dni], [Nombres], [Direccion], [Email], [Password], [Foto], [idRol]) VALUES (8, N'444444', N'asdasd', N'asdasd', N'hola@gmail.com', N'123123', N'img/fotouser/Omen_artwork.png', 2)
INSERT [dbo].[cliente] ([idCliente], [Dni], [Nombres], [Direccion], [Email], [Password], [Foto], [idRol]) VALUES (9, N'322323', N'asdasdasd', N'asdasd', N'12sqdas@gmail.com', N'432324', N'img/fotouser/V_AGENTS_587x900_KillJoy_.png', 2)
SET IDENTITY_INSERT [dbo].[cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[compras] ON 

INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (1, 1, 2, N'2021-11-15', CAST(120 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(22 AS Decimal(18, 0)), CAST(120 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (2, 1, 3, N'2021-11-16', CAST(1575 AS Decimal(18, 0)), CAST(315 AS Decimal(18, 0)), CAST(227 AS Decimal(18, 0)), CAST(945 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (3, 1, 5, N'2021-11-16', CAST(165 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), CAST(23 AS Decimal(18, 0)), CAST(85 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (4, 1, 6, N'2021-11-16', CAST(300 AS Decimal(18, 0)), CAST(135 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (5, 1, 7, N'2021-11-16', CAST(50 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (6, 1, 8, N'2021-11-18', CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(36 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (7, 1, 9, N'2021-11-18', CAST(600 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(108 AS Decimal(18, 0)), CAST(600 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (8, 1, 10, N'2021-11-18', CAST(50 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (9, 1, 11, N'2021-11-18', CAST(150 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(27 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (10, 1, 20, N'2021-11-28', CAST(50 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (11, 1, 21, N'2021-11-28', CAST(50 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (12, 1, 22, N'2021-11-28', CAST(50 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (13, 1, 24, N'2021-11-28', CAST(50 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (14, 1, 25, N'2021-11-28', CAST(50 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (15, 1, 26, N'2021-11-28', CAST(265 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(48 AS Decimal(18, 0)), CAST(265 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (16, 1, 27, N'2021-11-29', CAST(300 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(54 AS Decimal(18, 0)), CAST(300 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
INSERT [dbo].[compras] ([idCompras], [idCliente], [idPago], [FechaCompras], [Monto], [descuento], [igv], [montoFinal], [Estado]) VALUES (17, 1, 28, N'2021-11-29', CAST(45 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(8 AS Decimal(18, 0)), CAST(45 AS Decimal(18, 0)), N'Cancelado - En Proceso de Envio')
SET IDENTITY_INSERT [dbo].[compras] OFF
GO
SET IDENTITY_INSERT [dbo].[detalle_compras] ON 

INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (1, 49, 1, 2, CAST(60 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(60 AS Decimal(18, 0)), CAST(120 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (2, 56, 2, 35, CAST(45 AS Decimal(18, 0)), CAST(36 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(315 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (3, 51, 3, 1, CAST(50 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (4, 58, 3, 1, CAST(70 AS Decimal(18, 0)), CAST(49 AS Decimal(18, 0)), CAST(21 AS Decimal(18, 0)), CAST(21 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (5, 56, 3, 1, CAST(45 AS Decimal(18, 0)), CAST(36 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (6, 51, 4, 3, CAST(50 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (7, 52, 4, 1, CAST(150 AS Decimal(18, 0)), CAST(45 AS Decimal(18, 0)), CAST(105 AS Decimal(18, 0)), CAST(105 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (8, 51, 5, 1, CAST(50 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (9, 51, 6, 4, CAST(50 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (10, 52, 7, 4, CAST(150 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), CAST(600 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (11, 51, 8, 1, CAST(50 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (12, 52, 9, 1, CAST(150 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (13, 51, 10, 1, CAST(50 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (14, 51, 11, 1, CAST(50 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (15, 51, 12, 1, CAST(50 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (16, 51, 13, 1, CAST(50 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (17, 51, 14, 1, CAST(50 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (18, 52, 15, 1, CAST(150 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (19, 56, 15, 1, CAST(45 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(45 AS Decimal(18, 0)), CAST(45 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (20, 58, 15, 1, CAST(70 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(70 AS Decimal(18, 0)), CAST(70 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (21, 52, 16, 2, CAST(150 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (22, 12, 17, 1, CAST(20 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (23, 20, 17, 1, CAST(15 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(15 AS Decimal(18, 0)), CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[detalle_compras] ([idDetalle], [idProducto], [idCompras], [Cantidad], [PrecioCompra], [descuento], [precioFinal], [subtotal]) VALUES (24, 21, 17, 1, CAST(10 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[detalle_compras] OFF
GO
SET IDENTITY_INSERT [dbo].[pago] ON 

INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (1, CAST(100 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (2, CAST(120 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (3, CAST(1260 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (4, CAST(1260 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (5, CAST(125 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (6, CAST(165 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (7, CAST(40 AS Decimal(18, 0)), 2)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (8, CAST(200 AS Decimal(18, 0)), 2)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (9, CAST(600 AS Decimal(18, 0)), 2)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (10, CAST(50 AS Decimal(18, 0)), 2)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (11, CAST(150 AS Decimal(18, 0)), 2)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (12, CAST(60 AS Decimal(18, 0)), 2)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (13, CAST(60 AS Decimal(18, 0)), 2)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (14, CAST(60 AS Decimal(18, 0)), 2)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (15, CAST(30 AS Decimal(18, 0)), 2)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (16, CAST(30 AS Decimal(18, 0)), 2)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (17, CAST(150 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (18, CAST(150 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (19, CAST(150 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (20, CAST(30 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (21, CAST(30 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (22, CAST(30 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (23, CAST(30 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (24, CAST(30 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (25, CAST(30 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (26, CAST(265 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (27, CAST(300 AS Decimal(18, 0)), 1)
INSERT [dbo].[pago] ([idPago], [Monto], [idTarjeta]) VALUES (28, CAST(45 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[pago] OFF
GO
SET IDENTITY_INSERT [dbo].[producto] ON 

INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (7, N'Control PS5', N'img/productos/control1.png', N'Control para PS5 Estilo Rojo', CAST(75 AS Decimal(18, 0)), 20, 5, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (12, N'Control XBOX ONE', N'img/productos/control2.png', N'Control para XBOX ONE', CAST(60 AS Decimal(18, 0)), 19, 5, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (13, N'Control XBOX Gamer', N'img/productos/control3.png', N'Control para XBOX con iluminacion en los botones', CAST(65 AS Decimal(18, 0)), 25, 5, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (15, N'Microfono HyperX', N'img/productos/microfono1.png', N'Microfono inalambrico que aisla el ruido', CAST(45 AS Decimal(18, 0)), 30, 6, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (17, N'Microfono Factor', N'img/productos/microfono2.png', N'Microfono alambrico con accesorios', CAST(25 AS Decimal(18, 0)), 25, 6, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (18, N'Microfono Xtrike', N'img/productos/microfono3.png', N'Microfono Gamer con facilidad de movimiento', CAST(10 AS Decimal(18, 0)), 20, 6, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (19, N'Case Antec - ATX ', N'img/productos/case.png', N'Case ATX con tapa de cristal', CAST(125 AS Decimal(18, 0)), 25, 7, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (20, N'Case ATx', N'img/productos/ordenador.png', N'Ordenador ATX con estilo sofisticado', CAST(190 AS Decimal(18, 0)), 19, 7, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (21, N'Memoria RAM HyperX', N'img/productos/MemoriaRam.png', N'HyperX Fury 16GB DDR4', CAST(110 AS Decimal(18, 0)), 14, 7, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (22, N'SSD Externo 2000 GB', N'img/productos/DiscoDuro.png', N'HDD Externo 2TB ', CAST(80 AS Decimal(18, 0)), 20, 7, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (25, N'Monitor Gamer', N'img/productos/MonitorGamer.png', N'Monitor Gamer de 23" para una mejor resolucion', CAST(120 AS Decimal(18, 0)), 15, 8, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (26, N'Monitor LED', N'img/productos/MonitorGamer2.png', N'Monitor Gamer LED de 20"', CAST(150 AS Decimal(18, 0)), 20, 8, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (49, N'Razer Electra', N'img/productos/categoria-1.png', N'Puerto: USB , Sonido: 7.1 ', CAST(60 AS Decimal(18, 0)), 0, 4, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (51, N'Razer Firefly V2', N'img/productos/categoria-2.png', N'Razer Chroma', CAST(50 AS Decimal(18, 0)), 0, 1, N'40')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (52, N'SHIVA K512', N'img/productos/categoria-4.png', N'Membrana retroiluminado RGB', CAST(150 AS Decimal(18, 0)), 1, 1, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (56, N'Logitech g502', N'img/productos/categoria-5.png', N'16,000 dpi, RGB, Peso Reducido ', CAST(45 AS Decimal(18, 0)), 1197, 2, N'Normal')
INSERT [dbo].[producto] ([idProducto], [Nombres], [Foto], [Descripcion], [Precio], [Stock], [idCategoria], [estado]) VALUES (58, N'Logitech G935', N'img/productos/categoria-3.png', N'Surround Sound LIGHTSYNC RGB ', CAST(70 AS Decimal(18, 0)), 3211, 4, N'Normal')
SET IDENTITY_INSERT [dbo].[producto] OFF
GO
SET IDENTITY_INSERT [dbo].[rol] ON 

INSERT [dbo].[rol] ([idRol], [Descripcion]) VALUES (1, N'Administrador')
INSERT [dbo].[rol] ([idRol], [Descripcion]) VALUES (2, N'Usuarios')
SET IDENTITY_INSERT [dbo].[rol] OFF
GO
SET IDENTITY_INSERT [dbo].[tarjeta] ON 

INSERT [dbo].[tarjeta] ([idTarjeta], [Nombre], [Numero], [FechaCaducidad], [CodSeguridad], [saldo]) VALUES (1, N'Juan Romero', N'1111111111111111', N'01/30', N'123', CAST(1365 AS Decimal(18, 0)))
INSERT [dbo].[tarjeta] ([idTarjeta], [Nombre], [Numero], [FechaCaducidad], [CodSeguridad], [saldo]) VALUES (2, N'Jean Flo', N'2222222222222222', N'01/30', N'123', CAST(31548 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[tarjeta] OFF
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [DF__cliente__Dni__108B795B]  DEFAULT (NULL) FOR [Dni]
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [DF__cliente__Nombres__117F9D94]  DEFAULT (NULL) FOR [Nombres]
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [DF__cliente__Direcci__1273C1CD]  DEFAULT (NULL) FOR [Direccion]
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [DF__cliente__Email__1367E606]  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [DF__cliente__Passwor__145C0A3F]  DEFAULT (NULL) FOR [Password]
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [DF__cliente__Foto__15502E78]  DEFAULT (NULL) FOR [Foto]
GO
ALTER TABLE [dbo].[compras] ADD  CONSTRAINT [DF__compras__FechaCo__173876EA]  DEFAULT (NULL) FOR [FechaCompras]
GO
ALTER TABLE [dbo].[compras] ADD  CONSTRAINT [DF__compras__Monto__182C9B23]  DEFAULT (NULL) FOR [Monto]
GO
ALTER TABLE [dbo].[compras] ADD  CONSTRAINT [DF__compras__descuen__1920BF5C]  DEFAULT (NULL) FOR [descuento]
GO
ALTER TABLE [dbo].[compras] ADD  CONSTRAINT [DF__compras__igv__1A14E395]  DEFAULT (NULL) FOR [igv]
GO
ALTER TABLE [dbo].[compras] ADD  CONSTRAINT [DF__compras__montoFi__1B0907CE]  DEFAULT (NULL) FOR [montoFinal]
GO
ALTER TABLE [dbo].[compras] ADD  CONSTRAINT [DF__compras__Estado__1BFD2C07]  DEFAULT (NULL) FOR [Estado]
GO
ALTER TABLE [dbo].[detalle_compras] ADD  CONSTRAINT [DF__detalle_c__Canti__1DE57479]  DEFAULT (NULL) FOR [Cantidad]
GO
ALTER TABLE [dbo].[detalle_compras] ADD  CONSTRAINT [DF__detalle_c__Preci__1ED998B2]  DEFAULT (NULL) FOR [PrecioCompra]
GO
ALTER TABLE [dbo].[detalle_compras] ADD  CONSTRAINT [DF__detalle_c__descu__1FCDBCEB]  DEFAULT (NULL) FOR [descuento]
GO
ALTER TABLE [dbo].[detalle_compras] ADD  CONSTRAINT [DF__detalle_c__preci__20C1E124]  DEFAULT (NULL) FOR [precioFinal]
GO
ALTER TABLE [dbo].[detalle_compras] ADD  CONSTRAINT [DF__detalle_c__subto__21B6055D]  DEFAULT (NULL) FOR [subtotal]
GO
ALTER TABLE [dbo].[pago] ADD  CONSTRAINT [DF__pago__Monto__239E4DCF]  DEFAULT (NULL) FOR [Monto]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__Nombre__25869641]  DEFAULT (NULL) FOR [Nombres]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__Foto__267ABA7A]  DEFAULT (NULL) FOR [Foto]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__Descri__276EDEB3]  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__Precio__286302EC]  DEFAULT (NULL) FOR [Precio]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__Stock__29572725]  DEFAULT (NULL) FOR [Stock]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__estado__2A4B4B5E]  DEFAULT (NULL) FOR [estado]
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FK_cliente_rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[rol] ([idRol])
GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK_cliente_rol]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[cliente] ([idCliente])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [FK_compras_cliente]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_pago] FOREIGN KEY([idPago])
REFERENCES [dbo].[pago] ([idPago])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [FK_compras_pago]
GO
ALTER TABLE [dbo].[detalle_compras]  WITH CHECK ADD  CONSTRAINT [FK_detalle_compras_compras] FOREIGN KEY([idCompras])
REFERENCES [dbo].[compras] ([idCompras])
GO
ALTER TABLE [dbo].[detalle_compras] CHECK CONSTRAINT [FK_detalle_compras_compras]
GO
ALTER TABLE [dbo].[detalle_compras]  WITH CHECK ADD  CONSTRAINT [FK_detalle_compras_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([idProducto])
GO
ALTER TABLE [dbo].[detalle_compras] CHECK CONSTRAINT [FK_detalle_compras_producto]
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [FK_pago_tarjeta] FOREIGN KEY([idTarjeta])
REFERENCES [dbo].[tarjeta] ([idTarjeta])
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [FK_pago_tarjeta]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_categoria] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_categoria]
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarSaldoTarjeta]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ActualizarSaldoTarjeta]
@saldo decimal(18,0),
@idTarjeta varchar(20)
As
Begin
	update tarjeta set saldo = @saldo where idTarjeta = @idTarjeta
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarStock]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ActualizarStock]
@Stock int,
@idProducto int
As
Begin
	update producto set Stock=Stock-@Stock where idProducto = @idProducto
End
GO
/****** Object:  StoredProcedure [dbo].[SP_AgregarCliente]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_AgregarCliente]
@Dni varchar(9),
@Nombres varchar(255),
@Direccion varchar(255),
@Email varchar(255),
@Password varchar(20)
As
Begin
	INSERT INTO cliente (Dni, Nombres, Direccion, Email, Password)
	values(@Dni,@Nombres,@Direccion,@Email,@Password)
End
GO
/****** Object:  StoredProcedure [dbo].[SP_AgregarNuevoProducto]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AgregarNuevoProducto]
@Nombre varchar(155),
@Foto varchar(255),
@Descripcion varchar(255),
@Precio decimal (18,0),
@Stock int,
@idCategoria int,
@Estado varchar(11)
As
Begin
	insert into producto(Nombres,Foto,Descripcion,Precio,Stock,idCategoria,estado)
	values(@Nombre,@Foto,@Descripcion,@Precio,@Stock,@idCategoria,@Estado)
End

--exec SP_AgregarNuevoProducto
GO
/****** Object:  StoredProcedure [dbo].[SP_AgregarUsuario]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AgregarUsuario]
@Dni varchar(9),
@Nombres varchar(255),
@Direccion varchar(255),
@Email varchar(255),
@Password varchar(20),
@Foto varchar(255),
@IdRol int
As
Begin
	INSERT INTO cliente (Dni, Nombres, Direccion, Email, Password, Foto, idRol)
	values(@Dni,@Nombres,@Direccion,@Email,@Password, @Foto,@IdRol)
End
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarProducto]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_BuscarProducto]
@nombre varchar(255)
As
Begin
	select * from producto where Nombres like '%'+@nombre+'%' 
End
GO
/****** Object:  StoredProcedure [dbo].[SP_DetalleIdCompra]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DetalleIdCompra]
@id int
As
Begin
	SELECT p.idProducto, p.Nombres,p.Foto,dc.PrecioCompra,dc.Cantidad,dc.descuento,dc.precioFinal, dc.subtotal FROM detalle_compras dc INNER JOIN  compras c on dc.idCompras=c.idCompras INNER JOIN producto p on  dc.idProducto=p.idProducto WHERE c.idCompras= @id
End
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarProducto]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_EliminarProducto]
@idProducto int
As
Begin
	delete from producto where idProducto = @idProducto
End
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarUsuario]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_EliminarUsuario]
@IdCliente int
As
Begin
	delete from cliente where idCliente = @IdCliente
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GuardarCompra]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GuardarCompra]
@idCliente int,
@idPago int, 
@FechaCompras varchar(11),
@Monto decimal(18,0),
@descuento decimal(18,0),
@igv decimal(18,0),
@montoFinal decimal(18,0),
@Estado varchar(50)
As
Begin
	insert into Compras(idCliente,idPago, FechaCompras,Monto,descuento,igv,montoFinal,Estado)values(@idCliente,@idPago,@FechaCompras,@Monto,@descuento,@igv,@montoFinal,@Estado)
End
GO
/****** Object:  StoredProcedure [dbo].[SP_GuardarDetalleCompra]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GuardarDetalleCompra]
@idProducto int,
@idCompras int, 
@Cantidad int,
@PrecioCompra decimal(18,0),
@descuento decimal(18,0),
@precioFinal decimal(18,0),
@subtotal decimal(18,0)
As
Begin
	insert into detalle_compras (idProducto,idCompras,Cantidad,PrecioCompra,descuento,precioFinal,subtotal)values(@idProducto,@idCompras,@Cantidad,@PrecioCompra,@descuento,@precioFinal,@subtotal)
End
GO
/****** Object:  StoredProcedure [dbo].[SP_IdPago]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_IdPago]
As
Begin
	select max(idPago) from pago
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarCategoria]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ListarCategoria]
As
Begin
	select * from categoria
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarCliente]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ListarCliente]
As
Begin
	Select * from cliente
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarClienteId]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ListarClienteId]
@id int
As
Begin
	SELECT * FROM  cliente c INNER JOIN rol r on c.idRol=r.idRol where c.idCliente = @id;
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarIdProducto]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ListarIdProducto]
@id int
As
Begin
	select * from producto where idProducto = @id
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarNumTarjeta]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ListarNumTarjeta]
@idTarjeta varchar(20)
As
Begin
	select * from tarjeta where Numero = @idTarjeta
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarPag]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ListarPag]
As
Begin
	SELECT p.idProducto,p.Nombres,p.Foto,p.Descripcion,p.Precio,p.Stock, c.Descripcion, p.estado FROM producto p INNER JOIN categoria c on p.idCategoria=c.idCategoria ORDER BY p.idProducto
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarPag2]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ListarPag2]
@pag1 int,
@pag2 int
As
Begin
	SELECT p.idProducto,p.Nombres,p.Foto,p.Descripcion,p.Precio,p.Stock, c.Descripcion, p.estado FROM producto p INNER JOIN categoria c on p.idCategoria=c.idCategoria where  p.idProducto BETWEEN @pag1 AND  @pag2
End

--exec SP_ListarPag2 1,1
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarProductos]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ListarProductos]
As
Begin
	SELECT p.idProducto,p.Nombres,p.Foto,p.Descripcion,p.Precio,p.Stock, c.Descripcion, p.estado FROM producto p INNER JOIN categoria c on p.idCategoria=c.idCategoria ORDER BY p.idProducto ASC
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarRol]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ListarRol]
As
Begin
	Select * from rol
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarXCategoria]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ListarXCategoria]
@cat int
As
Begin
	SELECT p.idProducto,p.Nombres,p.Foto,p.Descripcion,p.Precio,p.Stock, c.Descripcion, p.estado FROM producto p INNER JOIN categoria c on p.idCategoria=c.idCategoria where p.idCategoria = @cat
End

--exec SP_ListarXCategoria 1
GO
/****** Object:  StoredProcedure [dbo].[SP_MaxIdCompra]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_MaxIdCompra]
As
Begin
	select max(idCompras) from compras
End
GO
/****** Object:  StoredProcedure [dbo].[SP_MisCompras]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_MisCompras]
@id int
As
Begin
	select idCompras,idCliente,idPago,FechaCompras,cast(Monto as decimal(10,2)),cast(descuento as decimal(10,2)),cast(igv as decimal(10,2)),cast(montoFinal as decimal(10,2)),Estado from compras where idCliente= @id;
End
GO
/****** Object:  StoredProcedure [dbo].[SP_Pago]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Pago]
@Monto decimal(18,0),
@idTarjeta int
As
Begin
	insert into pago(Monto,idTarjeta) values (@Monto,@idTarjeta)
End
GO
/****** Object:  StoredProcedure [dbo].[SP_ValidarCliente]    Script Date: 11/30/2021 3:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ValidarCliente]
@email varchar(50),
@password varchar(50)
As
Begin
	SELECT * FROM  cliente c INNER JOIN rol r on c.idRol=r.idRol where c.Email=@email and c.Password=@password;
End
GO
