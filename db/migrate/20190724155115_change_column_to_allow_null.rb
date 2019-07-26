class ChangeColumnToAllowNull < ActiveRecord::Migration[5.0]
  def up
      change_column :stations, :station2,:string, null: true
      change_column :stations, :line2,:string, null: true
      change_column :stations, :walking_minutes2,:integer, null: true
      change_column :estates, :note, :text, null: true
    end

    def down
      change_column :stations, :station2,:string, null: false
      change_column :stations, :line2,:string, null: false
      change_column :stations, :walking_minutes2,:integer, null: false
      change_column :estates, :note, :text, null: true
    end
end
