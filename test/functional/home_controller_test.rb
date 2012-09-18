require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get courses" do
    get :courses
    assert_response :success
  end

  test "should get members" do
    get :members
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get tutorial" do
    get :tutorial
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

end
