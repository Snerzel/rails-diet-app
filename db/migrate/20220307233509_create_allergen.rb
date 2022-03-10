class CreateAllergen < ActiveRecord::Migration[6.1]
  def change
    create_table :allergen do |t|
      t.string :ingredients

      t.timestamps
    end
  end
end
