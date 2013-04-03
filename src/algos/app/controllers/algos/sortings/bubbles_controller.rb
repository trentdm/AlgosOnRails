class Algos::Sortings::BubblesController < ApplicationController
  def index
    @input = "6, 10, 3, -1, -10, -9, -7, 1, -6, 8, 4, 5, 7, -2, 3, 9, -1, 2, -5, 0"
    @parameter = ''
    @output = view_context.sort_bubble(@input)
  end
end
