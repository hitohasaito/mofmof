class AddStationRefToEstates < ActiveRecord::Migration[5.0]
  def change
    add_reference :estates, :station, foreign_key: true
  end
end
