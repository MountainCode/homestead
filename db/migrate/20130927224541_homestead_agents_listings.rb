class HomesteadAgentsListings < ActiveRecord::Migration
  def change
    create_table :homestead_agents_listings do |t|
      t.integer :agent_id
      t.integer :listing_id
    end
  end
end
