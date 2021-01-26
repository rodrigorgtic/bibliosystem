CREATE PROCEDURE sp_usuario_pesquisar
@filtro VARCHAR(10), -- nome ou cpf
@valor VARCHAR(200),
@perfil VARCHAR(200)
AS
BEGIN
	IF(@filtro = 'cpf')
		SELECT cpf, nome, email FROM usuarios WHERE perfil = @perfil AND cpf = @valor
	ELSE
		SELECT cpf, nome, email FROM usuarios WHERE perfil = @perfil AND nome LIKE '%'+ @valor +'%'
END