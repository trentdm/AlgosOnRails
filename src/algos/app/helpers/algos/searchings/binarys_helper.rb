module Algos::Searchings::BinarysHelper
  def search_binary(input, param)
    input_array = input.delete(' ').split(',').map { |s| s.to_i}
    middle = input_array.size / 2
    return search_binary_recursive(input_array, param, 0, input_array.size, middle)
  end
  
  private
  def search_binary_recursive(input, param, min, max, middle)
    if input[middle] == param or min == max
     return middle
    elsif input[middle] < param
      min = middle
    else
      max = middle
    end
    
    middle = (max + min) / 2
    return search_binary_recursive(input, param, min, max, middle)
  end
end
