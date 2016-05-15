class CreateBears < ActiveRecord::Migration
  def change
    create_table :bears do |t|
      t.string :bear_type
      t.integer :number_left
      t.string :favorite_foods
      t.string :known_locations

      t.timestamps null: false
    end
  end
end
