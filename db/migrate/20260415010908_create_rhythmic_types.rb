class CreateRhythmicTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :rhythmic_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
