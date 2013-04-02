class Algos::Searchings::BinarysController < ApplicationController
  def index
    @input = "-9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9"
    @parameter = 7
    @output = view_context.search_binary(@input, @parameter)
    @code = "def search_binary(input, param)
    input_array = input.delete(' ').split(',').map { |s| s.to_i}
    middle = input_array.size / 2
    return search_binary_recursive(input_array, param, 0, input_array.size, middle)
  end
  
  private
  def search_binary_recursive(input, param, min, max, middle)
    if input[middle] == param
     return middle
    elsif input[middle] < param
      min = middle
    else
      max = middle
    end
    
    middle = (max + min) / 2
    return search_binary_recursive(input, param, min, max, middle)
  end"
  end
end
