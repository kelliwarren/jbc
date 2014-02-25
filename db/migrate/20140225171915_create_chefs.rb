class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :show
      t.string :specialty
      t.string :avatar

      t.timestamps
    end
  end
end
