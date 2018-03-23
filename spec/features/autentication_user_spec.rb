require 'rails_helper'

<<<<<<< HEAD
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
=======
feature '' do
  scenario '' do
    user = User.create(email: 'joao@email.com', password:'123456')

    visit root_path
    click_on 'Entra na minha conta'

    fill_in 'Email', text: 'joao@email.com'
    fill_in 'Password', text: '123456'
    click_on 'Logar'

    
>>>>>>> 5b4a12c767593d5a4e8df2e371b5a99707665c6a
  end
end
