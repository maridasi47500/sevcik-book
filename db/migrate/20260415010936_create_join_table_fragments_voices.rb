class CreateJoinTableFragmentsVoices < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :voices do |t|
      # t.index [:musical_fragment_id, :voice_id]
      # t.index [:voice_id, :musical_fragment_id]
    end
  end
end
