class CreateMakes < ActiveRecord::Migration[5.2]
  def change
    create_table :makes do |t|
    	t.integer :make_id
    	t.string 	:make_name
      t.timestamps
    end
  end
end
