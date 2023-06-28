class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, ecxept: [:created_at, :updated_at], methods: [:summary]

  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    if cheese 
      render json: cheese
    else
      render json: {error: "cheese not found" }, status: :not-found
    end
  end

end
