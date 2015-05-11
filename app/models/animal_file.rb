class AnimalFile < ActiveRecord::Base
  mount_uploader :scrapbook_image, ScrapbookImageUploader
  mount_uploader :animal_hero_image, AnimalHeroImageUploader
  
  belongs_to :animal
end