class CreateExpositionUsers < ActiveRecord::Migration
  def change
    create_table :exposition_users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :remember_digest

      t.timestamps null: false

      t.index :email, unique: true
    end
  end
end
