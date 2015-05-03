class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :name
      t.string :username
      t.string :zip_code
      t.string :phone
      t.string :consumer_image
      t.text :description
      t.integer :user_id
    end
  end
end
