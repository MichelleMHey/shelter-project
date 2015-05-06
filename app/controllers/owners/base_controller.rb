class Owners::BaseController < ApplicationController
  before_action :authenticate_owner!
  before_action :set_current_owner

  respond_to :html

  private

    def authenticate_owner!
      authenticate_user!
      raise unless current_user.is_owner?
    end

    def set_current_owner
      current_owner = current_user.owner
    end

end
