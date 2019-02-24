require 'rails_helper'

feature 'User register cuisine' do
  scenario 'successfully' do
    visit root_path
    click_on 'Adicionar cozinha'
    fill_in 'Nome', with: 'Cozinha X'
    click_on 'Enviar'

    expect(page).to have_css('h1', text: 'Cozinha X')
  end
end