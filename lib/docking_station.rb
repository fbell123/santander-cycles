require './lib/bike'


class DockingStation

	def initialize
		@bikes = []
	end

	attr_reader :bikes

	def release_bike
			fail "No bikes available" unless @bikes.count >= 1
			@bikes
	end

	def dock(bike)
			fail "Dock is full" if @bikes.count == 20
			@bikes << bike
	end




end
