class CreateJoinTableFragmentsBowTechniques < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :bow_techniques do |t|
      # t.index [:musical_fragment_id, :bow_technique_id]
      # t.index [:bow_technique_id, :musical_fragment_id]
    end

  end
end
