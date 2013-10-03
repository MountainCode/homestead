class CreateHomesteadOfficeStatuses < ActiveRecord::Migration
  def change
    create_table :homestead_office_statuses do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
