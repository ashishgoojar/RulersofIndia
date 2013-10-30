class CreateConstituentcy2s < ActiveRecord::Migration
  def change
    create_table :constituentcy2s do |t|
      t.string :con_name
      t.integer :user_id

      t.timestamps
    end
      add_index :constituentcy2s, [:user_id, :created_at]
  end
end
