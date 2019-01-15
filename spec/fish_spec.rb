require("minitest/autorun")
require("minitest/rg")

require_relative("../Bear")
require_relative("../Fish")
require_relative("../River")

class TestFish < MiniTest::Test

  def setup
      @river = River.new"Orange"
      @bear = Bear.new("Yogi", "Grizzley")

      @fish1 = Fish.new("Steven")
      @fish2 = Fish.new("Sam")
      @fish3 = Fish.new("Mike")
    end
    

end
