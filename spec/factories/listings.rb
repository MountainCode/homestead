module Homestead
  residential = PropertyType.where(name: 'Residential').first
  commercial = PropertyType.where(name: 'Commercial').first
  land = PropertyType.where(name: 'Vacant Land').first

  vt = State.where(code: 'VT').first
  wy = State.where(code: 'WY').first

  FactoryGirl.define do
    factory :listing, class: Homestead::Listing do
      listing_number '000001'
      list_price 100_000
      list_date Date.new
      property_type residential
      address Address.new(line1: '123 Ventura St.', city: 'Jamaica',
        state: vt, postal_code: '05343')
      status ListingStatus.where(code: 'A').first
    end
    factory :jackson_listing, class: Homestead::Listing do
      listing_number '000002'
      list_price 200_000
      list_date Date.new
      property_type commercial
      address Address.new(line1: '1 Snowy Way', city: 'Jackson',
        state: wy, postal_code: 'XXXXX')
      status ListingStatus.where(code: 'A').first
    end
    factory :jackson_listing2, class: Homestead::Listing do
      listing_number '000003'
      list_price 300_000
      list_date Date.new
      property_type land
      address Address.new(line1: '1 Mountain Pass', city: 'Jackson',
        state: wy, postal_code: 'XXXXX')
      status ListingStatus.where(code: 'C').first
    end
  end
end
