class CreateHomesteadAddresses < ActiveRecord::Migration
  def change
    create_table :homestead_addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.integer :state_id
      t.string :postal_code

      t.timestamps
    end
  end
end
