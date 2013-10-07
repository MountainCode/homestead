class CreateHomesteadListingPhotos < ActiveRecord::Migration
  def change
    create_table :homestead_listing_photos do |t|
      t.attachment :image
      t.string :name
      t.string :comment
      t.integer :listing_id

      t.timestamps
    end
  end
end
