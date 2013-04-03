require 'test_helper'

class Algos::Sortings::QuicksortsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
