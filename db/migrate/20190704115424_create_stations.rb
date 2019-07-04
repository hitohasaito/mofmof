class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :station1
      t.string :line1
      t.integer :walking_minutes1
      t.string :station2
      t.string :line2
      t.integer :walking_minutes2

      t.timestamps
    end
  end
end
