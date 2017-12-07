feature 'attack' do
  scenario 'confirmation of attack' do
    sign_in_and_play
    click_button('Shoot')
    expect(page).to have_content("Winston's been shot, god damn!")
  end
end
