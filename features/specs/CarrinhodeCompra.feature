#language:pt

@regressao  @carrinhodecompra
Funcionalidade: Carrinho de Compra  

@login @limpacarrinho @123
Cenario: Validar a Adição de Produto no carrinho
Dado que eu tenha escolhido um produto
Quando eu e clicar no botao Adicionar ao Carrinho
Entao um popup deverá ser apresentado com a msg de produto adicionado

@login @limpacarrinho
Cenario: Validar Continue Comprando após adicionar um produto.
Dado que eu tenha clicado no botao Adicionar ao Carrinho
Quando eu clicar no botão Continuar Comprando no popup
Entao o popup se fechará e poderei continuar navendo pela site

@login @limpacarrinho 
Cenario: Validar adição de produto em  carrinho já com Produtos
Dado que eu já tenha adiciona um Produto ao carrinho de Compras
Quando eu escolher outro produto e clicar no botão Adicionar ao carrinho
Entao um popup deverá ser apresentado com a msg do outro produto adicionado

@login @limpacarrinho
Cenario: Validar Ver meu Carrinho pelo Popup
Dado que eu tenha clicado em adicionar ao Carrinho 
Quando eu clicar no botão Ver Meu Carrinho no popup
Entao a pagina de Carrinho será apresentada com todos os produtos adicionados.

@login @limpacarrinho
Cenario: Validar Ver meu Carrinho clicando no botao carrrinho na pagina inicial
Dado que eu tenha clicado em adicionar ao Carrinho
Quando eu clicar no Botão Carrinho no canto superior direito da Tela
Entao a pagina de Carrinho será apresentada com todos os produtos adicionados.

@loginaddcarrinho @proposta
Cenario: Validar Salvar como Proposta
Dado que eu esteja na tela de carrinho e clique Salvar como Proposta
Quando eu preencher os campos e clicar em salvar
Entao a proposta será apresentada com algumas opçoes de envio por e-mail, clonar, transformar em carrinho, Cancelar e Editar

@loginaddcarrinho @limpacarrinho
Cenario: Validar Finalizar Compra
Dado que eu esteja na tela de carrinho 
Quando eu clicar em Finalizar a Compra 
Entao um popup deverá ser apresentado com as opções de Uso o Consumo ou Faturar para meu Cliente

@loginaddcarrinho  @limpacarrinho
Cenario: Validar a finalização da compra (Uso o Consumo)
Dado que eu esteja na tela de carrinho 
Quando eu finalizar a compra e clicar em Uso o Consumo
Entao a pagina para pagamento deverá ser apresentada

@loginaddcarrinho  @limpacarrinho
Cenario: Validar a finalização da compra - Faturar  para meu Cliente cliente já cadastrado
Dado que eu esteja na tela de carrinho 
Quando eu finalizar a compra e inserir o CNPJ do cliente cadastrado e clique em Faturar para meu Cliente
Entao a pagina para pagamento deverá ser apresentada

@loginaddcarrinho  @limpacarrinho 
Cenario: Validar a finalização da compra - Faturar  para meu Cliente Cliente não cadastrado
Dado que eu esteja na tela de carrinho 
Quando eu finalizar a compra e inserir o CNPJ do cliente não cadastrado e clique em Faturar para meu Cliente
Entao aparerá um formulario para cadastro do CNPJ do cliente digitado


#Cenario: Validar a finalização de compra - Comercialização
