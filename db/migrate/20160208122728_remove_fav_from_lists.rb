class RemoveFavFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :fav, :boolean
  end
end
