require 'rspec'
require_relative '../lib/princess'

describe "Princess" do
    it "initializes with the grid" do

    princess = Princess.new(3,["-p-", "m--", "---"])

    expect(princess.grid).to eq(["-p-", "m--", "---"])
    end

  it "can initialize with locations for Princess and Mario" do
    princess = Princess.new(3,["-p-", "m--", "---"])

    expect(princess.p_location).to eq([0,1])
    expect(princess.m_location).to eq([1,0])
  end

  it "can find the number of moves from Mario to Princess" do
    princess = Princess.new(3,["-p-", "m--", "---"])

    expect(princess.moves_to_save_princess).to eq([1,-1])
  end

  it  "can find the number of moves from Mario to Princess with different locations" do
    princess = Princess.new(3,["--m", "---", "-p-"])

    expect(princess.moves_to_save_princess).to eq([-2,1])
  end

  it "can return steps for saving the Princess" do
    princess = Princess.new(3,["-p-", "m--", "---"])

    expect(princess.create_steps_to_princess).to eq(["UP\n", "RIGHT\n"])
  end

  it "can return steps with different locations and a bigger grid" do
    princess = Princess.new(5,["---", "-m-", "---", "---", "p--"])

    expect(princess.create_steps_to_princess).to eq(["DOWN\n", "DOWN\n", "DOWN\n", "LEFT\n"])
  end
end
