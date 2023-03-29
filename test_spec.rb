# Meu código de prática

describe 'caixa de seleção', :exemplo do


    it 'find something' do 
        visit 'dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Steve Rogers').select_option
        sleep 10
    end






end
