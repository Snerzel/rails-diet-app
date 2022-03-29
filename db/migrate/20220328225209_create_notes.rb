class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :note
      t.belongs_to :pro, foreign_key: true
      t.belongs_to :meal, foreign_key: true
      t.timestamps
    end
  end
end
