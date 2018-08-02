class Transaction < ApplicationRecord
  belongs_to :debit_account,  :class_name => 'Account'
  belongs_to :credit_account, :class_name => 'Account'
  has_many :accounts
end
