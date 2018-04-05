require 'rails_helper'

feature 'user login and show welcome message' do
  scenario '' do
    user = User.create(email: 'joao@email.com', password:'123456')

    visit root_path
    click_on 'login'

    fill_in 'email', with: 'joao@email.com'
    fill_in 'password', with: '123456'
    click_on 'Logar'
    expect(current_path).to eq(root_path)
    expect(page).to have_css('p', text: "Seja bem-vindo #{email}")
  end
end
