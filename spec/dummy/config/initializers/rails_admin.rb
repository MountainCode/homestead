RailsAdmin.config do |config|
  config.model 'Homestead::Listing' do
    edit do
      field :listing_number
      field :status
      field :property_type
      field :sub_property_type
      field :list_price
      field :address
      field :agents
      field :remarks
      field :photo
      field :latitude
      field :longitude
    end
  end
end
