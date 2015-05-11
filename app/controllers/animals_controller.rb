class AnimalsController < ApplicationController
  
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :breed, :age, :location, :owner_id, :description, :profile_image, :feature)
  end
end
