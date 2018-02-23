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
    princess.princess_and_mario_location

    expect(princess.p_location).to eq([0,1])
    expect(princess.m_location).to eq([1,0])
  end

  it "can find the number of moves from Mario to Princess" do
    princess = Princess.new(3,["-p-", "m--", "---"])

    expect(princess.moves_to_save_princess).to eq([1,1])
  end
end
