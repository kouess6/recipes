class RecipesController < ApplicationController
  include HTTParty
  def index
    base_uri = "http://food2fork.com/api"
    @search = params[:looking_for] || 'chocolate'
    @recipes = Recipe.for(@search)
  end
end
