class Owners::OwnersController < Owners::BaseController

  def index
    
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.create owner_params
    if @owner.save
      redirect_to owners_owner_path(@owner)
    else
      render_new_owners_owner
    end
  end

  def edit
  end

  def update
    if @owner.update owner_params
      redirect_to owner_path
    else
      render edit_owner_path
    end
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :phone, :address, :second_address, :city, :state, :zip, :profile_image, :website, :user_id, :hero_image, :email, :facebook_url, :twitter_url, :instagram_url)
  end
end