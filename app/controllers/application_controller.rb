class ApplicationController < ActionController::Base
  before_filter :authenticate_user_from_token!

  protect_from_forgery with: :exception

  private

  def authenticate_user_from_token!
    user_token = params[:user_token].presence
    user = user_token && User.find_by_authentication_token(user_token.to_s)

    if user
      sign_in user, store: false
    end
  end

  def validate_owner
    if current_user.is_owner?
      return true
    else
      head :forbidden
    end
  end
end
