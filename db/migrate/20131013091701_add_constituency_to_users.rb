class AddConstituencyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :constituency, :string
  end
end
