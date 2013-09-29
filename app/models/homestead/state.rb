module Homestead
  class State < ActiveRecord::Base
    validates_presence_of :name, :code

    def to_s
      name
    end
  end
end
