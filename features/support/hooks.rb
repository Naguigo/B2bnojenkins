
#realiza login
Before('@login') do
    #Elementos mapeados no "Login_pages.rb"
    #@login = Login.new #estanciando a class "Login" que esta no arquivo pages
    login.load
    login.wait_until_email_visible
    login.email.set(CONFIG['user'])
    login.password.set(CONFIG['senha'])
    login.fazerlogin.click
    sleep 3
end


#login + add produto ao carrinho
Before('@loginaddcarrinho')   do
    login.load
    login.logar
    #login.wait_until_email_visible
    #login.email.set(CONFIG['user'])
    #login.password.set(CONFIG['senha'])
    #login.fazerlogin.click
    home.wait_until_campobusca_visible
    home.campobusca.set 'MONITOR AOC 15,6" LED WIDE - E1670SWU-WM'
    home.botaobuscar.click
    sleep(8)
    find('div[data-productid="83748"]').find('button[title="Adicionar ao carrinho"]').click
    sleep 3
    visit '/carrinho'
end




#logout simples
After('@logout') do
    
    visit '/logout'

end  

#metodo para limpar carrinho de compras
After('@limpacarrinho') do
    
      
            visit '/carrinho'
            todos_itens = all(".remove-from-cart input[type=checkbox]")
            todos_itens.each { |item| item.click }
            find('input[value="Atualizar carrinho de compras"]').click        
            visit '/logout'
        
end    


After do |scenario|
     scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')   
        if scenario.failed?
          tirar_foto(scenario_name.downcase!, 'falhou')
        else
          tirar_foto(scenario_name.downcase!, 'passou')
        end
end
      

