class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
    	t.string :name
    	t.string :breed
    	t.string :age
    	t.string :location
    	t.integer :owner_id
    	t.text :description
    	t.string :profile_image
    	t.boolean :feature
    end
  end
end
