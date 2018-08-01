require 'rails_helper'

feature 'user login and show welcome message' do
  scenario 'successfully' do
    user = User.create(email: 'joao@email.com', password:'123456')

    visit root_path
    click_on 'Registrar'

    fill_in 'Email', with: 'joao@email.com'
    fill_in 'Password', with: '123456'
    click_on 'Log in'

    expect(current_path).to eq(root_path)
    expect(page).to have_css('p', text: "Seja bem-vindo #{user.email}")
  end
end
