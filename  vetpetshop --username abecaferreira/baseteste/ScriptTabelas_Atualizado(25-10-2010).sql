
GO
/****** Object:  Table [dbo].[TipoAnimal]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoAnimal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoAnimal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Veterinario]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Veterinario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
 CONSTRAINT [PK_Veterinario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendedor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administrador](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
 CONSTRAINT [PK_Administrador] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estoque]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estoque](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [smallint] NULL,
	[Quantidade] [int] NULL,
 CONSTRAINT [PK_Estoque] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](20) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[RG] [varchar](20) NULL,
	[Telefone1] [varchar](15) NULL,
	[Telefone2] [varchar](15) NULL,
	[Email] [varchar](30) NULL,
	[Endereco] [varchar](50) NULL,
	[Bairro] [varchar](20) NULL,
	[Cidade] [varchar](20) NULL,
	[Estado] [varchar](20) NULL,
	[CEP] [varchar](20) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VeterinarioCliente]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeterinarioCliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdVeterinario] [int] NOT NULL,
 CONSTRAINT [PK_VeterinarioCliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
USE  testando_script
GO
/****** Object:  Table [dbo].[HistoricoEstoque]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricoEstoque](
	[IdEstoque] [int] NOT NULL,
	[DataEstoque] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Animal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoAnimal] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Peso] [decimal](9, 2) NOT NULL,
	[Raca] [varchar](50) NULL,
	[Nome] [varchar](50) NOT NULL,
	[DataFimVacinacao] [datetime] NULL,
	[DataNascimento] [datetime] NULL,
	[DataProxVacinacao] [datetime] NULL,
 CONSTRAINT [PK_Animal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdAdministrador] [int] NULL,
	[IdVeterinario] [int] NULL,
	[IdVendedor] [int] NULL,
	[Nome] [varchar](50) NULL,
	[TipoUsuario] [int] NOT NULL,
	[Senha] [varchar](20) NOT NULL,
	[Email] [varchar](30) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NotaFiscal]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdVendedor] [int] NULL,
	[IdAdministrador] [int] NULL,
	[IdUsuario] [int] NOT NULL,
	[DataCadastro] [datetime] NULL,
	[Valor] [decimal](9, 2) NULL,
	[Status] [int] NULL,
	[DataRecebimento] [datetime] NULL,
 CONSTRAINT [PK_NotaFiscal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Financeiro]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Financeiro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[ValorTotal] [decimal](9, 2) NULL,
	[TipoPagamento] [int] NOT NULL,
	[Parcelas] [int] NULL,
	[TipoTransacao] [int] NOT NULL,
	[TipoResponsavel] [int] NOT NULL,
	[DataTransacao] [datetime] NOT NULL,
	[NomeCliente] [varchar](100) NULL,
 CONSTRAINT [PK_Financeiro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConsultaVeterinaria]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultaVeterinaria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdFinanceiro] [int] NULL,
	[Valor] [decimal](9, 2) NULL,
	[Data] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[TipoConsulta] [int] NULL,
 CONSTRAINT [PK_ConsultaVeterinaria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupo] [int] NOT NULL,
	[IdFinanceiro] [int] NULL,
	[Nome] [varchar](50) NULL,
	[EstoqueMin] [int] NULL,
	[EstoqueMax] [int] NULL,
	[Descricao] [varchar](200) NULL,
	[PrecoCusto] [decimal](9, 2) NULL,
	[DataValidade] [datetime] NULL,
	[PrecoVenda] [decimal](9, 2) NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProdutoNotaFiscal]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutoNotaFiscal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProduto] [int] NOT NULL,
	[IdNotaFiscal] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
 CONSTRAINT [PK_ProdutoNotaFiscal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinanceiroProduto]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceiroProduto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFinanceiro] [int] NULL,
	[IdProduto] [int] NULL,
	[DataTransacao] [datetime] NULL,
	[Quantidade] [int] NULL,
 CONSTRAINT [PK_FinanceiroProduto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstoqueProduto]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstoqueProduto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEstoque] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
 CONSTRAINT [PK_EstoqueProduto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultaAnimal]    Script Date: 10/25/2010 22:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultaAnimal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdConsulta] [int] NOT NULL,
	[IdAnimal] [int] NOT NULL,
 CONSTRAINT [PK_ConsultaAnimal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Animal_IdCliente]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_IdCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_IdCliente]
GO
/****** Object:  ForeignKey [FK_Animal_TipoAnimal]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_TipoAnimal] FOREIGN KEY([IdTipoAnimal])
REFERENCES [dbo].[TipoAnimal] ([Id])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_TipoAnimal]
GO
/****** Object:  ForeignKey [FK_ConsultaAnimal_Animal]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[ConsultaAnimal]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaAnimal_Animal] FOREIGN KEY([IdAnimal])
REFERENCES [dbo].[Animal] ([Id])
GO
ALTER TABLE [dbo].[ConsultaAnimal] CHECK CONSTRAINT [FK_ConsultaAnimal_Animal]
GO
/****** Object:  ForeignKey [FK_ConsultaAnimal_ConsultaVeterinaria]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[ConsultaAnimal]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaAnimal_ConsultaVeterinaria] FOREIGN KEY([IdConsulta])
REFERENCES [dbo].[ConsultaVeterinaria] ([Id])
GO
ALTER TABLE [dbo].[ConsultaAnimal] CHECK CONSTRAINT [FK_ConsultaAnimal_ConsultaVeterinaria]
GO
/****** Object:  ForeignKey [FK_ConsultaVeterinaria_Financeiro]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[ConsultaVeterinaria]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaVeterinaria_Financeiro] FOREIGN KEY([IdFinanceiro])
REFERENCES [dbo].[Financeiro] ([Id])
GO
ALTER TABLE [dbo].[ConsultaVeterinaria] CHECK CONSTRAINT [FK_ConsultaVeterinaria_Financeiro]
GO
/****** Object:  ForeignKey [FK_ConsultaVeterinaria_Usuario]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[ConsultaVeterinaria]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaVeterinaria_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[ConsultaVeterinaria] CHECK CONSTRAINT [FK_ConsultaVeterinaria_Usuario]
GO
/****** Object:  ForeignKey [FK_EstoqueProduto_Estoque]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[EstoqueProduto]  WITH CHECK ADD  CONSTRAINT [FK_EstoqueProduto_Estoque] FOREIGN KEY([IdEstoque])
REFERENCES [dbo].[Estoque] ([Id])
GO
ALTER TABLE [dbo].[EstoqueProduto] CHECK CONSTRAINT [FK_EstoqueProduto_Estoque]
GO
/****** Object:  ForeignKey [FK_EstoqueProduto_Produto]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[EstoqueProduto]  WITH CHECK ADD  CONSTRAINT [FK_EstoqueProduto_Produto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([Id])
GO
ALTER TABLE [dbo].[EstoqueProduto] CHECK CONSTRAINT [FK_EstoqueProduto_Produto]
GO
/****** Object:  ForeignKey [FK_Financeiro_Usuario]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[Financeiro]  WITH CHECK ADD  CONSTRAINT [FK_Financeiro_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Financeiro] CHECK CONSTRAINT [FK_Financeiro_Usuario]
GO
/****** Object:  ForeignKey [FK_Financeiro_Financeiro]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[FinanceiroProduto]  WITH CHECK ADD  CONSTRAINT [FK_Financeiro_Financeiro] FOREIGN KEY([IdFinanceiro])
REFERENCES [dbo].[Financeiro] ([Id])
GO
ALTER TABLE [dbo].[FinanceiroProduto] CHECK CONSTRAINT [FK_Financeiro_Financeiro]
GO
/****** Object:  ForeignKey [FK_Financeiro_Produto]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[FinanceiroProduto]  WITH CHECK ADD  CONSTRAINT [FK_Financeiro_Produto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([Id])
GO
ALTER TABLE [dbo].[FinanceiroProduto] CHECK CONSTRAINT [FK_Financeiro_Produto]
GO
/****** Object:  ForeignKey [FK_HistoricoEstoque_Estoque]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[HistoricoEstoque]  WITH CHECK ADD  CONSTRAINT [FK_HistoricoEstoque_Estoque] FOREIGN KEY([IdEstoque])
REFERENCES [dbo].[Estoque] ([Id])
GO
ALTER TABLE [dbo].[HistoricoEstoque] CHECK CONSTRAINT [FK_HistoricoEstoque_Estoque]
GO
/****** Object:  ForeignKey [FK_NotaFiscal_Administrador]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_Administrador] FOREIGN KEY([IdAdministrador])
REFERENCES [dbo].[Administrador] ([Id])
GO
ALTER TABLE [dbo].[NotaFiscal] CHECK CONSTRAINT [FK_NotaFiscal_Administrador]
GO
/****** Object:  ForeignKey [FK_NotaFiscal_Usuario]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[NotaFiscal] CHECK CONSTRAINT [FK_NotaFiscal_Usuario]
GO
/****** Object:  ForeignKey [FK_NotaFiscal_Vendedor]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_Vendedor] FOREIGN KEY([IdVendedor])
REFERENCES [dbo].[Vendedor] ([Id])
GO
ALTER TABLE [dbo].[NotaFiscal] CHECK CONSTRAINT [FK_NotaFiscal_Vendedor]
GO
/****** Object:  ForeignKey [FK_Produto_Financeiro]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Produto_Financeiro] FOREIGN KEY([IdFinanceiro])
REFERENCES [dbo].[Financeiro] ([Id])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Produto_Financeiro]
GO
/****** Object:  ForeignKey [FK_Produto_Grupo]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Produto_Grupo] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Grupo] ([Id])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Produto_Grupo]
GO
/****** Object:  ForeignKey [FK_ProdutoNotaFiscal_NotaFiscal]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[ProdutoNotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoNotaFiscal_NotaFiscal] FOREIGN KEY([IdNotaFiscal])
REFERENCES [dbo].[NotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[ProdutoNotaFiscal] CHECK CONSTRAINT [FK_ProdutoNotaFiscal_NotaFiscal]
GO
/****** Object:  ForeignKey [FK_ProdutoNotaFiscal_Produto]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[ProdutoNotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoNotaFiscal_Produto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([Id])
GO
ALTER TABLE [dbo].[ProdutoNotaFiscal] CHECK CONSTRAINT [FK_ProdutoNotaFiscal_Produto]
GO
/****** Object:  ForeignKey [FK_Usuario_Administrador]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Administrador] FOREIGN KEY([IdAdministrador])
REFERENCES [dbo].[Administrador] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Administrador]
GO
/****** Object:  ForeignKey [FK_Usuario_Vendedor]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Vendedor] FOREIGN KEY([IdVendedor])
REFERENCES [dbo].[Vendedor] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Vendedor]
GO
/****** Object:  ForeignKey [FK_Usuario_Veterinario]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Veterinario] FOREIGN KEY([IdVeterinario])
REFERENCES [dbo].[Veterinario] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Veterinario]
GO
/****** Object:  ForeignKey [FK_VeterinarioCliente_Cliente]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[VeterinarioCliente]  WITH CHECK ADD  CONSTRAINT [FK_VeterinarioCliente_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[VeterinarioCliente] CHECK CONSTRAINT [FK_VeterinarioCliente_Cliente]
GO
/****** Object:  ForeignKey [FK_VeterinarioCliente_Veterinario]    Script Date: 10/25/2010 22:07:52 ******/
ALTER TABLE [dbo].[VeterinarioCliente]  WITH CHECK ADD  CONSTRAINT [FK_VeterinarioCliente_Veterinario] FOREIGN KEY([IdVeterinario])
REFERENCES [dbo].[Veterinario] ([Id])
GO
ALTER TABLE [dbo].[VeterinarioCliente] CHECK CONSTRAINT [FK_VeterinarioCliente_Veterinario]
GO
