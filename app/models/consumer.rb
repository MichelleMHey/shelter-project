class Consumer < ActiveRecord::Base
  mount_uploader :consumer_image, ConsumerImageUploader
  
  belongs_to :user
end