class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :animal_id
      t.integer :user_id
      t.text :body
      t.boolean :private
    end
  end
end
