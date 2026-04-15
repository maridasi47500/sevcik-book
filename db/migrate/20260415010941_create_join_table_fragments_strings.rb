class CreateJoinTableFragmentsStrings < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :mystrings do |t|
      t.index [:musical_fragment_id, :mystring_id]
      t.index [:mystring_id, :musical_fragment_id]
    end
  end
end
