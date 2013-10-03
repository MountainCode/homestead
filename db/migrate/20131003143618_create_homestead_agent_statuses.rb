class CreateHomesteadAgentStatuses < ActiveRecord::Migration
  def change
    create_table :homestead_agent_statuses do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
