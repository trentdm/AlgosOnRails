require 'test_helper'

class Algos::Searchings::BinarysHelperTest < ActionView::TestCase
  test "get search returns results" do
    input = "-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9"
    param = 7
    result = search_binary(input, param)
    assert result == 16
  end 
end
