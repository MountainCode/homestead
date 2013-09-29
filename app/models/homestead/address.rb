module Homestead
  class Address < ActiveRecord::Base
    belongs_to :state

    validates_presence_of :line1
    validates_presence_of :city
    validates_presence_of :state
    validates_presence_of :postal_code

    def to_s
      name
    end

    def name
      "#{line1} #{city}, #{state}"
    end
  end
end
