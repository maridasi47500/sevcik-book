class CreateMystrings < ActiveRecord::Migration[8.0]
  def change
    create_table :mystrings do |t|
      t.string :name

      t.timestamps
    end
  end
end
