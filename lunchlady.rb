def lunchlady
	puts "Welcome to the cafateria, What entree would you like?"
	puts cafateria_entrees
	puts
	print "> "
	customer_entree = gets.to_i -1
	@order << customer_entree
	puts "Choose two sides to go with your #{customer_entree}"
	puts "For your first side?"
	puts cafateria_sides
	print "> "
	customer_side1 = gets.to_i -1
	@order << customer_side1
	puts "Thank you! Now choose your second side"
	puts cafateria_sides
	print "> "
	customer_side2 = gets.to_i -1
	@order << customer_side2
	puts "You ordered #{@order}, type'n' if this is wrong (hit enter if it is correct)"
	print "> "
	confirm_order = gets.strip
	confirm_order == "" ? nil : lunchlady
	puts "You ordered #{@order}, and your total is #{@order[:price]} "
	puts "Thanks for choosing the DPL cafateria, goodbye"
	lunchlady
end