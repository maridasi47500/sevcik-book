class CreateSourceTitles < ActiveRecord::Migration[8.0]
  def change
    create_table :source_titles do |t|
      t.string :musical_instrument_id
      t.string :composer
      t.string :id_opus
      t.string :number

      t.timestamps
    end
  end
end
