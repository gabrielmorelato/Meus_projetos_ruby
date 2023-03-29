describe 'Teste de símbolos', :key do

    before(:each) do

        visit 'key_presses'

    end

    def keypress(simbolo)

     find('#campo-id').send_keys simbolo

    end

    it 'teste de teclas' do

    teclas = [:space, :backspace, 'T', 'E', :space, 'A', 'M', 'O']

        teclas.each do |t|
            keypress(t)
            sleep 1
        end

    end



    it 'teste de símbolos' do

        simbolos = %i[tab escape space enter shift control alt]
        # %i para criar um array de símbolos
        simbolos.each do |s|
            keypress(s)
            expect(page).to have_content 'You entered: ' + s.to_s.upcase #para string em letra maiúscula
            sleep 1
        end

    end  


    it 'Array de strings' do
        letras = %w[M e D e s e n h a]
        # %w para criar um array de strings

        letras.each do |l|
            keypress(l)
            expect(page).to have_content 'You entered: ' + l.to_s.upcase #para string em letra maiúscula
            sleep 1
        end


    end


    sleep 3


end