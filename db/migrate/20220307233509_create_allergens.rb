class CreateAllergens < ActiveRecord::Migration[6.1]
  # error = uninitialized constant CreateAllergens
  # fix = change from class CreateAllergen to CreateAllergen(s) plural because this table will hold many allergens
  def change
    create_table :allergens do |t|
      t.string :ingredients
      t.belongs_to :meal, foreign_key: true
      t.timestamps
    end
  end
end
