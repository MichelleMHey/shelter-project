class RegistrationsController < Devise::RegistrationsController
  skip_before_filter :require_no_authentication

  def create
    super do |user|
      #if user.persisted?
       # user.update_attribute(:is_owner, true)
       # user.owner.create
      #else
        flash.now[:alert] = user.errors.full_messages.to_sentence
      #end
    end
  end

  private

  def update_resource(resource, params)
    if params[:password].blank?
      resource.update_without_password(params)
    else
      resource.update_with_password(params)
    end
  end

  def after_sign_up_path_for(resource)
    root_path
    # if params[:radio_button] == 'author'
    #    new_publishers_author_path
    # else
    #   edit_owners_owner_path
    # end
  end

  def after_update_path_for(resource)
    edit_registration_path(resource)
  end
end
