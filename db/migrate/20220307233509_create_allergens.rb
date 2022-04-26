class CreateAllergens < ActiveRecord::Migration[6.1]
  def change
    create_table :allergens do |t|
      t.string :ingredients
      t.belongs_to :meal, foreign_key: true
      t.timestamps
    end
  end
end
