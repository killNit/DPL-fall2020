class Food
	attr_accessor :name, :price #, :quantity, #:nutrition

	def initialize (name, price)
		@name = name
		@price = price
	end
end

class Entrees < Food
		attr_accessor :addon

		def initialize (name, price, addon)
	end
end

class Sides < Food
end