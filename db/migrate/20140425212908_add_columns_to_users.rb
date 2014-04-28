class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :avatar, :string
    add_column :users, :username, :string
    add_column :users, :score, :integer
    add_column :users, :global_level, :integer
  end
end
