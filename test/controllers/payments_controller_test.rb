require 'test_helper'

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get deduct" do
    get payments_deduct_url
    assert_response :success
  end

end
