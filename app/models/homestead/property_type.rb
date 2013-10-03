module Homestead
  class PropertyType < ActiveRecord::Base
    validates_presence_of :code
    validates_presence_of :name
    has_one :sub_property_type, dependent: :destroy
  end
end
