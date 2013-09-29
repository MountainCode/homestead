module Homestead
  class ListingStatus < ActiveRecord::Base
    validates_presence_of :code
    validates_presence_of :name
    has_many :listings
  end
end
