class ChangeDataStations < ActiveRecord::Migration[5.0]
  def change
    change_column :stations,:station1,:string
    change_column :stations,:line1,:string
    change_column :stations,:station2,:string
    change_column :stations,:line2,:string
  end
end
