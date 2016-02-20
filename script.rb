class Script
	attr_reader :number

	def initialize(number)
		@number = number
	end

	def twice
		@number * 2
	end
end
