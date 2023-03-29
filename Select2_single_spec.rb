

describe 'Select2', :single do

before(:each) do

    visit 'apps/select2/single.html'

end



it 'select single' do

find('.select2-selection--single').click

sleep 5

find('.select2-results__option', text: 'Adam Sandler').hover
sleep 2
find('.select2-results__option', text: 'Chris Rock').hover
sleep 2
find('.select2-results__option', text: 'Jim Carrey').hover
sleep 2
find('.select2-results__option', text: 'Kevin James').hover
sleep 2
find('.select2-results__option', text: 'Owen Wilson').hover

sleep 5



end


it 'Busca e Clica no ator', :busca do

    find('.select2-selection--single').click
    #encontra a classe do campo de seleção e clica nele

    find('.select2-search__field').set 'Chris Rock'
    #encontra a barra de pesquisa e digita "Chris Rock"
    
    find('.select2-results__option').click
    #Seleciona a opção que foi digitada no find anterior e clica nela.
    sleep 5


end



after(:each) do

    sleep 5

end



end

describe 'Select2', :multiple do


    before(:each) do

        visit 'apps/select2/multi.html'
    
    end
    
    def selecione(ator)

        find('.select2-container').click
        find('.select2-search__field').set ator
        find('.select2-results__option').click

    end
    
    it 'select single' do

        atores = ['Jim Carrey', 'Owen Wilson', 'Adam Sandler']
    
        atores.each do |a|
         selecione(a)
        end


    #find('.select2-selection--multiple').click
   

  # sleep 2

   # find('.select2-results',  text: 'Jim Carrey').click

   # find('.select2-container').click
 
   #sleep 2

   # find('.select2-results',  text: 'Chris Rock').click

   # find('.select2-container').click

  # sleep 2

   # find('.select2-results',  text: 'Adam Sandler').click

   # sleep 3

    
    
    end
    
    
    
    after(:each) do
    
        sleep 5
    
    end

end