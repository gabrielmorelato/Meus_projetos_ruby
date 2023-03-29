

describe 'iframes' do

    describe 'Bom', :nice do

        before(:each) do
            visit 'nice_iframe'
        end 

        # usar o ponto . para encontrar a classe e o # para encontrar IDs


        it 'adicionar ao carrinho' do

            within_frame('burgerId') do #escopo para trabalhar com iframe, pode se usar o ID ou o name
                
                produto = find('.menu-item-info-box-content', text: 'REFRIGERANTE')
                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 4,50' 
            end
        end
    end


    describe 'Ruim', :bad do

        before(:each) do
            visit 'bad_iframe'
        end


        it 'iframe ruim' do 
          # O within_frame não funciona se não houver ID ou name
        # É preciso pedir ao desenvolvedor para adicionar um ID ou name, caso contrário não irá funcionar!  
            
            within_frame('.box-iframe') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'

            end
        end

        # PORÉM EXISTE UM TRUQUE!
            #NO CONSOLE IREMOS COLOCAR UM ID TEMPORÁRIO COM COMANDOS DE JQUERY
            #   $('.box-iframe').attr('id', 'tempId');
    end

    describe 'Ruim com ID temporário', :temp do

        before(:each) do
            visit 'bad_iframe'
        end

        it 'Ifram ruim com ID temporário' do

            script = '$(".box-iframe").attr("id", "tempId");' #substituir por asapas duplas para não ter problemas de sintaxe.
            page.execute_script(script) #pagina vai executar um script no console antes de executar a automação

            within_frame('tempId') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
            end

        end

    end


end