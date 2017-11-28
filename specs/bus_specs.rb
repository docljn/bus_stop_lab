require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(22, [], "Oceans Terminal")
    @person1 = Person.new("Robert", 32)
  end

  def test_drive
    assert_equal("Brum Brum", @bus.drive())
  end

  def test_passengers_on_bus
    assert_equal(0, @bus.passengers_on_bus())
  end

  def test_pick_up
    @bus.pick_up(@person1)
    assert_equal(1, @bus.passengers_on_bus)
  end

end
