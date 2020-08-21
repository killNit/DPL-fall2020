#creating a class to later assign food items and prices
class Food
	attr_accessor :name, :price #, :quantity, #:nutrition

	def initialize (name, price)
		@name = name
		@price = price
	end
end

class Cafateria

	def initialize
		@cafateria_entrees = [ Food.new (Pizza, :price 8.99), Food.new(Ribs, :price 12.99) ]
		@cafateria_sides =  [ Food.new(Potatoes, :price 3.00), Food.new(Fruit, :price 4.00) ]
		@order = []
		@order_total = []
		entree_menu
	end

	def entree_number
		@main_.each_with_index do |dish, i|
			puts "#{i + 1}) #{dish.name} at #{dish.price}"
		end
	end

	def entree_menu
		puts "What entree would you like to order?"
		entree_number
		ordered_entree = gets.to_i -1
			case ordered_entree
			when 1
			puts "Your main entree is #{@main_entree.name}"
			@order_total << @main_entree.price
			@order << ordered_entree.name
			when 2  "Your main entree is #{@main_entree}"
			@order_total << @main_entree.price
			@order << ordered_entree.name
			puts "hello"
			end

		side_menu

	end

		def side_menu_1
			puts "A meal here requires you to order two sides"
			@cafateria_sides.each_with_index do |side, i|
				puts "#{i +1}) #{side.name} at #{side.price}"
		end

		side_choice1 = gets.to_i -1
		case side_choice1
		when 1
			puts "Your side dish is #{@cafateria_sides.name}"
			@order_total << @cafateria_sides[side_choice1.price]
			@order << @cafateria_sides[side_choice1.name]
		when 2
			puts "Your side dish is #{@cafateria_sides.name}"
			@order_total << @cafateria_sides[side_choice1.price]
			@order << @cafateria_sides[side_choice1.name]
		end

		def side_menu_2
			puts "A meal here requires you to order two sides"
			@cafateria_sides.each_with_index do |side, i|
				puts "#{i +1}) #{side.name} at #{side.price}"
		end

		side_choice2 = gets.to_i -1
		case side_choice2
		when 1
			puts "Your side dish is #{@cafateria_sides.name}"
			@order_total << @cafateria_sides[side_choice2.price]
			@order << @cafateria_sides[side_choice2.name]
		when 2
			puts "Your side dish is #{@cafateria_sides.name}"
			@order_total << @cafateria_sides[side_choice2.price]
			@order << @cafateria_sides[side_choice2.name]
		end
	checkout
end

	def checkout 
		puts "You ordered #{@order}"
		@order_total.sum 
		puts "Your total is #{@order_total.sum}"
	end

Cafateria.new