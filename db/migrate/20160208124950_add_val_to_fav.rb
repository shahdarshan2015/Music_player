class AddValToFav < ActiveRecord::Migration
  def change
    add_column :favs, :val, :boolean
  end
end
