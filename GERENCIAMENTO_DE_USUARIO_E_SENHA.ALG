Algoritmo "gerenciamento_de_usuario_e_senha"

Var
    usuariocad, senhacad, usuariocrip, senhacrip: caractere
    usuariolog, senhalog, usuario_criptografado, senha_criptografada: caractere
    usuariodescrip, senhadescrip: caractere
    c: caractere
    x, i, tamanho_usuario, tamanho_senha, deslocamento: inteiro
    login_sucesso: logico
Inicio
    deslocamento <- 5

    Escreva("Informe o nome de usuário para cadastro: ")
    Leia(usuariocad)
    Escreva("Informe a senha para cadastro: ")
    Leia(senhacad)

    usuariocrip <- ""
    senhacrip <- ""

    tamanho_usuario <- COMPR(usuariocad)
    tamanho_senha <- COMPR(senhacad)

    para x de 1 ate tamanho_usuario faca
        c <- COPIA(usuariocad, x, 1)
        i <- ASC(c)

        se ((i >= 65) e (i <= 90)) entao
            i <- 65 + (i - 65 + deslocamento) % 26
        fimse

        se ((i >= 97) e (i <= 122)) entao
            i <- 97 + (i - 97 + deslocamento) % 26

        se ((i >= 48) e (i <= 57)) entao
            i <- 48 + (i - 48 + deslocamento) % 10
        fimse

        c <- CARAC(i)
        usuariocrip <- usuariocrip + c
    fimpara

    para x de 1 ate tamanho_senha faca
        c <- COPIA(senhacad, x, 1)
        i <- ASC(c)


        se ((i >= 65) e (i <= 90)) entao
            i <- 65 + (i - 65 + deslocamento) % 26

        se ((i >= 97) e (i <= 122)) entao
            i <- 97 + (i - 97 + deslocamento) % 26

        se ((i >= 48) e (i <= 57)) entao
            i <- 48 + (i - 48 + deslocamento) % 10
        fimse

        c <- CARAC(i)
        senhacrip <- senhacrip + c
    fimpara

    Escreval("Usuário e senha cadastrados com sucesso!")

    Escreva("Informe o nome de usuário para login: ")
    Leia(usuariolog)
    Escreva("Informe a senha para login: ")
    Leia(senhalog)

    usuario_criptografado <- ""
    senha_criptografada <- ""

    tamanho_usuario <- COMPR(usuariolog)
    tamanho_senha <- COMPR(senhalog)

    para x de 1 ate tamanho_usuario faca
        c <- COPIA(usuariolog, x, 1)
        i <- ASC(c)

        se ((i >= 65) e (i <= 90)) entao
            i <- 65 + (i - 65 + deslocamento) % 26
        fimse

        se ((i >= 97) e (i <= 122)) entao
            i <- 97 + (i - 97 + deslocamento) % 26
        fimse

        se ((i >= 48) e (i <= 57)) entao
            i <- 48 + (i - 48 + deslocamento) % 10
        fimse

        c <- CARAC(i)
        usuario_criptografado <- usuario_criptografado + c
    fimpara

    para x de 1 ate tamanho_senha faca
        c <- COPIA(senhalog, x, 1)
        i <- ASC(c)

        se ((i >= 65) e (i <= 90)) entao
            i <- 65 + (i - 65 + deslocamento) % 26
        fimse

        se ((i >= 97) e (i <= 122)) entao
            i <- 97 + (i - 97 + deslocamento) % 26
        fimse


        se ((i >= 48) e (i <= 57)) entao
            i <- 48 + (i - 48 + deslocamento) % 10
        fimse

        c <- CARAC(i)
        senha_criptografada <- senha_criptografada + c
    fimpara

    login_sucesso <- ((usuario_criptografado = usuariocrip) e (senha_criptografada = senhacrip))

    se (login_sucesso) entao
        Escreval("Login bem-sucedido!")
    senao
        Escreval("Erro: Usuário ou senha incorretos.")
    fimse
Fimalgoritmo
