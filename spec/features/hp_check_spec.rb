feature 'hit point check' do
  scenario 'view player 2 hit points' do
    visit '/'
    fill_in :player_one, with: 'Stanley'
    fill_in :player_two, with: 'Winston'
    click_button("You feelin' lucky?")
    expect(page).to have_content('Stanley: 100 hp')
  end
end
