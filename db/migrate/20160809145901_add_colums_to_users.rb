class AddColumsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :driving_license, :string
    add_column :users, :date_of_issue, :date
  end
end
