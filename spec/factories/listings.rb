module Homestead
  residential = PropertyType.where(name: 'Residential').first
  single_home = SubPropertyType.where(name: 'Single family home').first
  commercial = PropertyType.where(name: 'Commercial').first
  business = SubPropertyType.where(name: 'Business').first
  land = PropertyType.where(name: 'Vacant Land').first
  lot = SubPropertyType.where(name: 'Lot').first

  vt = State.where(code: 'VT').first
  wy = State.where(code: 'WY').first

  FactoryGirl.define do
    factory :listing, class: Homestead::Listing do
      listing_number '000001'
      list_price 100_000
      list_date Date.parse('2013-09-30')
      property_type residential
      sub_property_type single_home
      address Address.new(line1: '123 Ventura St.', city: 'Jamaica',
        state: vt, postal_code: '05343')
      status ListingStatus.where(code: 'A').first
    end
    factory :jackson_listing, class: Homestead::Listing do
      listing_number '000002'
      list_price 200_000
      list_date Date.parse('2013-08-15')
      property_type commercial
      sub_property_type business
      address Address.new(line1: '1 Snowy Way', city: 'Jackson',
        state: wy, postal_code: 'XXXXX')
      status ListingStatus.where(code: 'A').first
    end
    factory :jackson_listing2, class: Homestead::Listing do
      listing_number '000003'
      list_price 300_000
      list_date Date.parse('2013-07-01')
      property_type land
      sub_property_type lot
      address Address.new(line1: '1 Mountain Pass', city: 'Jackson',
        state: wy, postal_code: 'XXXXX')
      status ListingStatus.where(code: 'C').first
    end
  end
end
