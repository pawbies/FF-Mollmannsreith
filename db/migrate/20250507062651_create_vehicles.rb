class CreateVehicles < ActiveRecord::Migration[8.0]
  def change
    create_table :vehicles do |t|
      t.string :name, null: false, limit: 50

      t.timestamps
    end
    add_index :vehicles, :name, unique: true
  end
end
