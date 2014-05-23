class CoinChanger
	def convert(n)
		result = ""

		coins = [[25, "Q"], [10, "D"], [5, "N"], [1,"P"]]

		coins.each do |cents, coin|

			while n >= cents
				result << coin
				n -= cents
			end
			
		end

	result
	end
end
