class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
    @doses = Dose.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(strong_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def strong_params
    params.require(:cocktail).permit(:name)
    # params.require(:cocktail).permit(params[:cocktail][:name], params[:cocktail]["ingredient_ids"][1])

  end


end
