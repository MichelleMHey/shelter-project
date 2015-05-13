class AnimalsController < ApplicationController
  
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def feature
    @animal = Animal.featured_animals
    respond_with @animal
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :breed, :age, :location, :owner_id, :description, :profile_image, :feature)
  end
end
