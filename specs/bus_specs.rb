require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(22, [], "Oceans Terminal")

  end

  def test_drive
    assert_equal("Brum Brum", @bus.drive())
  end

  def test_passengers_on_bus
    assert_equal(0, @bus.passengers_on_bus())
  end


end
