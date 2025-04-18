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

		it "it should return sum of number for two numbers with comma separated" do
			calc = StringCalculator.new
			expect(calc.add("1,5")).to eq(6)
		end

		it "it should return sum of number for all numbers" do
			calc = StringCalculator.new
			expect(calc.add("1,2,3,4,5")).to eq(15)
		end
	end
end