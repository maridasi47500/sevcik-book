class CreateMusicalFragments < ActiveRecord::Migration[8.0]
  def change
    create_table :musical_fragments do |t|
      t.string :title
      t.references :source_title, null: false, foreign_key: true
      t.integer :start_measure
      t.integer :end_measure
      t.string :lilypond_id
      t.references :nuance, null: false, foreign_key: true
      t.references :caractere, null: false, foreign_key: true
      t.references :bow_portion, null: false, foreign_key: true
      t.references :bow_location, null: false, foreign_key: true
      t.references :position, null: false, foreign_key: true
      t.references :focus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
