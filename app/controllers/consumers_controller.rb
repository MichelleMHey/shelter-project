class ConsumersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_consumer, only: [:edit, :update, :create]

  private 

  def set_consumer
    @consumer = current_user.consumer
    if @consumer.nil?
      redirect_to new_consumer_path
      false
    end
  end

  def consumer_params
    params.require(:consumer).permit(:name, :username, :zip_code, :phone, :consumer_image, :description, :user_id)
  end
end
