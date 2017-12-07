feature 'Entering names of users' do
  scenario 'Names should be displayed on screen' do
    sign_in_and_play
    expect(page).to have_content('Stanley Vs Winston')
  end
end
