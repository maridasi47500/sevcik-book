class CreateBowPreciseLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :bow_precise_locations do |t|
      t.string :name

      t.timestamps
    end
  end
end
