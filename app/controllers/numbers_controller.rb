class NumbersController < ApplicationController

  def index  
    result = Solution.build(params[:value])
    render json: {result: result}, status: :ok
  end
end
