class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
    	t.integer :make_id
    	t.string  :vehicle_name
    	t.string  :model_id
      t.timestamps
    end
  end
end
