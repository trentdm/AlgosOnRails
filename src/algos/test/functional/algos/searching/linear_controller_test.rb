require 'test_helper'

class Algos::Searching::LinearControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
