require '~/Makers/Projects/week-1/santander-cycles-2/lib/bike'

class DockingStation

	attr_reader :bike

	def release_bike
			fail "No bikes available" unless @bike
			@bike
	end

	def dock(bike)
			fail "Dock is full" if @bike
			@bike = bike
	end




end
