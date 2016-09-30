require './lib/bike'


class DockingStation

	def initialize
		@bikes = []
	end

	attr_reader :bikes

	def release_bike
			fail "No bikes available" if empty?
			@bikes
	end

	def dock(bike)
			fail "Dock is full" if full?
			@bikes << bike
	end

private

	def full?
		@bikes.count == 20 ? (true) : (false)
	end

	def empty?
		@bikes.count == 0 ? (true) : (false)
	end


end
