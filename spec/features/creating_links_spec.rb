feature 'Creating links' do

  before do
    visit '/links/new'
    fill_in 'title', with: 'Makers Academy'
    fill_in 'url', with: 'http://makersacademy.com'
    fill_in 'tags', with: 'education'
    click_button 'Submit'
  end

  scenario 'adding title' do
    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end

  scenario 'adding url' do
    within 'ul#links' do
      expect(page).to have_content('http://makersacademy.com')
    end
  end

  scenario 'adding url' do
    link = Link.first
    expect(link.tags.map(&:name)).to include('education')
  end
end
