class CreateJoinTableFragmentsIntervalles < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :intervalles do |t|
      # t.index [:musical_fragment_id, :intervalle_id]
      # t.index [:intervalle_id, :musical_fragment_id]
    end
  end
end
