module Homestead
  class Office < ActiveRecord::Base
    has_many :agents
    has_many :listings, through: :agents
  end
end
