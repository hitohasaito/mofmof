class RemoveColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :stations, :station2, :string
    remove_column :stations, :line2, :string
    remove_column :stations, :walking_minutes2, :integer
  end
end
