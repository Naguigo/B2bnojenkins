  Dado("que eu tenha me logado") do
    sleep 2
    expect(page).to have_content 'Minha Conta'
  end
  
  Quando("eu clicar no campo busca e Digitar um produto") do
    find('#small-searchterms').set 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('input[class="button-1 search-box-button"]').click
  end
  
  Entao("o produto deve ser trazido a pagina pela busca") do
    find('div[data-productid="83748"]')
    
  end


  Dado("que eu tenha feito uma busca de produto") do
    visit 'https://qualidade.snd.com.br/filterSearch?q=MONITOR%20AOC%2015,6%22%20LED%20WIDE%20-%20E1670SWU-WM'   
    find('div[data-productid="83748"]')
  end  
  
  Quando("eu clicar no campo busca  e clicar na lupa") do
    find('#small-searchterms').set 'MOUSE SEM FIO M187 AZUL LOGITECH'
    find('input[class="button-1 search-box-button"]').click
  end
  
  Entao("o novo produto pesquisado deve ser trazido a pagina") do
    find('div[data-productid="89304"]')
  end
  