class CreateHomesteadResidentialProperties < ActiveRecord::Migration
  def change
    create_table :homestead_residential_properties do |t|
      t.integer :beds
      t.decimal :baths

      t.timestamps
    end
  end
end
