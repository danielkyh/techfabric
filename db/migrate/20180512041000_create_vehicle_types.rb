class CreateVehicleTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_types do |t|
    	t.integer :make_id
    	t.integer :vehicle_type_id
    	t.string  :vehicle_type_name
      t.timestamps
    end
  end
end
