require 'rspec'
require_relative '../lib/princess'

describe Princess do
  context "can initialize with proper data" do
    it "returns the grid" do

    princess = Princess.new(3,["-p-", "m--", "---"])

    expect(princess.grid).to eq(["-p-", "m--", "---"])
    end
  end
end
