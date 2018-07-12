class DiffsEventsController < ApplicationController
  
  def index
    result = DiffEvent.all
    render json: {data: result}, status: :ok
  end
end
