class Bus

  attr_reader :bus_number, :destination

  def initialize(bus_number, passengers, destination)
    @bus_number = bus_number
    @passengers = passengers
    @destination = destination
  end

  def drive
    return "Brum Brum"
  end

  def passengers_on_bus()
    return @passengers.length
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger) 
  end


end
