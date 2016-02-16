class Api::V1::ProportionsController < ApplicationController
  def create
    proportion = Proportion.create_from_ember(proportion_params)
    render json: proportion
  end

  def show
    render json: Proportion.find(params[:id])
  end

  private
  def proportion_params
    params.require(:proportion).permit(:drink_id, :amount, :ingredient)
  end
end
