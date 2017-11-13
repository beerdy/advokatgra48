require 'test_helper'

class TarifControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
