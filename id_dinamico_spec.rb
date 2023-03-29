describe 'id dinâmico', :id_dinamico do

before(:each) do
    visit 'access#'
end



it 'cadastro' do

   # find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'Gabriel'
   # find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt'). set '12345'
    #find('#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click

    # esses IDS podem ser muito grandes e podem acabar mudando conforme forem feitas atualizações
    # CSS Selector com input, onde será utilizado somente uma parte do ID:

    find('input[id$=UsernameInput').set 'Gabriel' #Lembrando que o dolar "$" serve para indicar elementos que terminam com determinada palavra
    find('input[id^=PasswordInput').set '123456'  #Acento circunflexo "^", para indicar que "começa com"
    find('a[id*=GetStartedButton').click       #E o asterisco * para indicar que "Contém"

    # $ = Termina com
    # ^ = Começa com
    # * = Contém



    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    sleep 3

end




end