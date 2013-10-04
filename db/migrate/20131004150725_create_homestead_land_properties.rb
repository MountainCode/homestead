class CreateHomesteadLandProperties < ActiveRecord::Migration
  def change
    create_table :homestead_land_properties do |t|
      t.decimal :lot_size

      t.timestamps
    end
  end
end
