describe 'exemplo de redimensionamento', :resize do

before(:each) do
    page.current_window.resize_to(1920, 1080) #obs: sempre trabalhar com a resolução mínima!! de (1280, 900)
    visit '/'
end

it 'resize' do

    sleep 5


end


end