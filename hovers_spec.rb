

describe 'Mouse hover', :hovers do

    before(:each) do
        visit 'hovers'

    end



it 'blade' do

    card = find('img[alt=Blade]')
    card.hover


    expect(page).to have_content 'Nome: Blade'



end


it 'Pantera Negra' do

#quando o elemento possuir caracteres especiais do tipo espaço como:
#$('img[alt="Pantera Negra"]');
#como eu já uso aspas simples para montar o seletor CSS.
#eu preciso utilizar aspas duplas para poder montar a string que representa o elemento para o atributo ALT, ficando assim:
#$('img[alt="Pantera Negra"]');

    card = find('img[alt="Pantera Negra"]')
    card.hover


    expect(page).to have_content 'Nome: Pantera Negra'



end


it 'Homem Aranha' do

    card = find('img[alt="Homem Aranha"]')
    card.hover


    expect(page).to have_content 'Nome: Homem Aranha'



end


after (:each) do

    sleep 3

end





end