module Homestead
  class ResidentialProperty < ActiveRecord::Base
    validates_presence_of :beds, :baths

    def name
      "#{beds} bed, #{baths} bath"
    end
  end
end
