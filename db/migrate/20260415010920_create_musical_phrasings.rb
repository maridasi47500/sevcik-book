class CreateMusicalPhrasings < ActiveRecord::Migration[8.0]
  def change
    create_table :musical_phrasings do |t|
      t.string :name

      t.timestamps
    end
  end
end
