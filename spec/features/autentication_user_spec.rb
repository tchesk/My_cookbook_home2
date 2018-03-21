require 'rails_helper'

feature 'user login and show welcome message' do
  scenario 'successfully' do
    user = create(:user)

    visit root_path
    click_on 'Entrar na minha conta'

    fill_in 'Email', with: 'joao@email.com'
    fill_in 'Senha', with: '123456'
    click_on 'Logar'

    expect(current_path).to eq(root_path)
    expect(page).to have_css('p', text: "Seja bem-vindo #{email}")
  end
end
