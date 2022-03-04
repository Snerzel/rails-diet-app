class CreatePros < ActiveRecord::Migration[6.1]
  def change
    create_table :pros do |t|
      t.string :name
      t.string :email
      t.password_digest :password

      t.timestamps
    end
  end
end
