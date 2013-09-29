describe 'search for listing' do
  it 'finds properties by price range' do
    visit '/realestate'
    fill_in 'q[list_price_lteq]', with: '600000'
    fill_in 'q[list_price_gteq]', with: '500000'
    click_button 'Find properties'
    expect(page).to have_content '400 Market St.'
    expect(page).not_to have_content '257 East Main Street'
  end
  it 'finds properties by type' do
    visit '/realestate'
    select 'Vacant Land', from: 'q[property_type_id_eq]'
    click_button 'Find properties'
    expect(page).not_to have_content '400 Market St.'
    expect(page).not_to have_content '257 East Main Street'
    expect(page).to have_content '123 Nice plot'
  end
end
