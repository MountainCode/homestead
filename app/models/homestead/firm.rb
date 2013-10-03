module Homestead
  class Firm < ActiveRecord::Base
    validates_presence_of :name

    has_many :offices
    has_many :agents, through: :offices
    has_many :listings, through: :agents
  end
end
