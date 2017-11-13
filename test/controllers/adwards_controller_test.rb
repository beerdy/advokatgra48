require 'test_helper'

class AdwardsControllerTest < ActionController::TestCase
  setup do
    @adward = adwards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adwards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adward" do
    assert_difference('Adward.count') do
      post :create, adward: { description: @adward.description, image_uid: @adward.image_uid, slave: @adward.slave, title: @adward.title, url: @adward.url }
    end

    assert_redirected_to adward_path(assigns(:adward))
  end

  test "should show adward" do
    get :show, id: @adward
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adward
    assert_response :success
  end

  test "should update adward" do
    patch :update, id: @adward, adward: { description: @adward.description, image_uid: @adward.image_uid, slave: @adward.slave, title: @adward.title, url: @adward.url }
    assert_redirected_to adward_path(assigns(:adward))
  end

  test "should destroy adward" do
    assert_difference('Adward.count', -1) do
      delete :destroy, id: @adward
    end

    assert_redirected_to adwards_path
  end
end
