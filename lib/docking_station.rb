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
		if @bikes.count == 20
			true
		else
			false
		end
	end

	def empty?
		if @bikes.count == 0
			true
		else
			false
		end
	end


end
