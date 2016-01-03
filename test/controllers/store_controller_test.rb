require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get my_store" do
    get :my_store
    assert_response :success
  end

  test "should get show_product" do
    get :show_product
    assert_response :success
  end

end
