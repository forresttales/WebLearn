require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get industry_news" do
    get :industry_news
    assert_response :success
  end

  test "should get blogs" do
    get :blogs
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
