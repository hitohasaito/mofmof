class RemoveRefStationOnEstate < ActiveRecord::Migration[5.0]
  def change
    remove_reference :estates, :station, index: true
    remove_foreign_key :estates, :station
  end
end
