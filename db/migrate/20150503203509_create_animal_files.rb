class CreateAnimalFiles < ActiveRecord::Migration
  def change
    create_table :animal_files do |t|
      t.string :scrapbook_image
      t.string :animal_hero_image
      t.integer :animal_id
    end
  end
end
