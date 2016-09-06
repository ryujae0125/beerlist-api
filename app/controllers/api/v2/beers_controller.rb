class Api::V2::BeersController < ApplicationController
  def index
    @beer = Beer.all
  end

  def show
    @beer = Beer.find_by(id: params[:id])
  end

  def create
    @beer = Beer.create(
      name: params[:name],
      style: params[:style],
      hop: params[:hop],
      yeast: params[:yeast],
      malts: params[:malts],
      ibu: params[:ibu],
      alcohol: params[:alcohol]
    )
    render 'show'
  end

  def destroy
    @beer = Beer.find_by(id: params[:id])
    @beer.destroy
    redirect_to '/beers'
  end
end
