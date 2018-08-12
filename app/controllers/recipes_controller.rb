class RecipesController < ApplicationController
  def list
    @recipes = Recipe.all
    render 'recipes/list.json.jbuilder'
  end
end
