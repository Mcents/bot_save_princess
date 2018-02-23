require 'rspec'
require_relative '../lib/princess'

describe "Princess" do
  context "can initialize with proper data" do
    it "returns the grid" do

    princess = Princess.new(3,["-p-", "m--", "---"])

    expect(princess.grid).to eq(["-p-", "m--", "---"])
    end
  end

  it "can initialize with locations for Princess and Mario" do
    princess = Princess.new(3,["-p-", "m--", "---"])

    expect(princess.p_location).to eq([0,2])
    expect(princess.m_location).to eq([1,1])
  end
end
