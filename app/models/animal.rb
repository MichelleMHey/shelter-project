class Animal < ActiveRecord::Base
  belongs_to :owner
  has_many :questions
  has_many :animal_files
end