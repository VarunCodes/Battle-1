feature 'Navigates to the homepage', :type => :feature do
  scenario 'Hompage loads' do
    visit '/'
    expect(page).to have_text('Testing infrastructure working!')
  end
end

feature 'Entering names of users' do
  
end
