class RemoveIsOwnerFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :is_owner, :boolean
  end
end
