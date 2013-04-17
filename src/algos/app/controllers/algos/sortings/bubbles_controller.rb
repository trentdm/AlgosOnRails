class Algos::Sortings::BubblesController < ApplicationController
  def index
    @properties = AlgoProperties.new
      
    if !params[:algo_properties].nil?
      @properties.input = params[:algo_properties][:input]
      @properties.parameter = params[:algo_properties][:parameter]
    elsif
      @properties.input = "6, 10, 3, -1, -10, -9, -7, 1, -6, 8, 4, 5, 7, -2, 3, 9, -1, 2, -5, 0"
      @properties.parameter = 'None'
      
    end
    
    @properties.output = view_context.sort_bubble(@properties.input)
    @properties.code = "def sort_bubble(inputString)
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
