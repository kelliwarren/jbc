class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.datetime :cook_time
      t.text :instructions
      t.string :picture
      t.text :ingredients

      t.timestamps
    end
  end
end
