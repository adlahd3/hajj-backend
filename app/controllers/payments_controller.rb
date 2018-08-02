class PaymentsController < ApplicationController
  def deduct
    # read & parse the message
  
    tokens = params[:Body].split("\n")
    fromID = tokens[0][tokens[0].index(':')+1..-1].to_i
    toID   = tokens[1][tokens[1].index(':')+1..-1].to_i
    amount = tokens[2][tokens[2].index(':')+1..-1].to_f
    
    # make the transaction
    Transaction.create({amount: amount, debit_account_id:fromID, credit_account_id: toID, is_paid: true})

    # settle balance
    debit_account = Account.find_by(id: fromID)
    debit_account.balance -= amount
    debit_account.save
    
    credit_account = Account.find_by(id: toID)
    credit_account.balance += amount
    credit_account.save

  end

  def payment_parmas
    params.permit(:From, :Body)
  end
end
