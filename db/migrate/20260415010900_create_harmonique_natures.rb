class CreateHarmoniqueNatures < ActiveRecord::Migration[8.0]
  def change
    create_table :harmonique_natures do |t|
      t.string :name

      t.timestamps
    end
  end
end
