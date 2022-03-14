class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :nutrition_level
      t.string :diet_type
      t.string :ingredients
      t.references :users
      t.timestamps
    end
  end
end
