class Owners::AnimalsController < Owners::BaseController
  skip_before_filter :authenticate_user!, only: [:index, :show]

  def index
    @animals = current_user.owner.animals
    render 'owners/animals/index'
  end

  def show
    @animal = Animal.find params[:id]
    render "owners/animals/show"
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new animal_params
    @animal.owner = current_user.owner
    if @animal.save
      respond_with @animal
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :breed, :age, :location, :owner_id, :description, :profile_image, :feature)
  end
end
