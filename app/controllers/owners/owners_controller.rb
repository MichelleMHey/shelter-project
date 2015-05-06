class Owners::OwnersController < Owners::BaseController
  before_action :set_owner, only: [:show, :edit, :update]
  respond_to :html, :xml, :json

  def index
    
  end

  def new
    @owner = current_user.build_owner
  end

  def create
    @owner = current_user.create_owner owner_params
    if @owner.save
      redirect_to owners_owner_path(@owner)
    else
      render_new_owner
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

  def set_owner
    @owner = current_user.owner
    if @owner.nil?
      redirect_to new_owners_owner_path
      false
    end
  end

  def owner_params
    params.require(:owner).permit(:name, :phone, :address, :second_address, :city, :state, :zip, :profile_image, :website, :user_id, :hero_image, :email, :facebook_url, :twitter_url, :instagram_url)
  end
end