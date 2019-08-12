#senhaatual='042019'
#senhanova='052019'


Dado("que eu acesse a pagina principal") do
    #@login = Login.new 
    login.load
    #visit '/login'
    sleep 3
end
  
  Quando("eu faço login com {string} e {string}") do |user, senha|
        @user=user
        @senha=senha
        @login.email.set @user 
        @login.password.set @senha
        @login.fazerlogin.click


  end
  
  Então("devo ser autenticado com Sucesso") do
    sleep 10
    expect(page).to have_content 'Minha Conta'
    #find('#seloEbit')
    #==============  comando abaixo para validar logo banner do ebit ================
    #expect(page).to have_xpath("//img[@src='/Themes/Pavilion/Content/images/seloabcomn.png']")
    
    sleep 1
  end
  
  Entao("uma msg de erro será apresentada") do
    sleep 1
    expect(page).to have_content 'Login não realizado. Por favor corrija os erros e tente novamente.'
  end
  

  Dado("que eu tenha feito login e esteja na tela de alteração de senha") do
    
    visit 'https://qualidade.snd.com.br/Servicos/AlterarSenha'
    sleep 2
  end
  
  Quando("eu preencher os campos de senha antiga e senha nova e clicar em Alterar Senha") do
    find('#OldPassword').set '072019' #pega a senha do primeiro cenario
    find('#NewPassword').set '082019'
    find('#ConfirmNewPassword').set '082019'
    find('input[value="Alterar senha"]').click
    sleep 2
  end
  
  Entao("a alteração da senha será feito com sucesso") do
    expect(page).to have_content 'Senha foi alterada.'
  end
  
  Dado("que eu tenha clicado em Esqueceu a Senha ? Na tela de Login") do
    visit 'https://qualidade.snd.com.br/EsqueciSenha'
    sleep 2
    
  end
  
  Quando("eu preencher com o e-mail e clicar em Recuperar") do
    find('#Email').set 'nathan.gomes@snd.com.br'
    find('input[name="send-email"]').click
  end
  
  Entao("um e-mail deverá ser enviado com orientações para Recuperação da Senha") do
    expect(page).to have_content 'Um e-mail com instruções foi enviado para você.'
  end