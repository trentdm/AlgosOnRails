require 'test_helper'

class Algos::Sortings::BubblesHelperTest < ActionView::TestCase
  test "get bubble sort results" do
    input = "6, 10, 3, -1, -10, -9, -7, 1, -6, 8, 4, 5, 7, -2, 3, 9, -1, 2, -5, 0"
    param = ''
    result = sort_bubble(input)
    assert result == "-10, -9, -7, -6, -5, -2, -1, -1, 0, 1, 2, 3, 3, 4, 5, 6, 7, 8, 9, 10"
  end 
end
