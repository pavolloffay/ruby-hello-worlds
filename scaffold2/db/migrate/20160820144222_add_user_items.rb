class AddUserItems < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :password, :string
    add_column :users, :email, :string
    add_column :users, :description, :string
    add_column :users, :logged_in_at, :datetime
    add_index :users, :email, :unique => true
  end
end
