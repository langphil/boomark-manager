feature 'Creating links' do

  before do
    link_save
  end

  scenario 'adding title' do
    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end

  scenario 'adding tag' do
    link = Link.first
    expect(link.tags.map(&:name)).to include('education')
  end
end
