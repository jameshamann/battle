
def sign_in_and_play
  visit "/"
  fill_in('player_one', with: 'James')
  fill_in('player_two', with: 'Abi')
  click_button('Submit')
end
