class CreateJoinTableFragmentsTypeAccords < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :type_accords do |t|
      # t.index [:musical_fragment_id, :type_accord_id]
      # t.index [:type_accord_id, :musical_fragment_id]
    end
  end
end
