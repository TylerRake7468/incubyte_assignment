class StringCalculator
	def add(numbers)
		return 0 if numbers.strip.empty?
		delimiter = /,|\n/

		if numbers.start_with?('//')
			deli_hint, numbers = numbers.split("\n",2)
			custom_delimiter = deli_hint[2..]
			delimiter = Regexp.escape(custom_delimiter)
		end
		numbers.split(/#{delimiter}/).map(&:to_i).sum
	end
end