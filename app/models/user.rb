class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  has_one :consumer
  has_one :owner

  def owner?
    owner.any?
  end

  def consumer?
    !owner?
  end

  private
  
end