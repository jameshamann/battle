require 'spec_helper'

feature 'enter names' do

  scenario 'players names are entered' do
    sign_in_and_play
    expect(page).to have_content('Lawrence and James.. BATTLE!')
  end
end
