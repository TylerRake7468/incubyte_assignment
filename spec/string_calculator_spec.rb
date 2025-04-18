require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
	describe "#add" do
		it "return 0 for empty string" do
			calc = StringCalculator.new
			expect(calc.add("")).to eq(0) 
		end

		it "it should return single number for single number" do
			calc = StringCalculator.new
			expect(calc.add("1")).to eq(1)
		end
	end
end