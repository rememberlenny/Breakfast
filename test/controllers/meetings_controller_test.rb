require 'test_helper'

class MeetingsControllerTest < ActionController::TestCase
  test "should get meetings" do
    get :meetings
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
