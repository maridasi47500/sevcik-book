class CreateFingerings < ActiveRecord::Migration[8.0]
  def change
    create_table :fingerings do |t|
      t.string :name

      t.timestamps
    end
  end
end
