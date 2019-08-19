class CreateAlpacas < ActiveRecord::Migration[5.2]
  def change
    create_table :alpacas do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :color
      t.integer :craziness_level
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
