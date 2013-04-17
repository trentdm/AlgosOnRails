class Algos::Searchings::LinearsController < ApplicationController
  def index
    @properties = AlgoProperties.new
      
    if !params[:algo_properties].nil?
      @properties.input = params[:algo_properties][:input]
      @properties.parameter = params[:algo_properties][:parameter]
    elsif
      @properties.input = "Sally sells sea shells by the sea shore."
      @properties.parameter = "se"
    end
    
    @properties.output = view_context.search_linear(@properties.input, @properties.parameter)
    @properties.code = "def search_linear(input, param)
    output = String.new()
    match = '<b>' + param + '</b>'
    added = 0
    
    for i in 0..(input.size - 1) do
      if getIsMatch(i, input, param)
        output += match
        added += param.size
      elsif added <= i
        output += input[i]
        added += 1
      end
    end    
    
    return output.html_safe
  end
  
  private
  def getIsMatch(i, input, param)
    for j in 0..(param.size - 1) do
      if input[i + j] != param[j]
        return false
      end
    end
    
    return true;
  end"
  end
end
