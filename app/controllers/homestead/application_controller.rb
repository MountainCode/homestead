module Homestead
  class ApplicationController < ActionController::Base
    helper_method :property_type_options
    before_filter :search_query

    def search_query
      search_params = {'s' => 'list_price desc'}
      search_params = search_params.merge(params[:q]) if params[:q]
      @q = Listing.search(search_params)
    end

    def property_type_options
      a = Homestead::PropertyType.all.map do |t|
        [t.name, t.id]
      end
      [['Property type', '']].concat(a)
    end
  end
end
