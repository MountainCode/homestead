module Homestead
  class SubPropertyType < ActiveRecord::Base
    belongs_to :property_type, class_name: Homestead::PropertyType
  end
end
