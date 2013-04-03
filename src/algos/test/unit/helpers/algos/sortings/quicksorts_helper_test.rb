require 'test_helper'

class Algos::Sortings::QuicksortsHelperTest < ActionView::TestCase
    test "get quicksort sort results" do
    input = "6, 10, 3, -1, -10, -9, -7, 1, -6, 8, 4, 5, 7, -2, 3, 9, -1, 2, -5, 0"
    param = ''
    result = sort_quicksort(input)
    assert result == 99
  end 
end
