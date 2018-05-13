require 'rails_helper'
require 'pry'

describe Types::SortableVehicleDetailColumnType do 
  context 'Contain the following sortable columns' do 
    it "should contain id" do 
      described_class.values.keys.include?(:id)
    end

    it "should contain make_id" do 
      described_class.values.keys.include?(:make_id)
    end

    it "should contain vehicle_name" do 
      described_class.values.keys.include?(:vehicle_name)
    end

    it "should contain model_id" do 
      described_class.values.keys.include?(:model_id)
    end
  end 
end