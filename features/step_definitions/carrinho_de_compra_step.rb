

Dado("que eu tenha escolhido um produto") do
    
    find('#small-searchterms').set 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('input[class="button-1 search-box-button"]').click
    find('div[data-productid="83748"]')
    sleep 3
  end
  
  Quando("eu e clicar no botao Adicionar ao Carrinho") do
      find('div[data-productid="83748"]').find('button[title="Adicionar ao carrinho"]').click
      sleep 3
  end
  
  Entao("um popup deverá ser apresentado com a msg de produto adicionado") do
    expect(page).to have_content 'ADICIONADO AO SEU CARRINHO' 
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('a[class="continueShoppingLink"]')
    find('input[class="button-1 productAddedToCartWindowCheckout"]')

  end
  
  Dado("que eu tenha clicado no botao Adicionar ao Carrinho") do
    find('#small-searchterms').set 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('input[class="button-1 search-box-button"]').click
    find('div[data-productid="83748"]').find('button[title="Adicionar ao carrinho"]').click
    sleep 3
    expect(page).to have_content 'ADICIONADO AO SEU CARRINHO' 
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('a[class="continueShoppingLink"]')
    find('input[class="button-1 productAddedToCartWindowCheckout"]')
  end
  
  Quando("eu clicar no botão Continuar Comprando no popup") do
    find('a[class="continueShoppingLink"]').click
    sleep 1
  end
  
  Entao("o popup se fechará e poderei continuar navendo pela site") do
    sleep 2
    expect(page).to have_content 'Minha Conta'
  end
  
  Dado("que eu já tenha adiciona um Produto ao carrinho de Compras") do
    find('#small-searchterms').set 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('input[class="button-1 search-box-button"]').click
    find('div[data-productid="83748"]').find('button[title="Adicionar ao carrinho"]').click
    sleep 3
    expect(page).to have_content 'ADICIONADO AO SEU CARRINHO' 
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('a[class="continueShoppingLink"]')
    find('input[class="button-1 productAddedToCartWindowCheckout"]')
    find('a[class="continueShoppingLink"]').click
    sleep 1
  end
  
  Quando("eu escolher outro produto e clicar no botão Adicionar ao carrinho") do
    sleep 3
    expect(page).to have_content 'Minha Conta'
    find('#small-searchterms').set 'MOUSE SEM FIO M187 AZUL LOGITECH'
    find('input[class="button-1 search-box-button"]').click
    sleep 3
    find('div[data-productid="89304"]').find('button[title="Adicionar ao carrinho"]').click
    sleep 1
  end

  Entao("um popup deverá ser apresentado com a msg do outro produto adicionado") do
    expect(page).to have_content 'ADICIONADO AO SEU CARRINHO' 
    expect(page).to have_content 'MOUSE SEM FIO M187 AZUL LOGITECH'
    find('a[class="continueShoppingLink"]')
    find('input[class="button-1 productAddedToCartWindowCheckout"]')
    sleep 1
  end
  
  Dado("que eu tenha clicado em adicionar ao Carrinho") do
    find('#small-searchterms').set 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('input[class="button-1 search-box-button"]').click
    find('div[data-productid="83748"]').find('button[title="Adicionar ao carrinho"]').click
    sleep 2
   
  end
  
  Quando("eu clicar no botão Ver Meu Carrinho no popup") do
    expect(page).to have_content 'ADICIONADO AO SEU CARRINHO' 
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('a[class="continueShoppingLink"]')
    find('input[class="button-1 productAddedToCartWindowCheckout"]').click
    sleep 2
  end
  
  Entao("a pagina de Carrinho será apresentada com todos os produtos adicionados.") do
    expect(page).to have_content 'CARRINHO'
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('#startproposal')
    find('#checkout')
  end
  
  
  Quando("eu clicar no Botão Carrinho no canto superior direito da Tela") do
    sleep 2
    find('a[class="continueShoppingLink"]').click
    find('a[class="cart-trigger"]').hover
    find('input[value="Ver meu carrinho"]').click
    sleep 2
  end
  
  Dado("que eu esteja na tela de carrinho e clique Salvar como Proposta") do
    expect(page).to have_content 'CARRINHO'
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('#startproposal').click
    sleep 2
  end

    
  Quando("eu preencher os campos e clicar em salvar") do
    find('#Nickname').set('Fulano')
    find('#Email').set('teste@teste123.com.br')
    find('#StateId').find("option[value='9']").click
    sleep 3
    find('input[name="save"]').click
    sleep 3
  end
  
  Entao("a proposta será apresentada com algumas opçoes de envio por e-mail, clonar, transformar em carrinho, Cancelar e Editar") do
    expect(page).to have_content 'Fulano'
    expect(page).to have_content 'teste@teste123.com.br'
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'

  end
  
  Dado("que eu esteja na tela de carrinho") do
    expect(page).to have_content 'CARRINHO'
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    sleep 2
  end
  
  Quando("eu clicar em Finalizar a Compra") do
    find('#checkout').click
    sleep 1
  end
  
  Entao("um popup deverá ser apresentado com as opções de Uso o Consumo ou Faturar para meu Cliente") do
    expect(page).to have_content 'Uso o consumo'
    find('#vendaconsumo')
    expect(page).to have_content 'Fature para meu cliente'
    find('#cpfcnpj')
    find('#buttonContinuarVendaComissionada')
  end
  
  Quando("eu finalizar a compra e clicar em Uso o Consumo") do
    find('#checkout').click
    sleep 1
    find("#vendaconsumo").click
    sleep 2
  end
  
  Entao("a pagina para pagamento deverá ser apresentada") do
    expect(page).to have_content 'PAGAMENTO'
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('#btnFinalizarPedido')
  end
  
  Quando("eu finalizar a compra e inserir o CNPJ do cliente cadastrado e clique em Faturar para meu Cliente") do
    find('#checkout').click
    sleep 1
    find('#cpfcnpj').set('02.905.787/0001-66') #cnpj cadastrado para teste de automação
    click_button(id: 'buttonContinuarVendaComissionada')
    sleep 3
  end
  
  Quando("eu finalizar a compra e inserir o CNPJ do cliente não cadastrado e clique em Faturar para meu Cliente") do
    find('#checkout').click
    find('#cpfcnpj').set('84.415.136/0001-52') #cnpj gerado mais nao cadastrado
    click_button(id: 'buttonContinuarVendaComissionada')
    sleep 3                           
  end
   
  Entao("aparerá um formulario para cadastro do CNPJ do cliente digitado") do
    find('div[class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front"]')
    expect(page).to have_content 'INFORMAÇÕES CADASTRAIS'
    expect(page).to have_content 'ENDEREÇO DE ENTREGA'
  end

  