feature 'Filtering tags' do

  scenario 'I can filter specific tags' do
    link_save
    visit '/tags/education'
    expect(page).to have_content('education')
  end
end
