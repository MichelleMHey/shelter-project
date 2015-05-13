class StaticController < ApplicationController
  before_action :authenticate_user!, except: [ :home ]

  def home
    @featured_animals = Animal.featured_animals
  end
end