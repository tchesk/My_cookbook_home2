require 'rails_helper'

feature '' do
  scenario '' do
    user = User.create(email: 'joao@email.com', password:'123456')

    visit root_path
    click_on 'Entra na minha conta'

    fill_in 'Email', text: 'joao@email.com'
    fill_in 'Password', text: '123456'
    click_on 'Logar'

    
  end
end
