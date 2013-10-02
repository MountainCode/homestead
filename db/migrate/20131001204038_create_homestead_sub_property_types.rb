class CreateHomesteadSubPropertyTypes < ActiveRecord::Migration
  def change
    create_table :homestead_sub_property_types do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
