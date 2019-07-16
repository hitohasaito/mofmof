class AddEstateRefToStations < ActiveRecord::Migration[5.0]
  def change
    add_reference :stations, :estate, foreign_key: true
  end
end
