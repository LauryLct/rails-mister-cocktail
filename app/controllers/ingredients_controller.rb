class IngredientsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @ingredients = ingredient.all
  end

  def show
    @ingredient = Ingredient.new
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
  end

  def create
    # @ingredient = Ingredient.new(pet_params)
    # @ingredient.save
    # redirect_to ingredient_path(@ingredient)
  end

  def update
  end

  def destroy

  end

  private

  def set_ingredient
    @ingredient = ingredient.find(params[:id])
  end
end
