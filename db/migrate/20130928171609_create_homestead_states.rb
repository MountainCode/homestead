class CreateHomesteadStates < ActiveRecord::Migration
  def change
    create_table :homestead_states do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
