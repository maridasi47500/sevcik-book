class CreateLeftHandTechniques < ActiveRecord::Migration[8.0]
  def change
    create_table :left_hand_techniques do |t|
      t.string :name

      t.timestamps
    end
  end
end
