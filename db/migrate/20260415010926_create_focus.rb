class CreateFocus < ActiveRecord::Migration[8.0]
  def change
    create_table :focus do |t|
      t.string :name

      t.timestamps
    end
  end
end
