require 'minitest/autorun'
require './lib/land'
require './lib/player'
require './lib/station'

class TestPlayer < MiniTest::Unit::TestCase



	def test_can_player_buy_land

		player = Player.new("ruben", 100)
		assert_equal 0, player.view_lands.count #checking @lands array is empty

		land1 = Land.new("Brussels", 1000, 50) #instantiation of the land class with the right arguments
		player.buy_land(land1) #call the buy land method on the player object with the land1 argument

		assert_equal 1, player.view_lands.count #now checking that @land array is NOT empty and got 1 item in it

	end

	def test_pays_rent
		player = Player.new('Ruben', 10)
	    player.pay_rent(7)
		assert_equal(3, player.check_balance)
	end

	def test_pays_rent
			player = Player.new('Ruben', 10)
		    player.pay_rent(7)
			assert_equal(3, player.check_balance)
		end


end