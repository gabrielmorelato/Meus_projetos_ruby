describe 'login 2', :login3 do


    before(:each) do
    visit 'access'
    end

    it 'login com sucesso' do

        login_form = find('#login') #encontrar o elemento pai, o login form
        
        #essa é uma técnica de escopo, a busca não vai acontecer na página inteira, e sim somente no formulário de login.


        login_form.find('input[name=username]').set 'stark'
        login_form.find('input[name=password]').set 'jarvis!'
        # css selector com uma querry com o tipo do campo, o atributo e o valor do atributo


      click_button 'Entrar'
         #expect(find('#flash').visible?).to be true

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'Login de escopo com Within' do

        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end


    it 'cadastro com escopo' do

        within('#signup') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_link 'Criar Conta'
            #Nesse caso o "botão" é um link disfarçado de botão, isso aparece com um "A" antes do elemento.
        end

        expect(find('#result')).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

    end




end