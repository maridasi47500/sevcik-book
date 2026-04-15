class CreateBowPortions < ActiveRecord::Migration[8.0]
  def change
    create_table :bow_portions do |t|
      t.string :name

      t.timestamps
    end
  end
end
