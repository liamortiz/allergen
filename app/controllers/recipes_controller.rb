class RecipesController < ApplicationController
  before_action :set_recipe, :only => [:destroy, :show]
  def index
  end

  def show
  end

  def create
    @recipe = Recipe.new(:name => recipe_params[:name],
      :user_id => recipe_params[:user_id])
    if @recipe.valid?
      @recipe.save
    else
      puts @recipe.errors.messages
    end
    redirect_to user_path(@recipe.user)
  end

  def destroy
    @user = @recipe.user
    @recipe.destroy
    redirect_to user_path(@user)
  end

  private
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :user_id)
  end

end
