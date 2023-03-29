

describe 'Tabelas', :tabs do

    before(:each) do
       visit 'tables'
    end

   # it 'Pega o Tony Stark na lista' do

   #     expect(page).to have_content 'Robert Downey Jr'

        # Aqui ele pega o conteúdo do <body> da página e mostra pra gente, uq é muito vago.
        # Pois não tem um nível de assertividade tão bacana.


   # end

    it 'deve exibir o salário do stark' do
        #Pesquisamos por jquery $('table tbody tr');
        #tr = find('table tbody tr') #Jogamos o seletor no find
        #irá dar ambigous match, pq ele vai encontrar 5 elementos

        atores = all('table tbody tr')

        stark = atores.detect {|ator| ator.text.include?('Robert Downey Jr')}
        

        expect(stark.text).to include '10.000.000'


    end

    it 'deve exibir o salário do vin diesel' do

        diesel = find('table tbody tr', text: '@vindiesel')
        #outra técnica de buscar o valor exato
        expect(diesel).to have_content '10.000.000'
        

    end

    it 'Deve exibir o filme Velozes' do

        diesel = find('table tbody tr', text: '@vindiesel')

        movie = diesel.all('td')[2].text #Buscamos todas as <td>s e passamos um array selecionando a terceira coluna que está na posição 2
        # Lembrando que arrays sempre começam na posição 0

        expect(movie).to eql 'Fast & Furious'


    end

    it 'Deve exibir o insta do Chris Evans' do 

        evans = find('table tbody tr', text: 'Chris Evans')
        insta = evans.all('td')[4].text 

        expect(insta).to eql '@teamcevans'



    end

    it 'Deve selecionar Chris Prat para remoção' do

        prat =  find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'delete').click


        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'

    end

    it 'Deve selecionar Chris Prat para edição' do

        prat =  find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'edit').click


        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'

    end



end