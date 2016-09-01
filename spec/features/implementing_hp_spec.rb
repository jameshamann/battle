require 'spec_helper'

feature 'Implementing HP' do
  scenario 'player one attacks player two' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('HP 90')
  end

end
