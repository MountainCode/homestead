RailsAdmin.config do |config|
  # config.model Homestead::ResidentialListing do
  #   edit do
  #     field :listing_number
  #     field :status
  #     field :property_type
  #     field :sub_property_type
  #     field :list_price
  #     field :list_date
  #     field :address
  #     field :agents
  #     field :remarks
  #     field :photo
  #     field :latitude
  #     field :longitude
  #     field :property
  #   end
  # end

  config.model Homestead::Firm do
    edit do
      field :name
      field :offices
    end
  end

  config.model Homestead::Office do
    edit do
      field :name
      field :status
      field :address
      field :agents
    end
  end
end
