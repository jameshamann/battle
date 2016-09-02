require 'spec_helper'

feature 'enter names' do

  scenario 'players names are entered' do
    sign_in_and_play
    expect(page).to have_content('James and Abi: BATTLE!')
  end
end
