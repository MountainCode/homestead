class CreateHomesteadListingProviders < ActiveRecord::Migration
  def change
    create_table :homestead_listing_providers do |t|
      t.string :name

      t.timestamps
    end
  end
end
