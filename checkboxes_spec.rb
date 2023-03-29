describe 'Caixas de Seleção', :checkbox do

    before(:each) do #Para todos os cenários, antes de executar o "IT", ele irá fazer as ações dentro do "before"

        visit 'checkboxes'

    end


    it 'Marcando e desmarcando uma opção' do

        check ('thor')
        # o "check" serve para marcar checkboxes
        
        sleep 2

        uncheck ('antman')
        # o uncheck para desmarcar checkboxes


        #obs: tanto o check quanto o uncheck, funcionam para os atributos "ID", ou "NAME"

    end

    it 'marcando com o find set true' do
        # esse caso serve para caso o atributo não possua um ID ou NAME, então buscamos pelo "Value"
        # Todos os atributos do tipo checkbox, possuem "value" 

        sleep 2
       
        find('input[value=cap]').set(true)
        # o find irá encontrar dentro do "input" o "value" do atributo
        # nesse caso, o "cap", e o set(true) irá marcar o checkbox que está desmarcado


    end


    it 'desmarcando com o find set true' do

        sleep 2

        find('input[value=guardians]').set(false)
        # Mesmo caso acima, porém o set(false) irá desmarcar a opção

    end


    after(:each) do #a cada cenário ele irá executar o código dentro do "after"

    sleep 5

    end



end