require './script'

RSpec.describe Script do
  it 'correctly multiplies to twice' do
    inst1 = Script.new(90)
    expect(inst1.twice).to eq(180)
  end

  it "string check" do
    s1 = "actually cool things"
    s1 << " and stuff!"
    expect(s1).to match(/.*things.*stuff.*/)
  end
end
