class CreateHomesteadCommercialProperties < ActiveRecord::Migration
  def change
    create_table :homestead_commercial_properties do |t|

      t.timestamps
    end
  end
end
