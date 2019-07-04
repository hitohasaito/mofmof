class ChangeColumnNull < ActiveRecord::Migration[5.0]
  def change
    change_column :estates, :name, :string ,null:false
    change_column :estates, :fee, :integer ,null:false
    change_column :estates, :adress, :text ,null:false
    change_column :estates, :age, :integer ,null:false
    change_column :estates, :note, :text ,null:false
    change_column :stations, :station1, :integer ,null:false
    change_column :stations, :line1, :integer ,null:false
    change_column :stations, :walking_minutes1, :text ,null:false
    change_column :stations, :station2, :integer ,null:false
    change_column :stations, :line2, :integer ,null:false
    change_column :stations, :walking_minutes2, :integer ,null:false
  end
end
