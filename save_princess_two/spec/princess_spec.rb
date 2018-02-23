require 'rspec'
require_relative '../lib/princess'

describe "Princess" do
  it "initializes with grid" do
    princess = Princess.new(3,1,2,["---", "--m", "--p"])

    expect(princess.grid).to eq(["---", "--m", "--p"])
    expect(princess.m_location).to eq([1,2])
  end

  it "can find the location of the Princess" do
    princess = Princess.new(3,1,2,["---", "-m-", "--p"])

    expect(princess.p_location).to eq([2,2])
  end

  it "can find the number of moves from Mario to Princess" do
    princess = Princess.new(3,1,1,["---", "-m-", "--p"])

    expect(princess.moves_to_save_princess).to eq([-1,-1])
  end

  it "can return the first step for saving the Princess" do
    princess = Princess.new(3,1,2,["---", "-m-", "p--"])

    expect(princess.create_first_step_to_princess).to eq("DOWN\n")
  end

  it "can return the first step on the same row" do
    princess = Princess.new(3,1,1,["---", "m-p", "---"])

    expect(princess.create_first_step_to_princess).to eq("RIGHT\n")
  end

  it "can return the first step if Princess is Above Mario" do
    princess = Princess.new(3,1,1,["p--", "m--", "---"])

    expect(princess.create_first_step_to_princess).to eq("UP\n")
  end

  it "can return steps with different locations and a bigger grid" do
    princess = Princess.new(5,2,1,["---", "---", "-m-", "---", "p--"])

    expect(princess.create_first_step_to_princess).to eq("DOWN\n")
  end
end
