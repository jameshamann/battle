require 'spec_helper.rb'

feature 'hit_points' do

  scenario 'player_one can see player_two\'s hit points' do
    sign_in_and_play
    expect(page).to have_content('James: HP 100')
  end

end
