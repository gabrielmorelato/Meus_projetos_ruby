

describe 'Alertas de Javascript', :alerts do


    before(:each) do
        visit 'javascript_alerts'
    end

    it 'alerta' do

        click_button 'Alerta'

       msg = page.driver.browser.switch_to.alert.text
        # aqui chamamos o browser, para o selenium trabalhar com o navegador da sessão atual.
        # switch_to.alert pedimos para o browser mudar o foco para a mensagem de alerta que aparece.
        puts msg
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 3

    end

    it 'sim confirma' do

        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.accept
        #O accept irá confirmar a mensagem, irá apertar o "OK" na mensagem que aparecer
        expect(page).to have_content 'Mensagem confirmada'
        sleep 3

    end


    it 'não confirma' do

        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.dismiss
        #O dismiss irá cancelar a mensagem, irá apertar o "Cancel" na mensagem que aparecer
        expect(page).to have_content 'Mensagem não confirmada'
        sleep 3

    end

    it 'Accept Prompt', :accept_prompt do

        accept_prompt(with: 'Gabriel') do
            click_button 'Prompt'
            sleep 2
        end

        expect(page).to have_content 'Olá, Gabriel'
        sleep 3
    

    end

    
    it 'Dismiss prompt', :dismiss_prompt do

        #quando eu não aceito este prompt
        #então a mensagem deve ser Olá, null

        dismiss_prompt(with: '') do
            click_button 'Prompt'
            sleep 2
        end

        expect(page).to have_content 'Olá, null'
        sleep 3

    end










end