class RecipesController < ApplicationController
  def index
    @recipes = Recipe.search(params[:search])
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

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to root_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :recipe_type, :cuisine_id, :difficulty,
                                   :cook_time, :ingredients, :cook_method, :photo,
                                   :search)
  end
end
