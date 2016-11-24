class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fname, :string, limit: 20
    add_column :users, :lname, :string, limit: 20
    add_column :users, :address1, :string, limit: 25
    add_column :users, :address2, :string, limit: 25
    add_column :users, :city, :string, limit: 30
    add_column :users, :state, :string, limit: 2
    add_column :users, :zipcode, :integer, limit: 5
    add_column :users, :phnumber, :string, limit: 15
    add_column :users, :usertype, :string, limit: 6
  end
end
