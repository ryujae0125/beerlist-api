class Api::V1::BeersController < ApplicationController
  def index
    @beer = Beer.all
  end

  def show
    @beer = Beer.find_by(id: params[:id])
  end

  def create
    @beer = Beer.new(
      name: params[:name],
      style: params[:style],
      hop: params[:hop],
      yeast: params[:yeast],
      malts: params[:malts],
      ibu: params[:ibu],
      alcohol: params[:alcohol]
    )
    if beer.save
      render json: {message: "Successfully added"}
    else
      render json: {errors: beer.errors.full_messages}, status: 422
    end
  end

  def destroy
    @beer = Beer.find_by(id: params[:id])
    @beer.destroy
    redirect_to '/beers'
  end
end
