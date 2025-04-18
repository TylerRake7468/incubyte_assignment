require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
	describe "#add" do
		let(:calc){ StringCalculator.new }

		it "return 0 for empty string" do
			expect(calc.add("")).to eq(0) 
		end

		it "it should return single number for single number" do
			expect(calc.add("1")).to eq(1)
		end

		it "it should return sum of number for two numbers with comma separated" do
			expect(calc.add("1,5")).to eq(6)
		end

		it "it should return sum of number for all numbers" do
			expect(calc.add("1,2,3,4,5")).to eq(15)
		end

		it "it should handle new lines between numbers " do
			expect(calc.add("1\n2,3")).to eq(6)
		end

		it "it should Support different delimiters in numbers " do
			expect(calc.add("//;\n1;2")).to eq(3)
		end

		it "throw an exception for negative numbers" do
			expect{ calc.add("3,-4,5") }.to raise_error(ArgumentError, "Negative numbers not allowed -4")
		end
	end
end