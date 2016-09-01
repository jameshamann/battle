require 'spec_helper.rb'

feature 'hit_points' do

  scenario 'player_one can see player_two\'s hit points' do
    visit "/names"
    fill_in('player_one', with: 'Lawrence')
    fill_in('player_two', with: 'James')
    click_button('Submit')
    expect(page).to have_content('James: HP 100')
  end

end
