class RecipesController < ApplicationController
  before_action :set_recipe, only: [:update, :edit, :show, :destroy]

  def index
    @recipes = Recipe.all

    respond_to do |format|
      format.html
      format.json { render json:@recipes.as_json(only: [:name, :created_at, :id]) }
    end
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  def edit
  end

  def update
    @recipe.update(recipe_params)
    redirect_to recipes_path
  end

  def destroy
    @recipe.delete
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :intro, :main_image, :number_people, :minutes, :link)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
