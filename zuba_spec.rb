


describe 'Webmotors', :zuba do



it 'digitar e pesquisar' do

visit 'https://www.zubacasacriativa.com.br'



#find('.js-search-input').click

#sleep 2

    def keypress(letras)

        find('.js-search-input').send_keys letras

    end

    letras = %w[C a d e r n o]
        # %w para criar um array de strings

     letras.each do |l|
            keypress(l)
           # sleep 1
     end

   find('.btn-desktop-search').click

   sleep 1

    def scroll_to_element(elem)
    page.execute_script('arguments[0].scrollIntoView();', elem)
    end



sleep 5

end

















end