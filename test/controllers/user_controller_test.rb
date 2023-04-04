require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get omniauthcallback" do
    get user_omniauthcallback_url
    assert_response :success
  end
end
