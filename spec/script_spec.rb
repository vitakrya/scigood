require 'spec_helper'

RSpec.describe Script do
  it 'correctly multiplies to twice' do
    inst1 = Script.new(9)
    expect(inst1.twice).to eq(18)
  end

  it 'multiple neg numbers' do
    inst1 = Script.new(-65)
    expect(inst1.twice).to eq(-130)
  end

  it 'multiple zero' do
    inst = Script.new(0)
    expect(inst.twice).to eq(0)
  end

  it "string check" do
    s1 = "actually cool things"
    s1 << " and stuff!"
    expect(s1).to match(/.*things.*stuff.*/)
  end
end
