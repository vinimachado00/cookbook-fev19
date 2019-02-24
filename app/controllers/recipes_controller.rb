class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @cuisines = Cuisine.all
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  def edit
    @cuisines = Cuisine.all
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :recipe_type, :cuisine_id, :difficulty,
                                   :cook_time, :ingredients, :cook_method)
  end
end
