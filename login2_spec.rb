describe 'login 2', :login2 do


    before(:each) do
    visit 'login2'
    end

    it 'login com data de nascimento' do

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        # find('#userId').set 'stark'
        # find('#passId').set 'jarvis!'

       login_form =  find('#login')

       case login_form.text #Caso o texto do Login_form for:
         when /Dia/ 
             find('#day').set '29' # Quando for dia, encontre o ID 'day' e preencha com 29
         when /Mês/ 
             find('#month').set '05' # Quando for mês, encontre o ID 'month' e preencha com 05
         when /Ano/
             find('#year').set '1970' # Quando for ano, encontre o ID 'Year' e preencha com 1970
       end 

       sleep 3

       click_button 'Login'
         expect(find('#flash').visible?).to be true

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end






end