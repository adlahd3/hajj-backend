class Transaction < ApplicationRecord
  belongs_to :debit_account,  :class_name => 'Account'
  belongs_to :credit_account, :class_name => 'Account'
  has_many :accounts

  def as_json(options={})
  super(:only => [:id,:amount, :created_at],
        :include => {
          :debit_account => {:only => [:id, :owner_name]},
          :credit_account => {:only => [:id, :owner_name]},
        })
  end
end
