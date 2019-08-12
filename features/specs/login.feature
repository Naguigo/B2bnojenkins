#language:pt

@regressao
Funcionalidade: Login

@logout  @12
Cenário: Usuario autorizado
    Dado que eu acesse a pagina principal
    Quando eu faço login com "nathan.gomes@snd.com.br" e "072019"
    #Quando eu faço login com "nathan.gomes@snd.com.br" e "123456"
    Então devo ser autenticado com Sucesso


Cenario: Login com E-mail inválido
    Dado que eu acesse a pagina principal
    Quando eu faço login com "nathan123gomes@snd.com.br" e "123456"
    Entao uma msg de erro será apresentada


Cenario: Login com E-mail inválido
    Dado que eu acesse a pagina principal
    Quando eu faço login com "nathan.gomes@snd.com.br" e "132455"
    Entao uma msg de erro será apresentada    

#@login @logout
#Cenario: Alteração de Senha
 #   Dado que eu tenha feito login e esteja na tela de alteração de senha
   # Quando eu preencher os campos de senha antiga e senha nova e clicar em Alterar Senha 
  #  Entao a alteração da senha será feito com sucesso


Cenario: Recuperação de Senha
    Dado que eu tenha clicado em Esqueceu a Senha ? Na tela de Login
    Quando eu preencher com o e-mail e clicar em Recuperar
    Entao um e-mail deverá ser enviado com orientações para Recuperação da Senha