class BusStop

  attr_reader :name, :queue


  def initialize(name)
    @name = name
    @queue = []
  end

  def num_of_passengers_in_queue()
    return @queue.length
  end

  def arrive(passenger)
    @queue.push(passenger)
  end





end
