class IngredientsController < ApplicationController

  def create
    @ingredient = Ingredient.find_or_create_by(ingredient_params)
    if @ingredient.valid?
      @ingredient.save
    else
      puts @ingredient.errors.messages
    end
    redirect_to recipe_path(@ingredient.recipe)
  end
  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :recipe_id)
  end
end
