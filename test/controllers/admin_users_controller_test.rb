require 'test_helper'

class AdminUsersControllerTest < ActionController::TestCase
  test "should get admin_delete" do
    get :admin_delete
    assert_response :success
  end

  test "should get admin_edit" do
    get :admin_edit
    assert_response :success
  end

  test "should get admin_list" do
    get :admin_list
    assert_response :success
  end

  test "should get admin_new" do
    get :admin_new
    assert_response :success
  end

end
