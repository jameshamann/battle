require 'spec_helper'
feature 'enter names' do

  scenario 'players names are entered' do
    visit "/names"
    fill_in('player_one', with: 'Lawrence')
    fill_in('player_two', with: 'James')
    click_button('Submit')
    expect(page).to have_content('Lawrence and James.. BATTLE!')
  end
end
