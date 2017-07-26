def link_save
  visit '/links/new'
  fill_in 'title', with: 'Makers Academy'
  fill_in 'url', with: 'http://makersacademy.com'
  fill_in 'tags', with: 'education'
  click_button 'Submit'

  visit '/links/new'
  fill_in 'title', with: 'bubbles'
  fill_in 'url', with: 'http://bubbles.com'
  fill_in 'tags', with: 'bubbles'
  click_button 'Submit'
end

def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in 'email', with: 'user@user.com'
  fill_in 'password', with: 'p1ssword'
  click_button 'Sign up'
end
