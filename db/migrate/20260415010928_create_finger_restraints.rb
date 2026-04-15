class CreateFingerRestraints < ActiveRecord::Migration[8.0]
  def change
    create_table :finger_restraints do |t|
      t.string :name

      t.timestamps
    end
  end
end
