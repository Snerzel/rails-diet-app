class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.integer :age
      t.string :weight
      t.string :gender
      t.string :health
      t.string :diet_type
      t.string :restrictions
      t.belongs_to :pro, foreign_key: true

      t.timestamps
    end
  end
end
