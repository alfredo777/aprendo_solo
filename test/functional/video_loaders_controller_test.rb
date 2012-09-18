require 'test_helper'

class VideoLoadersControllerTest < ActionController::TestCase
  setup do
    @video_loader = video_loaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_loaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_loader" do
    assert_difference('VideoLoader.count') do
      post :create, video_loader: @video_loader.attributes
    end

    assert_redirected_to video_loader_path(assigns(:video_loader))
  end

  test "should show video_loader" do
    get :show, id: @video_loader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_loader
    assert_response :success
  end

  test "should update video_loader" do
    put :update, id: @video_loader, video_loader: @video_loader.attributes
    assert_redirected_to video_loader_path(assigns(:video_loader))
  end

  test "should destroy video_loader" do
    assert_difference('VideoLoader.count', -1) do
      delete :destroy, id: @video_loader
    end

    assert_redirected_to video_loaders_path
  end
end
