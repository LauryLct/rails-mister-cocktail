class DosesController < ApplicationController
  def new

    @cocktails = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.save
  end

  private

  def dose_params
    params.require(:dose).permit(:content)
  end
end
