# Botões de Radio

describe 'Botões de Radio', :radio do





    before(:each) do

     visit 'radios'

    end






    it 'seleção por id' do
        sleep 2
        choose('cap')
        # O "choose" irá escolher uma opção dos botões de radio pelo "ID"
    end



    it 'seleção por find e css selector' do
        # esse caso serve para caso o atributo não possua um ID ou NAME, então buscamos pelo "Value"
        # Todos os atributos do tipo checkbox, possuem "value" 

        sleep 2
       
        find('input[value=guardians]').click
        # o find irá encontrar dentro do "input" o "value" do atributo
        # nesse caso, o "guardians", e o CLICK irá clicar no Radio


    end

    it 'teste loko' do

    sleep 3 

        find('input[value=cap]').click
        find('input[value=iron-man]').click
        find('input[value=thor]').click
        find('input[value=the-avengers]').click
        find('input[value=guardians]').click
        find('input[value=ant-man]').click
        find('input[value=black-panther]').click
        find('input[value=ant-man]').click
        find('input[value=the-avengers]').click
        find('input[value=thor]').click
        find('input[value=iron-man]').click
        find('input[value=cap]').click
        find('input[value=cap]').click
        find('input[value=iron-man]').click
        find('input[value=thor]').click
        find('input[value=the-avengers]').click
        find('input[value=guardians]').click
        find('input[value=ant-man]').click
        find('input[value=black-panther]').click
        find('input[value=ant-man]').click
        find('input[value=the-avengers]').click
        find('input[value=thor]').click
        find('input[value=iron-man]').click
        find('input[value=cap]').click
        find('input[value=cap]').click
        find('input[value=iron-man]').click
        find('input[value=thor]').click
        find('input[value=the-avengers]').click
        find('input[value=guardians]').click
        find('input[value=ant-man]').click
        find('input[value=black-panther]').click
        find('input[value=ant-man]').click
        find('input[value=the-avengers]').click
        find('input[value=thor]').click
        find('input[value=iron-man]').click
        find('input[value=cap]').click
        find('input[value=cap]').click
        find('input[value=iron-man]').click
        find('input[value=thor]').click
        find('input[value=the-avengers]').click
        find('input[value=guardians]').click
        find('input[value=ant-man]').click
        find('input[value=black-panther]').click
        find('input[value=ant-man]').click
        find('input[value=the-avengers]').click
        find('input[value=thor]').click
        find('input[value=iron-man]').click
        find('input[value=cap]').click


    end



    after(:each) do

        sleep 5

    end




end