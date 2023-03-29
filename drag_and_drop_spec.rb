

describe 'Drag and drop', :drop do


before(:each) do

    visit 'drag_and_drop'

end




it 'homem aranha pertence ao time do stark' do


stark = find('.team-stark .column')
#Nesse caso pegamos a div pai que é o ".team-stark", junto com sua div filho ".column" e colocamos junto no console: $('.team-stark .column')
#a div pai não tem possibilidade de dar drag and drop, então juntamos as duas no capybara pra podermos encontrar.

cap = find('.team-cap .column')
#Mesma coisa com o Capitão América


miranha = find('img[alt$=Aranha]')
#aqui falamos pro capybara: Eu quero uma imagem, cujo o valor de alt termine com aranha

miranha.drag_to stark




expect(stark).to have_css 'img[alt$=Aranha]'
#Espero que a variável Stark contenha o elemento CSS selector que encontra a imagem do homem aranha

expect(cap).not_to have_css 'img[alt$=Aranha]'

#Espero que a variável cap NÃO contenha o elemento CSS selector que encontra a imagem do homem aranha

end










after(:each) do

    sleep 3

end




end