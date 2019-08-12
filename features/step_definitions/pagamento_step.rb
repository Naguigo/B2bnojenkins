Dado("Dado que eu tenha finalizado uma compra e esteja na tela de pagamento") do
    find('#checkout').click
    sleep 1
    find("#vendaconsumo").click
    sleep 2   
    expect(page).to have_content 'PAGAMENTO'
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('#btnFinalizarPedido')
  end
  
  Quando("Quando eu selecionar uma forma de pagamento") do
    sleep(2)
    find('#VisibilidadeDepositoSND').click
    sleep(1)
    find('#btnFinalizarPedido').click
    sleep(3)
  end
  
  Entao("Entao a tela de conclusão aparecerá e um numero de Pedido será gerado") do
    expect(page).to have_content 'Obrigado, pedido finalizado com sucesso!'
    expect(page).to have_content 'Número Pedido:'
    expect(page).to have_content 'CONCLUSÃO'
    expect(page).to have_content 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    find('input[value="Continue Comprando"]')
    
    
  end