#language:pt

@regressao   @pagamento
Funcionalidade: Pagamento  

@loginaddcarrinho 
Cenario: Validar Efetivação de Pedido
Dado Dado que eu tenha finalizado uma compra e esteja na tela de pagamento
Quando Quando eu selecionar uma forma de pagamento 
Entao Entao a tela de conclusão aparecerá e um numero de Pedido será gerado