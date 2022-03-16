class CreateAllergen < ActiveRecord::Migration[6.1]
  def change
    create_table :allergen do |t|
      t.string :ingredients
      t.belongs_to :meal, foreign_key: true
      t.timestamps
    end
  end
end
