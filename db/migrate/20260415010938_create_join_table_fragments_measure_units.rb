class CreateJoinTableFragmentsMeasureUnits < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musical_fragments, :measure_units do |t|
      # t.index [:musical_fragment_id, :measure_unit_id]
      # t.index [:measure_unit_id, :musical_fragment_id]
    end
  end
end
