class SessionsController < Devise::SessionsController
  skip_before_filter :verify_authenticity_token

  protected

  def after_sign_in_path_for(resource)
    owners_animals_path
    # if resource.owner?
    #   owners_owner_path
    # else
    #   consumer_path(resource.consumer)
    # end
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

end
