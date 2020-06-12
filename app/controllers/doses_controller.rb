class DosesController < ApplicationController

  # def new
  #   @cocktail_id = Cocktail.find(params[:cocktail_id])
  #   @dose = Dose.new
  # end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(strong_params)

    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/new'
    end
  end

  # destroy ...

  def strong_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
