module Homestead
  class Listing < ActiveRecord::Base
    validates_presence_of :listing_number, :list_date, :status, :address,
                          :list_price, :property_type, :sub_property_type,
                          :provider

    belongs_to :address
    belongs_to :status, class_name: ListingStatus
    has_and_belongs_to_many :agents
    has_one :property_type, through: :sub_property_type
    belongs_to :sub_property_type
    belongs_to :provider, class_name: ListingProvider
    has_many :photos, class_name: ListingPhoto
    has_one :primary_photo, class_name: ListingPhoto

    accepts_nested_attributes_for :address

    after_initialize do
      if new_record?
        self.provider = ListingProvider.where(name: 'Custom').first
        self.status = ListingStatus.where(code: 'A').first
        self.list_date = DateTime.now
      end
    end

    def name
      "#{listing_number} - #{address.city}, #{address.state}" if address
    end
  end
end
