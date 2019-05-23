class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = cocktail.all
  end

  def show
    @cocktail = Cocktail.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
  end

  def create
    @cocktail = Cocktail.new(pet_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def update
  end

  def destroy

  end

  private

  def set_cocktail
    @cocktail = cocktail.find(params[:id])
  end
end
