class ConsumersController < ApplicationController
  before_filter :authenticate_user!

  def index
    
  end

  def new
    @consumer = Consumer.new
  end

  def create
    @consumer = Consumer.new consumer_params
    if @consumer.save
      redirect_to consumer_path(@consumer)
    else
      render new_consumer_path
    end
  end

  def show
    @consumer = Consumer.find params[:id]
  end

  def edit
    @consumer = Consumer.find params[:id]
  end

  def update
    @consumer = Consumer.new consumer_params
    if @consumer.save
      redirect_to consumer_path(@consumer)
    else
      render new_consumer_path
    end
  end

  private 

  def consumer_params
    params.require(:consumer).permit(:name, :username, :zip_code, :phone, :consumer_image, :description, :user_id)
  end
end
