class CreateHomesteadOffices < ActiveRecord::Migration
  def change
    create_table :homestead_offices do |t|
      t.string :name
      t.integer :status_id
      t.integer :address_id
      t.integer :firm_id

      t.timestamps
    end
  end
end
