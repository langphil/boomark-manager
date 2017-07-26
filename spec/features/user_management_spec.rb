feature 'new user' do
  scenario 'a new user signs up' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, user@user.com')
    expect(User.first.email).to eq('user@user.com')
  end
end