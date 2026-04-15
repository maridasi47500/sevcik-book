class CreateCaracteres < ActiveRecord::Migration[8.0]
  def change
    create_table :caracteres do |t|
      t.string :name

      t.timestamps
    end
  end
end
