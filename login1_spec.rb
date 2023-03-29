

describe 'Forms' do

it 'Login com sucesso' do

    visit 'login'

    fill_in 'username', with: 'stark'
    fill_in 'password', with: 'jarvis!'

    click_button 'Login'

    expect(find('#flash').visible?).to be true

    #puts (find('#flash').text)
    #puts 'Olá, Tony Stark. Você acessou a área logada!'

    #expect(find('#flash').text).to eql 'Olá, Tony Stark. Você acessou a área logada!'

    #quando eu tiver um texto idêntico, eu vou usar o eql

    # Quando eu quiser perguntar se um valor contém na string, ou se contém no elemento, eu uso o include ou have content

    expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

    # Aqui eu estou obtendo o texto, e perguntando se esse valor contém no texto

    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

  #  page.save_screenshot('log/login_com_sucesso.png')


    # Aqui eu estou perguntando diretamente pro elemento se ele contém esse valor da string
    #uma sintaxe com código mais limpo e interessante com o código do próprio capybara.

end


it 'Login com senha incorreta' do

    visit 'login'

    fill_in 'username', with: 'stark'
    fill_in 'password', with: 'batata'

    click_button 'Login'

    expect(find('#flash')).to have_content 'Senha é invalida!'


   # page.save_screenshot('log/senha_incorreta.png')


end


it 'usuário não cadastrado' do

    visit 'login'

    fill_in 'username', with: 'Hulk'
    fill_in 'password', with: 'batata'

    click_button 'Login'

    expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'


   # page.save_screenshot('log/usuario_nao_cadastrado.png')


end

after(:each) do |e|
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_') #gsbu é um método que faz substring
    # enquanto /[^A-Za-z0-9 ]/, '' é uma expressão regular que substitui caractere especial por nada
    # já o tr(' ', '_') substitui os espaços em branco por Underline
    page.save_screenshot('log/' + nome + '.png')
end

end