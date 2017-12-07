feature 'Navigates to the homepage', :type => :feature do
  scenario 'Hompage loads' do
    visit '/'
    expect(page).to have_text('Los Hombres Malos')
  end
end
