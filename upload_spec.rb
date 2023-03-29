# Upload de Arquivos

describe 'Upload de arquivos', :upload do


before(:each) do

    visit 'upload'

    @arquivo = Dir.pwd + '/spec/fixtures/Sprigatito.txt'
    # O método "PWD" é o método que retorna o caminho na qual tem o diretório de execução do meu projeto
    @imagem = Dir.pwd + '/spec/fixtures/Sprigatito.png'

end


it 'upload de texto' do

    attach_file('file-upload', @arquivo)

    sleep 2

    click_button 'Upload'

    div_arquivo = find('#uploaded-file')
    expect(div_arquivo.text).to eql 'Sprigatito.txt'

end

it 'upload de imagem', :upload_imagem do

    attach_file('file-upload', @imagem)

    sleep 2

    click_button 'Upload'

    sleep 5
    #puts Capybara.default_max_wait_time

    #sleep 5
    img = find('#new-image')
    # Essa variável é um elemento, estamos buscando o elemento com o atributo '#new-image'
    # uma vez que essa variável se torna um elemento do capybara, eu consigo ter acesso a todos os seus atributos do elemento
    # para isso utilizamos o colchetes: [:nome_do_atributo]
    # expect(img[:src]).to eql 'Sprigatito.png'
    expect(img[:src]).to include 'Sprigatito.png'

end






after(:each) do


    sleep 5


end


end