class CreateBowArticulations < ActiveRecord::Migration[8.0]
  def change
    create_table :bow_articulations do |t|
      t.string :name

      t.timestamps
    end
  end
end
