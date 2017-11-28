require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")

class TestBusStop < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Usher Hall")
  end


  def test_bus_stop_name
    assert_equal("Usher Hall", @bus_stop.name) 
  end

end
