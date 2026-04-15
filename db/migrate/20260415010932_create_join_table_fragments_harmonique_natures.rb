class CreateJoinTableFragmentsHarmoniqueNatures < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :harmonique_natures do |t|
      # t.index [:musical_fragment_id, :harmonique_nature_id]
      # t.index [:harmonique_nature_id, :musical_fragment_id]
    end
  end
end
