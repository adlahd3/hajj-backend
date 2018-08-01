class ChangeColumnAccounts < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :owner_name
    remove_column :users, :owner_id
    remove_column :users, :owner_id_type
    remove_column :users, :nationality
  end
end
