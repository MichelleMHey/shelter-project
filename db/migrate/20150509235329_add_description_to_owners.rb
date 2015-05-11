class AddDescriptionToOwners < ActiveRecord::Migration
  def change
  	add_column :owners, :description, :text
  end
end
