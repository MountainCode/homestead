module Homestead
  class Listing < ActiveRecord::Base
    validates_presence_of :listing_number, :list_date, :status, :address,
                          :list_price, :property_type, :sub_property_type,
                          :provider

    belongs_to :address
    belongs_to :status, class_name: Homestead::ListingStatus
    has_and_belongs_to_many :agents
    has_attached_file :photo, styles: {medium: '300x300>'}, default_url: '/assets/homestead/image_not_found.png'
    belongs_to :property_type
    belongs_to :sub_property_type
    belongs_to :provider, class_name: Homestead::ListingProvider

    def name
      "#{listing_number} - #{address.city}, #{address.state}" if address
    end
  end
end
