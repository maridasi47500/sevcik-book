class CreateJoinTableFragmentsModificateurs < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :modificateurs do |t|
      # t.index [:musical_fragment_id, :modificateur_id]
      # t.index [:modificateur_id, :musical_fragment_id]
    end
  end
end
