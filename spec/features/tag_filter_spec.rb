feature 'Filtering tags' do

  scenario 'I can filter specific tags' do
    link_save
    visit '/tags/bubbles'
    expect(page).to have_content('bubbles')
  end
end
