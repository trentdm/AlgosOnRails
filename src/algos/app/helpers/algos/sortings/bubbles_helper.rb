module Algos::Sortings::BubblesHelper
  def sort_bubble(inputString)
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
  end
end
