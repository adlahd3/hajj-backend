class PaymentsController < ApplicationController
  def deduct
    # read the message
    # get the debit account ( From )
    # get the credit account ( To )
    # make the settlement
    # return a message. 
    puts params["body"]
  end

  def payment_parmas
    params.permit(:from, :body)
  end
end
