require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get moo" do
    get :moo
    assert_response :success
  end

  test "should get cho" do
    get :cho
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
