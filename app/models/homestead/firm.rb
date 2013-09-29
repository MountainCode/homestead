module Homestead
  class Firm < ActiveRecord::Base
    has_many :offices
    has_many :agents, through: :offices
    has_many :listings, through: :agents
  end
end
