class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :second_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :profile_image
      t.string :website
      t.integer :user_id
      t.string :hero_image
      t.string :email
      t.string :facebook_url
      t.string :twitter_url
      t.string :instagram_url
    end
  end
end
