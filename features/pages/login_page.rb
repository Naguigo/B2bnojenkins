class Login < SitePrism::Page
    set_url '/login'


    #Formulário de login 
    element :email, '#Email'
    element :password, '#Password'
    element :fazerlogin, 'input[class="button-1 login-button"]'

        def logar
           email.set CONFIG['user']
           password.set CONFIG['senha']
           fazerlogin.click      
                       
        end
end    

