require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")
require_relative("../person")

class TestBusStop < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Usher Hall")
    @person1 = Person.new("Robert", 32)
  end


  def test_bus_stop_name
    assert_equal("Usher Hall", @bus_stop.name)
  end

  def test_bus_stop_queue
    assert_equal(0, @bus_stop.queue.length)
  end

  def test_arrive
    @bus_stop.arrive(@person1)
    assert_equal(1, @bus_stop.num_of_passengers_in_queue)
  end

  def test_bus_stop_queue_to_be_emptied
    @bus_stop.arrive(@person1)
    @bus_stop.empty()
    assert_equal(0, @bus_stop.queue.length)
  end


end
