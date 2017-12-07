def sign_in_and_play
  visit '/'
  fill_in :player_one, with: 'Stanley'
  fill_in :player_two, with: 'Winston'
  click_button("You feelin' lucky?")
end
