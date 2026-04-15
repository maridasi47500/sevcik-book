class CreateJoinTableFragmentsRhythmicTypes < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :rhythmic_types do |t|
      # t.index [:musical_fragment_id, :rhythmic_type_id]
      # t.index [:rhythmic_type_id, :musical_fragment_id]
    end
  end
end
