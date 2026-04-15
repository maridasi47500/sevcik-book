class CreateJoinTableFragmentsStrings < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :mystrings do |t|
      # t.index [:musical_fragment_id, :string_id]
      # t.index [:string_id, :musical_fragment_id]
    end
  end
end
