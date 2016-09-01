require 'spec_helper'

feature 'attacking player_two' do

  scenario 'attacking player_two' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Lawrence attacked James'
  end
end
