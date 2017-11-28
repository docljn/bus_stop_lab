require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class TestPerson < MiniTest::Test

  def setup
    @person1 = Person.new("Robert", 32)

  end


end
