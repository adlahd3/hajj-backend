class PaymentsController < ApplicationController
  def deduct
    # read the message
    # get the debit account ( From )
    # get the credit account ( To )
    # make the settlement
    # return a message. 
    textbody = params[:body][:Body]
    puts textbody
  end

  def payment_parmas
    params.permit(:from, :Body)
  end
end
