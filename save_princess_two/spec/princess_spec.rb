require 'rspec'
require_relative '../lib/princess'

describe "Princess" do
  it "initializes with grid" do
    princess = Princess.new(3,1,2,["---", "-m-", "--p"])

    expect(princess.grid).to eq(["---", "-m-", "--p"])
    expect(princess.m_location).to eq([1,2])
  end

  it "can find the location of the Princess" do
    princess = Princess.new(3,1,2,["---", "-m-", "--p"])

    expect(princess.p_location).to eq([2,2])
  end
end
