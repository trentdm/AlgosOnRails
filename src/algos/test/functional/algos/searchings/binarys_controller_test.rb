require 'test_helper'

class Algos::Searchings::BinarysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end
end
