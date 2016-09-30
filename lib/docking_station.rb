require './lib/bike'


class DockingStation

	DEFAULT_CAPACITY = 20

	def initialize(capacity=DEFAULT_CAPACITY)
		@bikes = []
		@specified_capacity = capacity
	end

	attr_reader :bikes, :specified_capacity

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
		@bikes.count >= @specified_capacity ? (true) : (false)
	end

	def empty?
		@bikes.count == 0 ? (true) : (false)
	end

end
