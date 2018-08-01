class Transaction < ApplicationRecord
  belongs_to :debit_account,  :class_name => 'Accounts'
  belongs_to :credit_account, :class_name => 'Accounts'
  has_many :accounts
end
