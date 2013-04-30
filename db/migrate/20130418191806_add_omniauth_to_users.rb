class AddOmniauthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string,              :null => false
    add_column :users, :uid, :integer,                  :null => false

    add_index :users, [:provider, :uid],                :unique => true
  end
end
