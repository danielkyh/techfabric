require 'rails_helper'
require 'pry'

describe Resolvers::CreateMake do 
  context 'Contain the following sortable columns' do 
    it "should create make" do 
      options = {make_id: 22, make_name: 'VW'}
      expect(described_class.new.call(nil, options, nil)).to eq(Make.last)
    end
  end 
end