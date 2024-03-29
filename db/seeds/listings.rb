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
  business = SubPropertyType.where(code: 'B').first

  custom = ListingProvider.where(name: 'Custom').first

  with_files('4305494') do |listing_number, img, remarks|
    photo = ListingPhoto.new(image: img)
    ResidentialListing.new(
      property_type: residential,
      sub_property_type: single_home,
      listing_number: listing_number,
      list_price: 669_500,
      address: Address.new(
        line1: '257 East Main Street',
        city: 'Coquille',
        state: oregon,
        postal_code: '97423'
      ),
      photos: [photo],
      primary_photo: photo,
      remarks: remarks,
      property: ResidentialProperty.new(beds: 3, baths: 1.5)
    ).save!
  end unless Listing.where(listing_number: '4305494').any?

  with_files('THOMPSON') do |listing_number, img, remarks|
    photo = ListingPhoto.new(image: img)
    ResidentialListing.new(
      property_type: residential,
      sub_property_type: single_home,
      listing_number: listing_number,
      list_price: 599_000,
      list_date: Date.parse('2013-08-15'),
      address: Address.new(
        line1: '400 Market St.',
        city: 'New Wilmington',
        state: pa,
        postal_code: '16142'
      ),
      photos: [photo],
      primary_photo: photo,
      remarks: remarks,
      property: ResidentialProperty.new(beds: 2, baths: 1)
    ).save!
  end unless Listing.where(listing_number: 'THOMPSON').any?

  with_files('000LAND') do |listing_number, img, remarks|
    File.open("db/seeds/images/#{listing_number}_2.jpg", 'r') do |img2|
      photo = ListingPhoto.new(image: img)
      photo2 = ListingPhoto.new(image: img2)
      LandListing.new(
        property_type: land,
        sub_property_type: lot,
        listing_number: listing_number,
        list_price: 200_000,
        list_date: Date.parse('2013-07-01'),
        address: Address.new(
          line1: '123 Nice plot',
          city: 'Londonderry',
          state: vt,
          postal_code: '05148'
        ),
        photos: [photo, photo2],
        primary_photo: photo,
        remarks: remarks,
        property: LandProperty.new(lot_size: 10.5)
      ).save!
    end
  end unless Listing.where(listing_number: '000LAND').any?

  with_files('GERMANTOWN') do |listing_number, img, remarks|
    photo = ListingPhoto.new(image: img)
    CommercialListing.new(
      sub_property_type: business,
      listing_number: listing_number,
      list_price: 1_000_000,
      list_date: Date.parse('2013-01-01'),
      address: Address.new(
        line1: '2049 Germantown Ave',
        city: 'Philadelphia',
        state: pa,
        postal_code: '19118'
      ),
      photos: [ListingPhoto.new(image: img)],
      primary_photo: photo,
      remarks: remarks,
      property: CommercialProperty.new
    ).save!
  end unless Listing.where(listing_number: 'GERMANTOWN').any?
end
