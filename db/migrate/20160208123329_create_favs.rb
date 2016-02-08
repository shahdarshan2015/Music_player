class CreateFavs < ActiveRecord::Migration
  def change
    create_table :favs do |t|
    	t.references 
      t.timestamps null: false
    end
  end
end
