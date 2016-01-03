require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get trading_apps" do
    get :trading_apps
    assert_response :success
  end

  test "should get how_it_works?" do
    get :how_it_works?
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

end
