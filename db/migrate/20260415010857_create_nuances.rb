class CreateNuances < ActiveRecord::Migration[8.0]
  def change
    create_table :nuances do |t|
      t.string :name

      t.timestamps
    end
  end
end
