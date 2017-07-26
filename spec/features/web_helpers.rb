def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email, with: 'user@user.com'
  fill_in :password, with: 'p1ssword'
  fill_in :password_confirmation, with: 'p1ssword'
  click_button 'Sign up'
end

def sign_up_fail
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email,    with: 'user@user.com'
  fill_in :password, with: 'p1ssword'
  fill_in :password_confirmation, with: 'password'
  click_button 'Sign up'
end

def link_save
  visit '/links/new'
  fill_in 'title', with: 'Makers Academy'
  fill_in 'url', with: 'http://makersacademy.com'
  fill_in 'tags', with: 'education'
  click_button 'Submit'
end
