module Homestead
  class CommercialListing < Listing
    belongs_to :property, class_name: CommercialProperty
    validates_presence_of :property

    accepts_nested_attributes_for :property

    after_initialize do
      # This class always has a commercial property type.
      self.property_type = PropertyType.where(code: 'C').first
    end
  end
end
