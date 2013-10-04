module Homestead
  class LandListing < Listing
    belongs_to :property, class_name: LandProperty

    validates_presence_of :property

    accepts_nested_attributes_for :property

    after_initialize do
      # This call always has a land property type
      self.property_type = PropertyType.where(code: 'L').first
    end
  end
end
