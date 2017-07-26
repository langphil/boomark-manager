feature 'new user' do

  scenario 'a new user can register' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, user@user.com')
    expect(User.first.email).to eq('user@user.com')
  end

  scenario 'user cant register if confirmation password doesnt match' do
    expect { sign_up_fail }.not_to change(User, :count)
    expect(current_path).to eq '/links'
    expect(page).not_to have_content 'Welcome, user@user.com'
  end
end
