require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do
	describe '.initialize' do
		it 'records all of the toppings' do
			toppings = [
				Pizza::Topping.new('mushrooms', vegetarian: true),
				Pizza::Topping.new('pepperoni')
			]
			pizza = Pizza::Pie.new(toppings)

			expect(pizza.toppings).to eq(toppings)
		end		
	end

	context 'When no toppings are requested' do
		describe '.initialize' do
			it 'defaults the toppings to cheese only' do
				pizza = Pizza::Pie.new

				expect(pizza.toppings.size).to eq 1
				expect(pizza.toppings.first.name).to eq 'cheese'
			end
		end
	end

end 

describe Pizza::Topping do
	describe '.initialize' do
		it 'Sets the name of the toppings' do
		topping = Pizza::Topping.new('olives')

		expect(topping.name).to eq'olives'
		end

		it "sets whether or not the topping is vegetarian" do
				topping = Pizza::Topping.new 'bell peppers', vegetarian: true

				expect(topping.vegetarian).to eq true
		end
	end
end