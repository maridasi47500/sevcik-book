class CreateJoinTableFragmentsActions < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :actions do |t|
      # t.index [:musical_fragment_id, :action_id]
      # t.index [:action_id, :musical_fragment_id]
    end
  end
end
