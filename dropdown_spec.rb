#Select (Combobox)


describe 'Caixa de opções', :dropdown do


    it 'item específico simples' do 

        visit 'dropdown'

        select('Loki', from: 'dropdown') #selecione a opção 'loki' do ID 'dropdown'

        sleep 3 #espere 3 segundos antes de fechar o navegador
    end



    it 'item específico com o find' do #caso o elemento não possua ID no código, então buscamos pela classe.

        visit 'dropdown' # Visite a página 'específica'


        drop = find('.avenger-list') # A Variável "DROP" vai guardar o elemento "find", esse método find, vai retornar o elemento pra gente,
                                     # através da busca via css selector através da classe.


        drop.find('option', text: 'Scott Lang').select_option #busque o elemento do tipo option, cujo o valor do texto seja 'Scott Lang'
    
        sleep 3 #espere 3 segundos antes de fechar o navegador
    end



    it 'qualquer item', :sample do
        visit 'dropdown' # Visite a página 'específica'
      
        drop = find('.avenger-list') # A Variável "DROP" vai guardar o elemento "find", esse método find, vai retornar o elemento pra gente,
                                     # através da busca via css selector através da classe.


        # drop.find('option') 
        # Ele vai encontrar todos os elementos do tipo "option"
        # no caso eu tenho que especificar qual ele quer

        drop.all('option').sample.select_option
        # Dentro de todas as opções "all", o "sample" irá sortear um dos elementos entre as opções e o "select_option" irá selecionar essa opção sorteada

        sleep 5



    end

end