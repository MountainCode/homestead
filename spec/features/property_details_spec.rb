describe 'property_details' do
  before :each do
    visit '/realestate/listings/3'
  end
  it 'displays multiple photos' do
    photos = all('img.listing-photo')
    expect(photos.length).to eq(2)
  end
end