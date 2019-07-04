class CreateEstates < ActiveRecord::Migration[5.0]
  def change
    create_table :estates do |t|
      t.string :name
      t.integer :fee
      t.text :adress
      t.integer :age
      t.text :note

      t.timestamps
    end
  end
end
