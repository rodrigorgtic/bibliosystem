USE [bibliosystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_cadastrar]    Script Date: 22/01/2021 11:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_usuario_cadastrar] 
@cpf INT,
@nome VARCHAR(200),
@email VARCHAR(200),
@senha VARCHAR(50),
@perfil VARCHAR(20)
AS
BEGIN
	INSERT INTO usuarios
	(cpf, nome, email, senha, perfil)
	VALUES
	(@cpf, @nome, @email, @senha, @perfil)
	
	SELECT @cpf as retorno
END

