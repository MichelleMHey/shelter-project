class Owners::AnimalsController < Owners::BaseController
  skip_before_filter :authenticate_user!, only: [:index, :show]

  def index
    @animals = current_user.owner.animals
  end

  def show
    @animal = Animal.find params[:id]
    @animal_files = @animal.animal_files
    render "owners/animals/show"
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new animal_params
    @animal.owner = current_user.owner
    upload_animal_files @animal, params[:scrapbook_image]
    if @animal.save
      respond_with @animal
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :breed, :age, :location, :owner_id, :description, :profile_image, :feature)
  end

  def upload_animal_files(animal, files)
    files ||= []
    files.each do |file|
      animal.scrapbook_image.create(scrapbook_image: file)
    end
  end
end
