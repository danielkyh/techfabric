require 'rails_helper'
require 'pry'


describe Types::MakeType do 
   context 'Contain the following fields' do 
      it "should contain make_id" do 
        described_class.fields.keys.include?(:make_id)
      end

      it "should contain make_name" do 
        described_class.fields.keys.include?(:make_name)
      end

      it "should contain vehicles" do 
        described_class.fields.keys.include?(:vehicles)
      end

      it "should contain vehicle_types" do 
        described_class.fields.keys.include?(:vehicle_types)
      end
   end 
end