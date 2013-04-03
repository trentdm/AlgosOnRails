class Algos::Sortings::QuicksortsController < ApplicationController
  def index
    @input = "6, 10, 3, -1, -10, -9, -7, 1, -6, 8, 4, 5, 7, -2, 3, 9, -1, 2, -5, 0"
    @parameter = 'None'
    @output = view_context.sort_quicksort(@input)
    @code = "def sort_quicksort(input)
    input = input.delete(' ').split(',').map(&:to_i)    
    input = quicksort(input)    
    return input.join(', ')
  end
  
  private
  def quicksort(input) 
    if input.size <= 1
      return input
    end 
    
    length = input.size - 1    
    pivotLoc = (length / 2)
    pivotVal = input[pivotLoc]
    
    temp = input[length]
    input[length] = pivotVal
    input[pivotLoc] = temp
    
    moveIndex = 0
    
    for i in 0..length do
      if input[i] < pivotVal
        temp = input[moveIndex]
        input[moveIndex] = input[i]
        input[i] = temp
        moveIndex += 1
      end
    end
    
    temp = input[moveIndex]
    input[moveIndex] = input[length]
    input[length] = temp
    
    input_low = input.slice(0, moveIndex + 1)
    input_high = input.slice(moveIndex + 1, length - moveIndex)
    
    input_low = quicksort(input_low)
    input_high = quicksort(input_high)
    
    return input_low.concat(input_high)
  end"
  end
end
