class CreateHomesteadFirms < ActiveRecord::Migration
  def change
    create_table :homestead_firms do |t|
      t.string :name

      t.timestamps
    end
  end
end
