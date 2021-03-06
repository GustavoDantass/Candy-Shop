USE [master]
GO
/****** Object:  Database [CandyShop]    Script Date: 29/09/2017 08:03:10 ******/
CREATE DATABASE [CandyShop]
USE [CandyShop]
GO
ALTER DATABASE [CandyShop] SET COMPATIBILITY_LEVEL = 130
GO

begin
EXEC [CandyShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CandyShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CandyShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CandyShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CandyShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CandyShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [CandyShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CandyShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CandyShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CandyShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CandyShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CandyShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CandyShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CandyShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CandyShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CandyShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CandyShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CandyShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CandyShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CandyShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CandyShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CandyShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CandyShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CandyShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CandyShop] SET  MULTI_USER 
GO
ALTER DATABASE [CandyShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CandyShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CandyShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CandyShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CandyShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CandyShop] SET QUERY_STORE = OFF
GO
USE [CandyShop]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CandyShop]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[IdCompra] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioCompra] [varchar](11) NULL,
	[DataCompra] [datetime] NULL,
	[ValorCompra] [decimal](15, 2) NULL,
 CONSTRAINT [PK_IdCompra] PRIMARY KEY CLUSTERED 
(
	[IdCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompraProduto]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompraProduto](
	[IdProduto] [int] NULL,
	[IdCompra] [int] NULL,
	[QtdeProduto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagamento]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagamento](
	[IdPagamento] [int] IDENTITY(1,1) NOT NULL,
	[Cpf] [varchar](11) NULL,
	[DataPagamento] [datetime] NULL,
	[ValorPagamento] [decimal](15, 2) NULL,
 CONSTRAINT [PK_IdPagamento] PRIMARY KEY CLUSTERED 
(
	[IdPagamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[IdProduto] [int] IDENTITY(1,1) NOT NULL,
	[NomeProduto] [varchar](40) NULL,
	[PrecoProduto] [decimal](15, 2) NULL,
	[QtdeProduto] [int] NULL,
	[Ativo] [varchar](1) NULL,
	[Categoria] [varchar](50) NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Cpf] [varchar](11) NOT NULL,
	[NomeUsuario] [varchar](50) NULL,
	[SenhaUsuario] [varchar](12) NULL,
	[SaldoUsuario] [decimal](18, 2) NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_Cpf] PRIMARY KEY CLUSTERED 
(
	[Cpf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioCompra] FOREIGN KEY([UsuarioCompra])
REFERENCES [dbo].[Usuario] ([Cpf])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_UsuarioCompra]
GO
ALTER TABLE [dbo].[CompraProduto]  WITH CHECK ADD  CONSTRAINT [FK_IdCompraProduto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[Produto] ([IdProduto])
GO
ALTER TABLE [dbo].[CompraProduto] CHECK CONSTRAINT [FK_IdCompraProduto]
GO
ALTER TABLE [dbo].[CompraProduto]  WITH CHECK ADD  CONSTRAINT [FK_IdCompraProduto2] FOREIGN KEY([IdCompra])
REFERENCES [dbo].[Compra] ([IdCompra])
GO
ALTER TABLE [dbo].[CompraProduto] CHECK CONSTRAINT [FK_IdCompraProduto2]
GO
ALTER TABLE [dbo].[Pagamento]  WITH CHECK ADD  CONSTRAINT [FK_Cpf] FOREIGN KEY([Cpf])
REFERENCES [dbo].[Usuario] ([Cpf])
GO
ALTER TABLE [dbo].[Pagamento] CHECK CONSTRAINT [FK_Cpf]
GO
/****** Object:  StoredProcedure [dbo].[CSSP_DelCompra]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--temporariamente inutilizada
CREATE PROCEDURE [dbo].[CSSP_DelCompra]
	@IdCompra INT

	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Deletar uma compra
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_DelCompra]

	*/

	BEGIN
	
		DELETE FROM [dbo].[Compra] WHERE
			IdCompra = @IdCompra
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_DelCompraProduto]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_DelCompraProduto]
	@IdCompra int,
	@IdProduto int

	AS

	/*
	Documentação
	Arquivo Fonte.....: CompraProduto.sql
	Objetivo..........: Excluir um item da compra
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_DelCompraProduto]

	*/

	BEGIN
		DELETE CompraProduto WHERE
			IdCompra = @IdCompra and IdProduto = @IdProduto		
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_DelPagamento]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_DelPagamento]
	@IdPagamento int

	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Deletar um pagamento
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_DelPagamento]

	*/

	BEGIN
	
		DELETE [dbo].[Pagamento] 
			WHERE IdPagamento = @IdPagamento

	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_DesProduto]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_DesProduto]
	@IdProduto int
	AS
	
	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Deletar Produtos 
	Autor.............: SMN - João Guilherme
 	Data..............: 01/01/2017
	Ex................: EXEC [dbo].[CSSP_DelProduto]

	*/

	BEGIN
	UPDATE [dbo].[Produto]
		SET Ativo = 'I'
		WHERE IdProduto = @IdProduto
		IF @@ERROR <> 0
					RETURN 1
		RETURN 0		
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_DesUsuario]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_DesUsuario]
	@Cpf varchar(14)
	AS

	/*
	Documenta��o
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Deletar cadatro de usuario
	Autor.............: SMN - Jo�o Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_DelUsuario]

	*/

	BEGIN
		UPDATE [dbo].[Usuario] 
			SET Ativo = 'I'
			WHERE Cpf = @Cpf
			IF @@ERROR <> 0
				RETURN 1

		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_InsCompra]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_InsCompra]
	@UsuarioCompra VARCHAR(14),
	@sequencial int = 0 output

	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Inserir uma compra
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_InsCompra] '43838601840'	
	*/					EXEC [dbo].[CSSP_LisCompra]

	BEGIN
		INSERT INTO [dbo].[Compra] (UsuarioCompra, DataCompra, ValorCompra)
			VALUES(@UsuarioCompra, GETDATE(), 0)	

		SET @sequencial = SCOPE_IDENTITY()
		
		if @@ERROR <> 0 
			RETURN -1

		RETURN 0	
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_InsCompraProduto]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_InsCompraProduto]
	@IdCompra int,
	@IdProduto int,	
	@QtdeProduto int

	AS
	/*
	Documentação
	Arquivo Fonte.....: CompraProduto.sql
	Objetivo..........: Inserir um produto e a quantidade dele numa venda.
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_InsCompraProduto] 45, 13, 1
						select * from Produto
	*/	
	BEGIN	

		INSERT INTO CompraProduto (IdCompra, IdProduto, QtdeProduto)
			VALUES (@IdCompra, @IdProduto, @QtdeProduto)

		DECLARE @PrecoProduto decimal(15,2)
		SET @PrecoProduto = (SELECT PrecoProduto FROM Produto WITH(NOLOCK) WHERE IdProduto = @IdProduto)

		DECLARE @Cpf varchar(11)
		SET @Cpf = (SELECT UsuarioCompra FROM COMPRA WITH(NOLOCK) WHERE IdCompra = @IdCompra)

		UPDATE [dbo].[Compra]
			SET ValorCompra += (@QtdeProduto * @PrecoProduto)					
			WHERE IdCompra = @IdCompra
					
		UPDATE [dbo].[Usuario]
			SET SaldoUsuario -= (@QtdeProduto * @PrecoProduto)
			WHERE Cpf = @Cpf
			
		UPDATE [dbo].[Produto]
			SET QtdeProduto -= @QtdeProduto
			WHERE IdProduto = @IdProduto

		if @@ERROR <> 0 
			RETURN 1

		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_InsPagamento]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_InsPagamento]	
	@Cpf varchar(14),  
	@ValorPagamento decimal (15,2)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Inserir um pagamento
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/0/2017
	Ex................: EXEC [dbo].[CSSP_InsPagamento] '12313546464',30
	*/
	
	BEGIN

		INSERT INTO [dbo].[Pagamento] (Cpf, DataPagamento, ValorPagamento)
			VALUES (@Cpf, GETDATE(), @ValorPagamento)			
		
		-- Somar o pagamento feito ao saldo do usuario em questão
		UPDATE [dbo].[Usuario] 
			SET SaldoUsuario += @ValorPagamento			
			WHERE Cpf = @Cpf
		
			IF @@ERROR <> 0 
				RETURN 1
		RETURN 0
		
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_InsProduto]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_InsProduto]
	@NomeProduto varchar(40),
	@PrecoProduto decimal(15,2),
	@QtdeProduto int,
	@Ativo varchar(1) = 'A',
	@Categoria varchar(50),
	@sequencial int = 0 output
	AS
			
	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Inserir Produtos
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_InsProduto] 'tortuguita', 1.00, 0, '1', 'chocolates'

	*/

	BEGIN
	
		INSERT INTO [dbo].[Produto] (NomeProduto,PrecoProduto,QtdeProduto,Ativo,Categoria)
			VALUES (@NomeProduto,@PrecoProduto,@QtdeProduto,@Ativo,@Categoria)

			SELECT @sequencial = SCOPE_IDENTITY()

				IF @@ERROR <> 0
					RETURN -1
		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_InsUsuario]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_InsUsuario]
	@NomeUsuario varchar(50),
	@SenhaUsuario varchar(12) = 'password',
	@SaldoUsuario decimal(18,2) = 0,
	@CpfUsuario varchar(14),
	@Ativo varchar(1) = 'A'
	AS

	/*
	Documenta��o
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Inserir Usuarios 
	Autor.............: SMN - Jo�o Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_InsUsuario]
	
	Editado Por.......: SMN - Rafael Morais
	Objetivo..........: Adicionar a o campo de cpf na proceure 
	Data..............: 07/09/2017
	
	*/
	
	BEGIN
		INSERT INTO [dbo].[Usuario](Cpf,NomeUsuario,SenhaUsuario,SaldoUsuario,Ativo)
			VALUES (@CpfUsuario,@NomeUsuario,@SenhaUsuario,@SaldoUsuario,@Ativo)		
			
				IF @@ERROR <> 0
					RETURN 1
		RETURN 0	
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisCompra]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisCompra]	
	@mes INT = 0
	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Listar todas as compras feitas 
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_LisCompra]
	
	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 14/09/2017

	*/
	BEGIN
		IF @mes = 0
		BEGIN 
			SELECT @mes = MONTH(GETDATE())
		END				
		BEGIN
			SELECT	c.IdCompra,
					c.UsuarioCompra ,
					u.NomeUsuario as 'NomeUsuario',
					c.DataCompra,
					c.ValorCompra
			 FROM [dbo].[Compra] c WITH(NOLOCK)
				INNER JOIN Usuario u 
					ON u.Cpf = c.UsuarioCompra
			WHERE MONTH(c.DataCompra) = @mes
			ORDER BY c.DataCompra DESC
		END		
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisCompraDia]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisCompraDia]
	@data date = null
	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Listar todas as compras feitas em uma data informada, se nao informar a data, retorna do dia atual
	Autor.............: SMN - Rafael Morais
 	Data..............: 26/09/2017
	Ex................: EXEC [dbo].[CSSP_LisCompraDia]

	*/

	BEGIN
		IF @data is NULL
		BEGIN 
			SELECT @data = GETDATE()		
		END	
		SELECT	c.IdCompra,
					c.UsuarioCompra ,
					u.NomeUsuario as 'NomeUsuario',
					c.DataCompra,
					c.ValorCompra 
			 FROM [dbo].[Compra] c WITH(NOLOCK)
				INNER JOIN Usuario u 
					ON u.Cpf = c.UsuarioCompra
		WHERE CAST(c.DataCompra AS DATE) = CAST(@data AS DATE)
		ORDER BY c.DataCompra DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisCompraNomeUsuario]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisCompraNomeUsuario]
	@Nome varchar(50)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Encontrar as compras que um usuário fez pelo seu nome
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[CSSP_LisCompraNomeUsuario]

	*/

	BEGIN
		SELECT	c.IdCompra,
				c.UsuarioCompra as 'NomeUsuario',
				u.NomeUsuario,
				c.DataCompra 
		 FROM [dbo].[Compra] c WITH(NOLOCK)
		 INNER JOIN Usuario u on u.Cpf = c.UsuarioCompra
		 WHERE u.NomeUsuario = '%' + @Nome + '%' 
	END


IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[CSSP_SelLastCompra]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[CSSP_SelLastCompra]
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisCompraProduto]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisCompraProduto]
	
	AS

	/*
	Documentação
	Arquivo Fonte.....: Lista.sql
	Objetivo..........: Listar produtos de uma compra específica
	Autor.............: SMN - Rafael Morais
 	Data..............: 01/01/2017
	Ex................: EXEC [dbo].[CSSP_LisCompraProduto]

	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 12/09/2017
	select * from compraproduto 
	select * from compra
	*/
	
	BEGIN
		SELECT	cp.IdCompra,
				cp.QtdeProduto,
				p.IdProduto,
				p.NomeProduto,
				p.PrecoProduto,
				p.Ativo
		 FROM CompraProduto cp WITH(NOLOCK)
		 INNER JOIN Produto p on p.IdProduto = cp.IdProduto
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisCompraProdutoIdVenda]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisCompraProdutoIdVenda]
	@IdCompra int

	AS

	/*
	Documentação
	Arquivo Fonte.....: Lista.sql
	Objetivo..........: Listar produtos de uma compra específica
	Autor.............: SMN - Rafael Morais
 	Data..............: 01/01/2017
	Ex................: EXEC [dbo].[CSSP_LisCompraProdutoIdVenda] 10

	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 12/09/2017
	*/

	BEGIN
		SELECT	cp.IdCompra,
				cp.QtdeProduto,
				p.IdProduto,
				p.NomeProduto,
				p.PrecoProduto,
				p.Ativo
			FROM CompraProduto cp WITH(NOLOCK)
				INNER JOIN Produto p
					ON p.IdProduto = cp.IdProduto
			WHERE cp.IdCompra = @IdCompra
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisCompraSemana]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisCompraSemana]
	@cpf VARCHAR(11) = NULL
	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Listar todas as compras da semana, ou as compra da semana de um usuario
	Autor.............: SMN - Rafael Morais
 	Data..............: 26/09/2017
	Ex................: EXEC [dbo].[CSSP_LisCompraSemana]

	*/

	BEGIN
		DECLARE @domingo AS DATETIME = GETDATE();
		WHILE ((SELECT DATENAME(weekday, @domingo)) <> 'sunday')
		BEGIN
			IF ((SELECT DATENAME(weekday, @domingo)) <> 'sunday')
			BEGIN				
				SELECT @domingo = DATEADD(DAY, -1, @domingo)
			END
		END
		IF @cpf IS NULL
		BEGIN
			SELECT	c.IdCompra,
					c.UsuarioCompra ,
					u.NomeUsuario as 'NomeUsuario',
					c.DataCompra,
					c.ValorCompra 
			 FROM [dbo].[Compra] c WITH(NOLOCK)
				INNER JOIN Usuario u 
					ON u.Cpf = c.UsuarioCompra
			WHERE c.DataCompra > @domingo
			ORDER BY c.DataCompra DESC
		END
		ELSE
		BEGIN
			SELECT	c.IdCompra,
					c.UsuarioCompra ,
					u.NomeUsuario as 'NomeUsuario',
					c.DataCompra,
					c.ValorCompra 
			 FROM [dbo].[Compra] c WITH(NOLOCK)
				INNER JOIN Usuario u 
					ON u.Cpf = c.UsuarioCompra
			WHERE c.DataCompra > @domingo and c.UsuarioCompra = @cpf
			ORDER BY c.DataCompra DESC
		END
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisCpfCompra]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisCpfCompra]
	@Cpf varchar(14)
	
	AS
	
	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Listar as compras feitas por um usuario
	Autor.............: SMN - Rafael Morais
 	Data..............: 07/07/2017
	Ex................: EXEC [dbo].[CSSP_LisCpfCompra] '43838601840'

	*/

	BEGIN
	
		SELECT	c.IdCompra,
				c.DataCompra,
				c.ValorCompra,
				c.UsuarioCompra,
				u.NomeUsuario as 'NomeUsuario'				
		 FROM [dbo].[Compra] c WITH(NOLOCK)
			INNER JOIN Usuario u on u.Cpf = c.UsuarioCompra
		 WHERE c.UsuarioCompra = @Cpf
		 ORDER BY c.DataCompra DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisCpfPagamento]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisCpfPagamento]
	@Cpf VARCHAR(14)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Listar os pagamentos de um usuario
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_LisCpfPagamento]

	*/

	BEGIN
	
		SELECT * FROM [dbo].[Pagamento] WITH(NOLOCK)
			WHERE Cpf = @Cpf

	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisPagamento]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisPagamento]	
	@cpf VARCHAR(11) = NULL,
	@mes INT = 0
	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Listar todos os pagamentos feitos no mes atual ou infomado, por todos usuarios ou pelo passado no cpf
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_LisPagamento] '43838601840'      LISTA OS DO CPF NO MES ATUAL
														'11111111111', 5	LISTA OS DO CPF NO MES INFORMADO
														VAZIO              LISTA NO MES ATUAL
														NULL, 5				LISTA TODOS NO MES INFORMADO - NAO ESQUECER DE PASSAR O NULL
	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select  e inserindo Inner JOin
	Data..............: 13/09/2017
	*/	
	BEGIN
		
		IF @mes = 0
		BEGIN 
			SELECT @mes = MONTH(GETDATE())
		END

		IF @CPF IS NULL
		BEGIN
			SELECT p.IdPagamento,
				p.Cpf,
				u.NomeUsuario,
				p.DataPagamento,
				p.ValorPagamento
			FROM [dbo].[Pagamento] p WITH(NOLOCK)
				INNER JOIN [dbo].[Usuario] u WITH(NOLOCK)
					ON p.Cpf = u.Cpf
			WHERE MONTH(p.DataPagamento) = @mes
			ORDER BY p.DataPagamento DESC
		END
		ELSE
		BEGIN
			SELECT p.IdPagamento,
				p.Cpf,
				u.NomeUsuario,
				p.DataPagamento,
				p.ValorPagamento
			FROM [dbo].[Pagamento] p WITH(NOLOCK)
				INNER JOIN [dbo].[Usuario] u WITH(NOLOCK)
					ON p.Cpf = u.Cpf
			WHERE (p.Cpf = @cpf) and (MONTH(p.DataPagamento) = @mes)
			ORDER BY p.DataPagamento DESC
		END
		
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisPagamentoSemana]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CSSP_LisPagamentoSemana]
	@cpf VARCHAR(11) = NULL
	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Listar os pagamentos da semana atual
	Autor.............: SMN - Rafael Morais
 	Data..............: 21/09/2017
	Ex................: EXEC [dbo].[CSSP_LisPagamentoSemana] 'cpf'		lista os pagamentos feitos na semana pelo cpf
															 vazio		lista todos os pagamentos feitos na semana por todos

	*/

	BEGIN	
		
		DECLARE @domingo AS DATETIME = GETDATE();
		WHILE ((SELECT DATENAME(weekday, @domingo)) <> 'sunday')
		BEGIN
			IF ((SELECT DATENAME(weekday, @domingo)) <> 'sunday')
			BEGIN				
				SELECT @domingo = DATEADD(DAY, -1, @domingo)
			END
		END
		
		IF @cpf IS NULL
		BEGIN
			SELECT p.IdPagamento,
					p.Cpf,
					u.NomeUsuario,
					p.DataPagamento,
					p.ValorPagamento
				FROM [dbo].[Pagamento] p WITH(NOLOCK)
					INNER JOIN [dbo].[Usuario] u WITH(NOLOCK)
						ON p.Cpf = u.Cpf
				WHERE p.DataPagamento > @domingo
				ORDER BY p.DataPagamento DESC
		END
		ELSE
		BEGIN 
			SELECT p.IdPagamento,
					p.Cpf,
					u.NomeUsuario,
					p.DataPagamento,
					p.ValorPagamento
				FROM [dbo].[Pagamento] p WITH(NOLOCK)
					INNER JOIN [dbo].[Usuario] u WITH(NOLOCK)
						ON p.Cpf = u.Cpf
				WHERE p.Cpf = @cpf and p.DataPagamento > @domingo
				ORDER BY p.DataPagamento DESC
		END
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisProdPorNome]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisProdPorNome]
	@NomeProduto varchar (40)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Realmente eu nao sei
	Autor.............: SMN - João Guilherme
 	Data..............: 18/09/2017
	Ex................: EXEC [dbo].[CSSP_LisProdPorNome]

	*/

	BEGIN
	
		SELECT * 
			FROM [dbo].[Produto] WITH(NOLOCK)
			WHERE NomeProduto LIKE '%' + @NomeProduto + '%' AND Ativo = 'A'
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisProduto]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisProduto]

	AS	
	/* 
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar todos os produtos
	Autor.............: SMN - Rafael Morais
 	Data..............: 07/07/2017
	Ex................: EXEC [dbo].[CSSP_LisProduto]
						select * from Produto
	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 12/09/2017
	*/

	BEGIN
	
		SELECT	IdProduto,
				NomeProduto,
				PrecoProduto,
				QtdeProduto,
				Ativo,
				Categoria
			 FROM Produto WITH(NOLOCK)
			 WHERE Ativo = 'A'
			 ORDER BY NomeProduto
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisProdutoAbaixoValor]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisProdutoAbaixoValor]
	@Valor decimal(15,2)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produt.sql
	Objetivo..........: Listar os produtos abaixo do valor que será passado âtravés de um parâmetro
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[CSSP_LisProdutoAbaixoValor]

	*/

	BEGIN
	SELECT * 
		FROM Produto
		WHERE PrecoProduto <= @Valor AND Ativo = 'A'
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisProdutoAcimaValor]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisProdutoAcimaValor]
	@valor decimal(15,2)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar os produtos que estão acima de um certo valor
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[CSSP_LisProdutoAcimaValor]

	*/

	BEGIN
	SELECT * 
		FROM Produto
		WHERE PrecoProduto >= @valor AND Ativo = 'A'
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisProdutoCategoria]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisProdutoCategoria]
	@Categoria varchar(50)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar os produtos de acordo com a sua categoria
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[CSSP_LisProdutoCategoria]

	*/

	BEGIN
		SELECT * 
			FROM Produto
			WHERE Categoria like '%' + @Categoria + '@%' AND Ativo = 'A'
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisProdutoInativo]    Script Date: 29/09/2017 08:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisProdutoInativo]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar todos os produtos que estão inativos
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[CSSP_LisProdutoInativo]

	*/

	BEGIN
		SELECT	IdProduto,
				NomeProduto,
				PrecoProduto,
				QtdeProduto,
				Ativo,
				Categoria
			 FROM Produto WITH(NOLOCK)
			 WHERE Ativo = 'I'
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisProdutoValorCres]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisProdutoValorCres]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar os produtos pela ordem de preço crescente	
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[CSSP_LisProdutoValor]

	*/

	BEGIN
		SELECT * 
			FROM Produto
			WHERE Ativo = 'A'
			ORDER BY PrecoProduto
			 
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisProdutoValorDesc]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisProdutoValorDesc]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar os produtos em ordem decrescente de valor
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[CSSP_LisProdutoValorDesc]

	*/

	BEGIN
	SELECT * 
		FROM Produto
		WHERE Ativo = 'A'
		ORDER BY PrecoProduto desc
END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_ListarPagamentoDia]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_ListarPagamentoDia]
	@data date = null
	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Listar todos os pagamentos feitos em uma data informada ou dia atual
	Autor.............: SMN - Rafael Morais
 	Data..............: 22/09/2017
	Ex................: EXEC [dbo].[CSSP_ListarPagamentoDia] '09/14/2017'	
	*/
	
	BEGIN
	
		IF @data is NULL
		BEGIN 
			SELECT @data = GETDATE()		
		END	
		
		SELECT p.IdPagamento,
			p.Cpf,
			u.NomeUsuario,
			p.DataPagamento,
			p.ValorPagamento
		FROM [dbo].[Pagamento] p WITH(NOLOCK)
			INNER JOIN [dbo].[Usuario] u WITH(NOLOCK)
				ON p.Cpf = u.Cpf
		WHERE cast(p.DataPagamento as date) = CAST(@data as date)
		ORDER BY p.DataPagamento DESC
		

	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_ListarUsuariosInativos]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_ListarUsuariosInativos]

	AS

	/*
	Documenta��o
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Listar todos os usuarios inativos
	Autor.............: SMN - Rafael Morais
 	Data..............: 19/09/2017
	Ex................: EXEC [dbo].[GCS_ListarUsuariosInativos]

	*/

	BEGIN
	
		SELECT	Cpf,
				SenhaUsuario,
				SaldoUsuario,
				NomeUsuario,
				Ativo
				FROM [dbo].[Usuario]
				WHERE Ativo = 'I'
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisUsuario]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
CREATE PROCEDURE [dbo].[CSSP_LisUsuario]

	AS

	/*
	Documenta��o
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Listar todos os usuarios ativos
	Autor.............: SMN - Rafael Morais
 	Data..............: 07/07/2017
	Ex................: EXEC [dbo].[CSSP_LisUsuario]

	Editado Por.......: SMN - Jo�o Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 12/09/2017
	*/

	BEGIN
		SELECT	Cpf,
				SenhaUsuario,
				SaldoUsuario,
				NomeUsuario,
				Ativo
				FROM [dbo].[Usuario]
				WHERE Ativo = 'A'
				ORDER BY NomeUsuario
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisUsuarioIgual]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisUsuarioIgual]
	@nome varchar(50),
	@cpf varchar(11)
	AS

	/*
	Documenta��o
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Verificar se j� existe um usu�rio com este mesmo CPF
	Autor.............: SMN - Lucas Fernando
 	Data..............: 18/09/2017
	Ex................: EXEC [dbo].[GCS_CSSP_LisUsuarioIgual]

	*/

	BEGIN
		SELECT TOP 1 1
			FROM Usuario
			WHERE Cpf = @cpf AND NomeUsuario <> @nome
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_LisUsuarioPorNome]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_LisUsuarioPorNome]
	@NomeUsuario varchar (40)
	AS
	/*
	Documenta��o
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Listar usuario de acordo com um trecho do nome
	Autor.............: SMN - Rafael Henrique
 	Data..............: 20/09/2017
	Ex................: EXEC [dbo].[CSSP_LisUsuarioPorNome]
	*/	
	BEGIN
		SELECT * 
			FROM [dbo].[Usuario] WITH(NOLOCK)
			WHERE NomeUsuario LIKE '%' + @NomeUsuario + '%' AND Ativo = 'A'
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_NAOSEIDEMAISNADA]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_NAOSEIDEMAISNADA]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Realmente eu nao sei
	Autor.............: SMN - João Guilherme
 	Data..............: 18/09/2017
	Ex................: EXEC [dbo].[CSSP_NAOSEIDEMAISNADA]

	*/

	BEGIN
	
		SELECT TOP 1 1
		 FROM [dbo].[Produto] WITH(NOLOCK)
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_SelCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_SelCompra]
	@IdCompra int
	
	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Selecionar uma compra
	Autor.............: SMN - Rafael Morais
 	Data..............: 07/07/2017
	Ex................: EXEC [dbo].[CSSP_SelCompra]

	*/

	BEGIN
		SELECT TOP 1 1 
		 FROM [dbo].[Compra] WITH(NOLOCK)
		 WHERE IdCompra = @IdCompra
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_SelDadosCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_SelDadosCompra]
	@IdCompra int	
	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Selecionar dados de uma compra específica
	Autor.............: SMN - Rafael Morais
 	Data..............: 28/09/2017
	Ex................: EXEC [dbo].[CSSP_SelDadosCompra] 10

	*/
	BEGIN	
		SELECT  c.IdCompra,
				c.UsuarioCompra,
				c.DataCompra,
				c.ValorCompra,
				u.NomeUsuario as 'NomeUsuario'
			FROM [dbo].[Compra] c WITH(NOLOCK)
				INNER JOIN [dbo].[Usuario] u 
					ON c.UsuarioCompra = u.Cpf
			WHERE IdCompra = @IdCompra
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_SelDadosProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_SelDadosProduto]
	@IdProduto int
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar dados de um produto por ID
	Autor.............: SMN - Rafael Morais
 	Data..............: 19/09/2017
	Ex................: EXEC [dbo].[GCS_SelDadosProduto]

	*/

	BEGIN
	
		SELECT IdProduto,
				NomeProduto,
				PrecoProduto,
				QtdeProduto,
				Ativo,
				Categoria
			FROM Produto WITH (NOLOCK)
			WHERE IdProduto = @IdProduto

	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_SelLastCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CSSP_SelLastCompra]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Retornar a última compra inserida
	Autor.............: SMN - Lucas Fernando
 	Data..............: 26/09/2017
	Ex................: EXEC [dbo].[GCS_SelLastCompra]

	*/

	BEGIN
		SELECT  IDENT_CURRENT('Produto') as 'Item' 
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_SelPagamento]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_SelPagamento]
	@IdPagamento int

	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Selecionar um pagamento
	Autor.............: SMN - Rafael Morais
 	Data..............: 07/07/2017
	Ex................: EXEC [dbo].[CSSP_SelPagamento]

	*/

	BEGIN
	
		SELECT * FROM [dbo].[Pagamento]	WITH(NOLOCK)
			WHERE IdPagamento = @IdPagamento

	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_SelProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_SelProduto]
	@NomeProduto VARCHAR(50)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Selecionar Produtos
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_SelProduto]

	*/

	BEGIN
		SELECT TOP 1 1
			FROM [dbo].[Produto] WITH(NOLOCK)
			WHERE NomeProduto = @NomeProduto
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_SelUltimoId]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_SelUltimoId]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Pegar Id ultimo produto inserido
	Autor.............: SMN - Lucas Fernando
 	Data..............: 25/09/2017
	Ex................: EXEC [dbo].[GCS_SelUltimoId]

	*/

	BEGIN
		SELECT MAX(IdProduto) as 'IdProduto'
			FROM Produto
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_SelUsuario]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_SelUsuario]
	@Cpf varchar(14)
	AS

	/*
	Documenta��o
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Selecionar Usuarios
	Autor.............: SMN - Jo�o Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_SelUsuario]

	*/

	BEGIN
		SELECT * FROM [dbo].[Usuario] WITH(NOLOCK)
			WHERE Cpf = @Cpf
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_SelUsuariosDivida]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_SelUsuariosDivida]

	AS

	/*
	Documenta��o
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Selecionar usuarios com saldo negativo
	Autor.............: SMN - Lucas Fernando
 	Data..............: 05/09/2017
	Ex................: EXEC [dbo].[CSSP_SelUsuariosDivida]

	*/

	BEGIN
		SELECT  Cpf,
				SenhaUsuario,
				SaldoUsuario,
				NomeUsuario,
				Ativo
			FROM [dbo].[Usuario]
			WHERE SaldoUsuario < 0 AND Ativo = 'A'
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_UpdCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_UpdCompra]
	@UsuarioCompra VARCHAR(14),
	@IdCompra INT,
	@DataCompra DATE
	

	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Editar uma compra
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_UpdCompra]

	*/

	BEGIN	
		UPDATE [dbo].[Compra] 
			SET UsuarioCompra = @UsuarioCompra,			
				DataCompra = @DataCompra
			WHERE IdCompra = @IdCompra			
			
	
			if @@ERROR <> 0 
				RETURN 1
		RETURN 0

	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_UpdCompraProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_UpdCompraProduto]
	@IdCompra int,
	@IdProduto int, 
	@QtdeProduto int

	AS

	/*
	Documentação
	Arquivo Fonte.....: ArquivoFonte.sql
	Objetivo..........: Objetivo
	Autor.............: SMN - Rafael Morais
 	Data..............: 01/01/2017
	Ex................: EXEC [dbo].[CSSP_UpdCompraProduto]

	*/

	BEGIN
		
		UPDATE [dbo].[CompraProduto] 
			SET IdProduto = @IdProduto,
				QtdeProduto = @QtdeProduto
 			
			WHERE IdCompra = @IdCompra

			if @@ERROR <> 0 
				RETURN 1
		RETURN 0

	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_UpdPagamento]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_UpdPagamento]
	@IdPagamento int,	
	@DataPagamento datetime,
	@ValorPagamento decimal(15,2)

	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Editar um pagamento
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_UpdPagamento]

	*/

	BEGIN
	
		UPDATE [dbo].[Pagamento] 
			SET	DataPagamento = @DataPagamento,
				ValorPagamento = @ValorPagamento		
				WHERE IdPagamento = @IdPagamento
			
			IF @@ERROR <> 0 
				RETURN 1
		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_UpdProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_UpdProduto]
	@IdProduto int,
	@NomeProduto varchar(40),
	@PrecoProduto decimal(15,2),
	@QtdeProduto int,
	@Ativo varchar(1),
	@Categoria varchar(50)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Editar Poodutos
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_UpdProduto]

	*/

	BEGIN
		UPDATE [dbo].[Produto]
			SET	NomeProduto = @NomeProduto,
				PrecoProduto = @PrecoProduto,
				QtdeProduto = @QtdeProduto,
				Ativo = @Ativo,
				Categoria = @Categoria
			WHERE IdProduto = @IdProduto

		IF @@ERROR <> 0
					RETURN 1
		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_UpdUsuario]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_UpdUsuario]
	@Cpf varchar(14),
	@NomeUsuario varchar(50),
	@SenhaUsuario varchar(12),
	@SaldoUsuario decimal,
	@Ativo varchar(1)
	AS

	/*
	Documenta��o
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Editar informa�oes do usuario
	Autor.............: SMN - Jo�o Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[CSSP_UpdUsuario]

	*/
	BEGIN
	
		UPDATE [dbo].[Usuario]
			SET NomeUsuario = @NomeUsuario,
				SenhaUsuario = @SenhaUsuario,
				SaldoUsuario = @SaldoUsuario,
				Ativo = @Ativo
				WHERE Cpf = @Cpf

				IF @@ERROR <> 0 
					RETURN 1

			RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_VerificaLoginSenha]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_VerificaLoginSenha]
	@Cpf varchar(11),
	@SenhaUsuario varchar(12)

	AS
	/*
	Documenta��o
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Verificar se o login bate
	Autor.............: SMN - Lucas Fernando
 	Data..............: 20/09/2017
	Ex................: EXEC [dbo].[GCS_VerificaLoginSenha]
	*/

	BEGIN									
		SELECT TOP 1 1 
			FROM Usuario
			WHERE Cpf = @Cpf AND SenhaUsuario = @SenhaUsuario
	END
GO
/****** Object:  StoredProcedure [dbo].[CSSP_VerificaSaldoLoja]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CSSP_VerificaSaldoLoja]

	AS

	/*
	Documentação
	Arquivo Fonte.....: ArquivoFonte.sql
	Objetivo..........: Objetivo
	Autor.............: SMN - Lucas Fernando
 	Data..............: 01/01/2017
	Ex................: EXEC [dbo].[GCS_NomeProcedure]

	*/

	BEGIN
		SELECT SUM(SaldoUsuario) as 'saldo'
			FROM Usuario
			WHERE Ativo = 'A'
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_CSSP_LisUsuarioIgual]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_CSSP_LisUsuarioIgual]
	@cpf varchar(14)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Verificar se já existe um usuário com este mesmo CPF
	Autor.............: SMN - Lucas Fernando
 	Data..............: 18/09/2017
	Ex................: EXEC [dbo].[GCS_CSSP_LisUsuarioIgual]

	*/

	BEGIN
		SELECT TOP 1 1
			FROM Usuario
			WHERE CPF = @cpf
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_DelCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--temporariamente inutilizada
CREATE PROCEDURE [dbo].[GCS_DelCompra]
	@IdCompra INT

	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Deletar uma compra
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_DelCompra]

	*/

	BEGIN
	
		DELETE FROM [dbo].[Compra] WHERE
			IdCompra = @IdCompra
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_DelCompraProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_DelCompraProduto]
	@IdCompra int,
	@IdProduto int

	AS

	/*
	Documentação
	Arquivo Fonte.....: CompraProduto.sql
	Objetivo..........: Excluir um item da compra
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_DelCompraProduto]

	*/

	BEGIN
		DELETE CompraProduto WHERE
			IdCompra = @IdCompra and IdProduto = @IdProduto		
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_DelPagamento]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_DelPagamento]
	@IdPagamento int

	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Deletar um pagamento
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_DelPagamento]

	*/

	BEGIN
	
		DELETE [dbo].[Pagamento] 
			WHERE IdPagamento = @IdPagamento

	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_DelProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_DelProduto]
	@IdProduto int
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Deletar Produtos 
	Autor.............: SMN - João Guilherme
 	Data..............: 01/01/2017
	Ex................: EXEC [dbo].[GKSSP_DelProduto]

	*/

	BEGIN
	DELETE [dbo].[Produto]
		WHERE IdProduto = @IdProduto
		IF @@ERROR <> 0
					RETURN 1
		RETURN 0		
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_DelUsuario]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_DelUsuario]
	@Cpf varchar(14)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Deletar cadatro de usuario
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_DelUsuario]

	*/

	BEGIN
		DELETE [dbo].[Usuario] 
			WHERE Cpf = @Cpf
			IF @@ERROR <> 0
				RETURN 1

		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_DesUsuario]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_DesUsuario]
	@Cpf varchar(14)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Deletar cadatro de usuario
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_DelUsuario]

	*/

	BEGIN
		UPDATE [dbo].[Usuario] 
			SET Ativo = 'N'
			WHERE Cpf = @Cpf
			IF @@ERROR <> 0
				RETURN 1

		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_InsCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_InsCompra]
	@UsuarioCompra VARCHAR(14),
	@DataCompra DATE

	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Inserir uma compra
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_InsCompra] 

	*/

	BEGIN
		INSERT INTO [dbo].[Compra] (UsuarioCompra, DataCompra)
			VALUES(@UsuarioCompra, @DataCompra)	
			
			if @@ERROR <> 0 
				RETURN 1
		RETURN 0	
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_InsCompraProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_InsCompraProduto]
	@IdProduto int,
	@IdCompra int,
	@QtdeProduto int

	AS

	/*
	Documentação
	Arquivo Fonte.....: CompraProduto.sql
	Objetivo..........: Inserir um produto e a quantidade dele numa venda.
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_InsCompraProduto]

	*/

	BEGIN	
		INSERT INTO CompraProduto (IdProduto, IdCompra, QtdeProduto)
			VALUES (@IdProduto, @IdCompra, @QtdeProduto)
			
			if @@ERROR <> 0 
				RETURN 1
		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_InsPagamento]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_InsPagamento]	
	@Cpf varchar(14),
	@DataPagamento datetime,
	@ValorPagamento decimal

	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Inserir um pagamento
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/0/2017
	Ex................: EXEC [dbo].[GCS_InsPagamento]

	*/

	BEGIN
		INSERT INTO [dbo].[Pagamento] (Cpf, DataPagamento, ValorPagamento)
			VALUES (@Cpf, @DataPagamento, @ValorPagamento)			
		
		-- Somar o pagamento feito ao saldo do usuario em questão
		UPDATE [dbo].[Usuario] 
			SET SaldoUsuario += @ValorPagamento			
			WHERE Cpf = @Cpf
		
			IF @@ERROR <> 0 
				RETURN 1
		RETURN 0
		
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_InsProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_InsProduto]
	@NomeProduto varchar(40),
	@PrecoProduto decimal,
	@QtdeProduto int,
	@Ativo varchar(1),
	@Categoria varchar(50)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Inserir Produtos
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_InsProduto]

	*/

	BEGIN
	
		INSERT INTO [dbo].[Produto] (NomeProduto,PrecoProduto,QtdeProduto,Ativo,Categoria)
			VALUES (@NomeProduto,@PrecoProduto,@QtdeProduto,@Ativo,@Categoria)

				IF @@ERROR <> 0
					RETURN 1
		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_InsUsuario]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_InsUsuario]
	@NomeUsuario varchar(50),
	@SenhaUsuario varchar(12) = 'password',
	@SaldoUsuario decimal(18,2) = 0,
	@CpfUsuario varchar(14),
	@Ativo varchar(1) = 'A'
	AS

	/*
	Documentação
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Inserir Usuarios 
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: 
	
	BEGIN TRANSACTION
	EXEC [dbo].[GCS_InsUsuario]
		@NomeUsuario = 'Cu',
		@SaldoUsuario = 10,
		@CpfUsuario = '123.123.123-12'
	ROLLBACK TRANSACTION

	Editado Por.......: SMN - Rafael Morais
	Objetivo..........: Adicionar a o campo de cpf na proceure 
	Data..............: 07/09/2017
	
	*/
	
	BEGIN
		INSERT INTO [dbo].[Usuario](Cpf,NomeUsuario,SenhaUsuario,SaldoUsuario,Ativo)
			VALUES (@CpfUsuario,@NomeUsuario,@SenhaUsuario,@SaldoUsuario,@Ativo)		
			
				IF @@ERROR <> 0
					RETURN 1
		RETURN 0	
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisCompra]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Listar todas as compras feitas 
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_LisCompra]

	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 14/09/2017

	*/

	BEGIN
		SELECT	c.IdCompra,
				c.UsuarioCompra ,
				u.NomeUsuario as 'nomeUsuario',
				c.DataCompra 
		 FROM [dbo].[Compra] c WITH(NOLOCK)
		 INNER JOIN Usuario u on u.Cpf = c.UsuarioCompra
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisCompraNomeUsuario]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisCompraNomeUsuario]
	@Nome varchar(50)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Encontrar as compras que um usuário fez pelo seu nome
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[GCS_LisCompraNomeUsuario]

	*/

	BEGIN
		SELECT	c.IdCompra,
				c.UsuarioCompra as 'nomeUsuario',
				u.NomeUsuario,
				c.DataCompra 
		 FROM [dbo].[Compra] c WITH(NOLOCK)
		 INNER JOIN Usuario u on u.Cpf = c.UsuarioCompra
		 WHERE u.NomeUsuario = '%' + @Nome + '%' 
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisCompraProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisCompraProduto]
	
	AS

	/*
	Documentação
	Arquivo Fonte.....: Lista.sql
	Objetivo..........: Listar produtos de uma compra específica
	Autor.............: SMN - Rafael Morais
 	Data..............: 01/01/2017
	Ex................: EXEC [dbo].[GCS_LisCompraProduto]

	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 12/09/2017
	*/

	BEGIN
		SELECT	cp.IdCompra,
				cp.QtdeProduto,
				p.IdProduto,
				p.NomeProduto,
				p.PrecoProduto,
				p.Ativo
		 FROM CompraProduto cp WITH(NOLOCK)
		 INNER JOIN Produto p on p.IdProduto = cp.IdProduto
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisCompraProdutoIdVenda]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisCompraProdutoIdVenda]
	@IdCompra int

	AS

	/*
	Documentação
	Arquivo Fonte.....: Lista.sql
	Objetivo..........: Listar produtos de uma compra específica
	Autor.............: SMN - Rafael Morais
 	Data..............: 01/01/2017
	Ex................: EXEC [dbo].[GCS_LisCompraProduto]

	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 12/09/2017
	*/

	BEGIN
		SELECT	cp.IdCompra,
				cp.QtdeProduto,
				p.IdProduto,
				p.NomeProduto,
				p.PrecoProduto,
				p.Ativo
		 FROM CompraProduto cp WITH(NOLOCK)
		 INNER JOIN Produto p on p.IdProduto = cp.IdProduto
		 WHERE cp.IdCompra = @IdCompra
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisCpfCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisCpfCompra]
	@Cpf varchar(14)
	
	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Listar as compras feitas por um usuario
	Autor.............: SMN - Rafael Morais
 	Data..............: 07/07/2017
	Ex................: EXEC [dbo].[GCS_LisCpfCompra]

	*/

	BEGIN
	
		SELECT	c.IdCompra,
				c.UsuarioCompra as 'nomeUsuario',
				u.NomeUsuario,
				c.DataCompra 
		 FROM [dbo].[Compra] c WITH(NOLOCK)
		 INNER JOIN Usuario u on u.Cpf = c.UsuarioCompra
		 WHERE c.UsuarioCompra = @Cpf
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisCpfPagamento]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisCpfPagamento]
	@Cpf VARCHAR(14)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Listar os pagamentos de um usuario
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_LisCpfPagamento]

	*/

	BEGIN
	
		SELECT * FROM [dbo].[Pagamento] WITH(NOLOCK)
			WHERE Cpf = @Cpf

	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisPagamento]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisPagamento]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Listar todos os pagamentos feitos por todos usuarios
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_LisPagamento]

	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 13/09/2017
	*/

	BEGIN
	
		SELECT IdPagamento,
				Cpf,
				DataPagamento,
				ValorPagamento
				FROM [dbo].[Pagamento] WITH(NOLOCK)
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisProduto]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar todos os produtos
	Autor.............: SMN - Rafael Morais
 	Data..............: 07/07/2017
	Ex................: EXEC [dbo].[GCS_LisProduto]

	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 12/09/2017
	*/

	BEGIN
	
		SELECT IdProduto,
				NomeProduto,
				PrecoProduto,
				QtdeProduto,
				Ativo,
				Categoria
			 FROM Produto WITH(NOLOCK)
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisProdutoAbaixoValor]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisProdutoAbaixoValor]
	@Valor decimal(18,2)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produt.sql
	Objetivo..........: Listar os produtos abaixo do valor que será passado âtravés de um parâmetro
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[GCS_LisProdutoAbaixoValor]

	*/

	BEGIN
	SELECT * 
		FROM Produto
		WHERE PrecoProduto <= @Valor	
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisProdutoAcimaValor]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisProdutoAcimaValor]
	@valor decimal(18,2)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar os produtos que estão acima de um certo valor
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[GCS_LisProdutoAcimaValor]

	*/

	BEGIN
	SELECT * 
		FROM Produto
		WHERE PrecoProduto >= @valor
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisProdutoCategoria]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisProdutoCategoria]
	@Categoria varchar(50)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar os produtos de acordo com a sua categoria
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[GCS_LisProdutoCategoria]

	*/

	BEGIN
		SELECT * 
			FROM Produto
			WHERE Categoria like '%' + @Categoria + '@%'
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisProdutoInativo]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisProdutoInativo]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar todos os produtos que estão inativos
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[GCS_LisProduto]

	*/

	BEGIN
		SELECT IdProduto,
				NomeProduto,
				PrecoProduto,
				QtdeProduto,
				Ativo,
				Categoria
			 FROM Produto WITH(NOLOCK)
			 WHERE Ativo = 'N'
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisProdutoValorCres]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisProdutoValorCres]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar os produtos pela ordem de preço crescente	
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[GCS_LisProdutoValor]

	*/

	BEGIN
		SELECT * 
			FROM Produto
			ORDER BY PrecoProduto
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisProdutoValorDesc]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_LisProdutoValorDesc]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Listar os produtos em ordem decrescente de valor
	Autor.............: SMN - Lucas Fernando
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[GCS_LisProdutoValorDesc]

	*/

	BEGIN
	SELECT * 
		FROM Produto
		ORDER BY PrecoProduto desc
END
GO
/****** Object:  StoredProcedure [dbo].[GCS_LisUsuario]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
CREATE PROCEDURE [dbo].[GCS_LisUsuario]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Listar todos os usuario
	Autor.............: SMN - Rafael Morais
 	Data..............: 07/07/2017
	Ex................: EXEC [dbo].[GCS_LisUsuario]

	Editado Por.......: SMN - João Guilherme
	Objetivo..........: Alterando o select 
	Data..............: 12/09/2017
	*/

	BEGIN
		SELECT	Cpf,
				SenhaUsuario,
				SaldoUsuario,
				NomeUsuario,
				Ativo
				 FROM [dbo].[Usuario]
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_SelCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_SelCompra]
	@IdCompra int
	
	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Selecionar uma compra
	Autor.............: SMN - Rafael Morais
 	Data..............: 07/07/2017
	Ex................: EXEC [dbo].[GCS_SelCompra]

	*/

	BEGIN
		SELECT TOP 1 1 
		 FROM [dbo].[Compra] WITH(NOLOCK)
		 WHERE IdCompra = @IdCompra
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_SelLastCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_SelLastCompra]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Retornar a última compra inserida
	Autor.............: SMN - Lucas Fernando
 	Data..............: 26/09/2017
	Ex................: EXEC [dbo].[GCS_SelLastCompra]

	*/

	BEGIN
		SELECT SCOPE_IDENTITY()  
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_SelPagamento]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_SelPagamento]
	@IdPagamento int

	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Selecionar um pagamento
	Autor.............: SMN - Rafael Morais
 	Data..............: 07/07/2017
	Ex................: EXEC [dbo].[GCS_SelPagamento]

	*/

	BEGIN
	
		SELECT * FROM [dbo].[Pagamento]	WITH(NOLOCK)
			WHERE IdPagamento = @IdPagamento

	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_SelProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_SelProduto]
	@NomeProduto VARCHAR(50)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Selecionar Produtos
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_SelProduto]

	*/

	BEGIN
		SELECT TOP 1 1
		 FROM [dbo].[Produto] WITH(NOLOCK)
			WHERE NomeProduto like '%' + @NomeProduto + '%'
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_SelUsuario]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_SelUsuario]
	@Cpf varchar(14)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Selecionar Usuarios
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_SelUsuario]

	*/

	BEGIN
		SELECT * FROM [dbo].[Usuario] WITH(NOLOCK)
			WHERE Cpf = @Cpf
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_SelUsuarioSaldo]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_SelUsuarioSaldo]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Selecionar usuarios com saldo negativo
	Autor.............: SMN - João Guilherme
 	Data..............: 14/09/2017
	Ex................: EXEC [dbo].[GCS_SelUsuarioSaldo]

	*/

	BEGIN
		SELECT	Cpf,
				NomeUsuario,
				SaldoUsuario,
				Ativo	
				FROM [dbo].[Usuario]
		WHERE SaldoUsuario < 0
		
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_SelUsuariosDivida]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_SelUsuariosDivida]

	AS

	/*
	Documentação
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Selecionar usuarios com saldo negativo
	Autor.............: SMN - Lucas Fernando
 	Data..............: 05/09/2017
	Ex................: EXEC [dbo].[GCS_SelUsuariosDivida]

	*/

	BEGIN
		SELECT  Cpf,
				SenhaUsuario,
				SaldoUsuario,
				NomeUsuario,
				Ativo
			FROM [dbo].[Usuario]
			WHERE SaldoUsuario < 0
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_UpdCompra]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_UpdCompra]
	@UsuarioCompra VARCHAR(14),
	@IdCompra INT,
	@DataCompra DATE

	AS

	/*
	Documentação
	Arquivo Fonte.....: Compra.sql
	Objetivo..........: Editar uma compra
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_UpdCompra]

	*/

	BEGIN	
		UPDATE [dbo].[Compra] SET 
			UsuarioCompra = @UsuarioCompra,			
			DataCompra = @DataCompra
			WHERE
				IdCompra = @IdCompra
			
			if @@ERROR <> 0 
				RETURN 1
		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_UpdCompraProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_UpdCompraProduto]
	@IdCompra int,
	@IdProduto int, 
	@QtdeProduto int

	AS

	/*
	Documentação
	Arquivo Fonte.....: ArquivoFonte.sql
	Objetivo..........: Objetivo
	Autor.............: SMN - Rafael Morais
 	Data..............: 01/01/2017
	Ex................: EXEC [dbo].[GCS_UpdCompraProduto]

	*/

	BEGIN
		
		UPDATE [dbo].[CompraProduto] 
			SET IdProduto = @IdProduto,
				QtdeProduto = @QtdeProduto
 			
			WHERE IdCompra = @IdCompra

			if @@ERROR <> 0 
				RETURN 1
		RETURN 0

	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_UpdPagamento]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_UpdPagamento]
	@IdPagamento int,	
	@DataPagamento datetime,
	@ValorPagamento decimal

	AS

	/*
	Documentação
	Arquivo Fonte.....: Pagamento.sql
	Objetivo..........: Editar um pagamento
	Autor.............: SMN - Rafael Morais
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_UpdPagamento]

	*/

	BEGIN
	
		UPDATE [dbo].[Pagamento] 
			SET	DataPagamento = @DataPagamento,
				ValorPagamento = @ValorPagamento		
				WHERE IdPagamento = @IdPagamento
			
			IF @@ERROR <> 0 
				RETURN 1
		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_UpdProduto]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_UpdProduto]
	@IdProduto int,
	@NomeProduto varchar(40),
	@PrecoProduto decimal,
	@QtdeProduto int,
	@Ativo varchar(1),
	@Categoria varchar(50)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Produto.sql
	Objetivo..........: Editar Poodutos
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_UpdProduto]

	*/

	BEGIN
		UPDATE [dbo].[Produto]
		SET	NomeProduto = @NomeProduto,
			PrecoProduto = @PrecoProduto,
			QtdeProduto = @QtdeProduto,
			Ativo = @Ativo,
			Categoria = @Categoria
		WHERE IdProduto = @IdProduto

		IF @@ERROR <> 0
					RETURN 1
		RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_UpdUsuario]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_UpdUsuario]
	@Cpf varchar(14),
	@NomeUsuario varchar(50),
	@SenhaUsuario varchar(12),
	@SaldoUsuario decimal,
	@Ativo varchar(1)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Editar informaçoes do usuario
	Autor.............: SMN - João Guilherme
 	Data..............: 06/09/2017
	Ex................: EXEC [dbo].[GCS_UpdUsuario]

	*/

	BEGIN
	
		UPDATE [dbo].[Usuario]
			SET NomeUsuario = @NomeUsuario,
				SenhaUsuario = @SenhaUsuario,
				SaldoUsuario = @SaldoUsuario,
				Ativo = @Ativo
				WHERE Cpf = @Cpf

				IF @@ERROR <> 0 
					RETURN 1

			RETURN 0
	END
GO
/****** Object:  StoredProcedure [dbo].[GCS_ValidaCpf]    Script Date: 29/09/2017 08:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GCS_ValidaCpf]
		@Cpf varchar(11)
	AS

	/*
	Documentação
	Arquivo Fonte.....: Usuario.sql
	Objetivo..........: Validar se cpf é valido
	Autor.............: SMN - João Guilherme
 	Data..............: 22/09/2017
	Ex................: EXEC [dbo].[GCS_ValidaCpf]

	*/

	BEGIN
		SELECT TOP 1 1		
			FROM Usuario	
			WHERE Cpf = @Cpf
	END
GO
USE [master]
GO
ALTER DATABASE [CandyShop] SET  READ_WRITE 
GO
