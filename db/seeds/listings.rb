  def with_files(listing_number)
    File.open("db/seeds/images/#{listing_number}.jpg", 'r') do |img|
      File.open("db/seeds/listings/#{listing_number}.txt", 'r') do |remarks|
        yield listing_number, img, remarks.read
      end
    end
  end

module Homestead
  vt = State.where(code: 'VT').first
  pa = State.where(code: 'PA').first
  oregon = State.where(code: 'OR').first

  active = ListingStatus.where(code: 'A').first

  residential = PropertyType.where(code: 'R').first
  single_home = SubPropertyType.where(code: 'S').first
  land = PropertyType.where(code: 'L').first
  lot = SubPropertyType.where(code: 'L').first

  custom = ListingProvider.where(name: 'Custom').first

  with_files('4305494') do |listing_number, img, remarks|
    Listing.new(
      property_type: residential,
      sub_property_type: single_home,
      listing_number: listing_number,
      list_price: 669_500,
      list_date: Date.parse('2013-09-30'),
      status: active,
      provider: custom,
      address: Address.new(
        line1: '257 East Main Street',
        city: 'Coquille',
        state: oregon,
        postal_code: '97423'
      ),
      photo: img,
      remarks: remarks
    ).save!
  end

  with_files('THOMPSON') do |listing_number, img, remarks|
    Listing.new(
      property_type: residential,
      sub_property_type: single_home,
      listing_number: listing_number,
      list_price: 599_000,
      list_date: Date.parse('2013-08-15'),
      status: active,
      provider: custom,
      address: Address.new(
        line1: '400 Market St.',
        city: 'New Wilmington',
        state: pa,
        postal_code: '16142'
      ),
      photo: img,
      remarks: remarks
    ).save!
  end

  with_files('000LAND') do |listing_number, img, remarks|
    Listing.new(
      property_type: land,
      sub_property_type: lot,
      listing_number: listing_number,
      list_price: 200_000,
      list_date: Date.parse('2013-07-01'),
      status: active,
      provider: custom,
      address: Address.new(
        line1: '123 Nice plot',
        city: 'Londonderry',
        state: vt,
        postal_code: '05148'
      ),
      photo: img,
      remarks: remarks
    ).save!
  end
end
