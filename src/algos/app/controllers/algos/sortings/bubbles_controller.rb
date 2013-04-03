class Algos::Sortings::BubblesController < ApplicationController
  def index
    @input = "6, 10, 3, -1, -10, -9, -7, 1, -6, 8, 4, 5, 7, -2, 3, 9, -1, 2, -5, 0"
    @parameter = 'None'
    @output = view_context.sort_bubble(@input)
    @code = "def sort_bubble(inputString)
    input = inputString.delete(' ').split(',').map(&:to_i)
    
    for i in 0..(input.size - 1) do
      for j in i..(input.size - 1 ) do
        if input[i] > input[j]
          low = input[j]
          input[j] = input[i]
          input[i] = low
        end
      end
    end
    
    return input.join(', ')
  end"
  end
end
