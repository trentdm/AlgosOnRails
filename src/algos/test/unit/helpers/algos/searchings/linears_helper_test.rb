require 'test_helper'

class Algos::Searchings::LinearsHelperTest < ActionView::TestCase  
  test "get search returns results" do
    result = search_linear("test", "te")
    assert result == "<b>te</b>st"
  end  
end
