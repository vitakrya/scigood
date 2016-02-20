require './script'

RSpec.describe Script do
	it 'correctly multiplies to twice' do
		inst1 = Script.new(90)

		expect(inst1.twice).to eq(180)
	end
end