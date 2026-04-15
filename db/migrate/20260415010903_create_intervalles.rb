class CreateIntervalles < ActiveRecord::Migration[8.0]
  def change
    create_table :intervalles do |t|
      t.string :name

      t.timestamps
    end
  end
end
