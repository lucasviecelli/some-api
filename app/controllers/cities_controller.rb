class CitiesController < ApplicationController
  def index
    cities = City.order('created_at DESC');
    render json: {status: 'SUCCESS', data: cities},status: :ok
  end
end
