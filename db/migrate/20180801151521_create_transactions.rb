class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.float :amount, :null => false, :default => 0.0
      t.references :debit_account
      t.references :credit_account
      t.boolean :is_paid, :default => false
      t.timestamps
    end
  end
end
