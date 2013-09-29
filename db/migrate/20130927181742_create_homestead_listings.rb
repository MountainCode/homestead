class CreateHomesteadListings < ActiveRecord::Migration
  def change
    create_table :homestead_listings do |t|
      t.string  :listing_number
      t.decimal :list_price
      t.date    :list_date
      t.decimal :latitude
      t.decimal :longitude
      t.integer :office_id
      t.integer :provider_id
      t.integer :property_type_id
      t.integer :sub_property_type_id
      t.integer :status_id
      t.integer :address_id
      t.text    :remarks
      
      t.attachment :photo

      t.timestamps
    end
  end
end
