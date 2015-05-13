class Animal < ActiveRecord::Base
  mount_uploader :profile_image, ProfileImageUploader

  belongs_to :owner
  has_many :questions
  has_many :animal_files

  scope :featured, -> { where(feature: true) }

  def self.featured_animals
    featured.last(8)
  end
end