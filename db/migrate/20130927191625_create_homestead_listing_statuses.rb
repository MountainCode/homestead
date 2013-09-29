class CreateHomesteadListingStatuses < ActiveRecord::Migration
  def change
    create_table(:homestead_listing_statuses) do |t|
      t.string :code, uniqueness: true
      t.string :name

      t.timestamps
    end
  end
end
