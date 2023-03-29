
describe "Meu primeiro script" do

    it "Visitar a página" do

        visit "https://training-wheels-protocol.herokuapp.com"
        expect(page.title).to eql "Training Wheels Protocol"
        sleep 5 #temporário


    end



end
