module Homestead
  class ResidentialListing < Listing
    belongs_to :property, class_name: ResidentialProperty

    validates_presence_of :property

    accepts_nested_attributes_for :property

    after_initialize do
      # This class always has a residential property type.
      self.property_type = PropertyType.where(code: 'R').first
    end
  end
end
