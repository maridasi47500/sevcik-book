class CreateVoices < ActiveRecord::Migration[8.0]
  def change
    create_table :voices do |t|
      t.string :name

      t.timestamps
    end
  end
end
