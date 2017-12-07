feature 'Entering names of users' do
  scenario 'Names should be displayed on screen' do
    visit '/'
    fill_in :player_one, with: 'Stanley'
    fill_in :player_two, with: 'Winston'
    click_button("You feelin' lucky?")
    expect(page).to have_content('Stanley Vs Winston')
  end
end
