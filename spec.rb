require './script'

RSpec.describe Script do
	it 'correctly multiplies to twice' do
		inst1 = Script.new(90)

		expect(inst1.twice).to eq(180)
	end

	it "string check" do
		s1 = "cool things"
		s1 << " and stuff!"
		expect(s1).to match(/.*things.*stuff.*/)
	end

	describe 'just for learning purposes' do
		describe 'types/classes' do
			before(:each) do
				@inst1 = Script.new(150)
			end

			it '@inst1 instance of Script' do
				expect(@inst1).to be_an_instance_of(Script)
				expect(@inst1).to be_a(Script)
			end

			it '@inst1 instance of Script (aliases for be_a)' do
				expect(@inst1).to be_an(Script)
				expect(@inst1).to be_a_kind_of(Script)
			end
		end

		describe 'truthiness' do
			it 'some of examples' do
				expect(true).to be_truthy
				expect(true).to be true
				expect(nil).to be_falsy
			end
		end

		describe 'yielding' do
			it 'some of examples' do
				expect { |b| [12, 3, 1].each(&b) }.to yield_successive_args(12, 3, 1)
				expect { |b| 19.tap(&b) }.to yield_control
			end
		end

		describe 'expecting errors' do
			it 'go' do
				expect { raise StandardError }.to raise_error(StandardError)
				expect { raise StandardError, 'something wrong' }.to raise_error(StandardError, 'something wrong')
			end
		end
	end
end