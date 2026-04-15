class CreatePieceTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :piece_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
