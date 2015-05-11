class Owner < ActiveRecord::Base
  mount_uploader :hero_image, HeroImageUploader
  mount_uploader :profile_image, ProfileImageUploader
  
  has_many :animals
  belongs_to :user
end