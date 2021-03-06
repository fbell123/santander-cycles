require 'docking_station'

describe DockingStation do

		describe 'responds to release_bike'
   	it {is_expected.to respond_to :release_bike}

		describe 'responds to docks_bike'
		it {is_expected.to respond_to :dock}

		describe 'docks a bike'
		it {is_expected.to respond_to(:dock).with(1).argument}

		describe 'no bikes available error message'
		it {expect {subject.release_bike}.to raise_error("No bikes available")}

		describe 'dock is full'
		bike = double(:bike)
		station = DockingStation.new
		station.dock(bike)
		it {expect {station.dock(double(:bike))}.to raise_error("Dock is full") if @bikes}

		describe "Ensure default capacity is 20"
		it {expect(subject.specified_capacity).to eq(20)}

		describe "Dock will not release broken bike"
		bike = double(:bike)#(true)
		station = DockingStation.new
		station.dock(bike)
		it {expect {station.release_bike}.to raise_error("Bike is broken")}

end
