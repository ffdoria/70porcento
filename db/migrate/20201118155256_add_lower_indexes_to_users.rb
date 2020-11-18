class AddLowerIndexesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_index :users, "lower(last_name)"
    add_index :users, "lower(first_name)"
    add_index :users, "lower(email)"
  end
end