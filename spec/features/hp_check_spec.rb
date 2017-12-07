feature 'hit point check' do
  scenario 'view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Winston: 100 hp')
  end
end
