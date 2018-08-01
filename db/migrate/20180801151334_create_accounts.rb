class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :iban_number
      t.string :owner_name
      t.string :owner_id
      t.string :owner_id_type
      t.string :nationality

      t.timestamps
    end
  end
end
