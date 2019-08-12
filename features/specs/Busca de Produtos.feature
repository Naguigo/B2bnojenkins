#language:pt

@regressao @busca
Funcionalidade: Campo de busca

@login
Cenario: Validar a busca de Produto.
    Dado que eu tenha me logado
    Quando eu clicar no campo busca e Digitar um produto
    Entao o produto deve ser trazido a pagina pela busca


Cenario: Validar a busca de outro Produto após a primeira busca.
    Dado que eu tenha feito uma busca de produto   
    Quando eu clicar no campo busca  e clicar na lupa
    Entao o novo produto pesquisado deve ser trazido a pagina
