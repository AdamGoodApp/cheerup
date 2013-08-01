require 'test_helper'

class CheerUpsControllerTest < ActionController::TestCase
  setup do
    @cheer_up = cheer_ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cheer_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cheer_up" do
    assert_difference('CheerUp.count') do
      post :create, cheer_up: { content: @cheer_up.content, image_upload: @cheer_up.image_upload, latitude: @cheer_up.latitude, longitude: @cheer_up.longitude, rating: @cheer_up.rating, sound_upload: @cheer_up.sound_upload, user_id: @cheer_up.user_id, votes: @cheer_up.votes }
    end

    assert_redirected_to cheer_up_path(assigns(:cheer_up))
  end

  test "should show cheer_up" do
    get :show, id: @cheer_up
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cheer_up
    assert_response :success
  end

  test "should update cheer_up" do
    put :update, id: @cheer_up, cheer_up: { content: @cheer_up.content, image_upload: @cheer_up.image_upload, latitude: @cheer_up.latitude, longitude: @cheer_up.longitude, rating: @cheer_up.rating, sound_upload: @cheer_up.sound_upload, user_id: @cheer_up.user_id, votes: @cheer_up.votes }
    assert_redirected_to cheer_up_path(assigns(:cheer_up))
  end

  test "should destroy cheer_up" do
    assert_difference('CheerUp.count', -1) do
      delete :destroy, id: @cheer_up
    end

    assert_redirected_to cheer_ups_path
  end
end
