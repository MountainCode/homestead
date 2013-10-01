module Homestead
  class ApplicationController < ActionController::Base
    helper_method :property_type_options

    def property_type_options
      a = Homestead::PropertyType.all.map do |t|
        [t.name, t.id]
      end
      [['Property type', '']].concat(a)
    end
  end
end
