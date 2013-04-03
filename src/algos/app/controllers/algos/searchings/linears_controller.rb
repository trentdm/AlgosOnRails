class Algos::Searchings::LinearsController < ApplicationController
  def index
    @input = "Sally sells sea shells by the sea shore."
    @parameter = "se"
    @output = view_context.search_linear(@input, @parameter)
    @code = "def search_linear(input, param)
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
