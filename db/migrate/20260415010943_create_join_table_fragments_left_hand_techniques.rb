class CreateJoinTableFragmentsLeftHandTechniques < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :left_hand_techniques do |t|
      # t.index [:musical_fragment_id, :left_hand_technique_id]
      # t.index [:left_hand_technique_id, :musical_fragment_id]
    end
  end
end
