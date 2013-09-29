class CreateHomesteadAgents < ActiveRecord::Migration
  def change
    create_table :homestead_agents do |t|
      t.string :first_name
      t.string :last_name
      t.integer :status_id
      t.integer :office_id

      t.timestamps
    end
  end
end
