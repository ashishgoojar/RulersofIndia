class AddMudrasToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Mudras, :integer,:default => 10000
  end
end
