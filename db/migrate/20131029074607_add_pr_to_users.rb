class AddPrToUsers < ActiveRecord::Migration
  def change
    add_column :users, :PR, :integer, :default => 1000
  end
end
