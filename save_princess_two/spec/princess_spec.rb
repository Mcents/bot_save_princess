require 'rspec'
require_relative '../lib/princess'

describe "Princess" do
  it "initializes with grid" do
    princess = Princess.new(3,1,2,["---", "-m-", "--p"])

    expect(princess.grid).to eq(["---", "-m-", "--p"])
  end
end
