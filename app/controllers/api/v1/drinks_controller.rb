class Api::V1::DrinksController < ApplicationController
  def index
    render({json: Drink.all})
  end

  def show
    render({json: Drink.find(params[:id])})
  end

  def create
    drink = Drink.create(drink_params)
    render json: drink
  end

  def update
    drink = Drink.find(params[:id])
    drink.update(drink_params)
    render json: drink
  end

  def destroy
    drink = Drink.find(params[:id])
    drink.destroy
    render nothing: true
  end

  private
  def drink_params
    params.require(:drink).permit(:name, :description, :instructions, :source)
  end
end
