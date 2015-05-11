class Animal < ActiveRecord::Base
  mount_uploader :profile_image, ProfileImageUploader

  belongs_to :owner
  has_many :questions
  has_many :animal_files
end