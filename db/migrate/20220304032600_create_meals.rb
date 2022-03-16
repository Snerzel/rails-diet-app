class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :nutrition_level
      t.string :diet_type
      t.string :ingredients
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
