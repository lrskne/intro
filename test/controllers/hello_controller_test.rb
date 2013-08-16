require 'test_helper'

class HelloControllerTest < ActionController::TestCase
  test "should get from_view" do
    get :from_view
    assert_response :success
  end

  test "should get from_controller" do
    get :from_controller
    assert_response :success
  end

end
