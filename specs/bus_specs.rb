require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")

class TestBus < MiniTest::Test

  def setup
    @busroute = Bus.new(22, "Oceans Terminal")

  end


end
