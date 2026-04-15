class CreateModificateurs < ActiveRecord::Migration[8.0]
  def change
    create_table :modificateurs do |t|
      t.string :name

      t.timestamps
    end
  end
end
