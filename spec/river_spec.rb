require("minitest/autorun")
require("minitest/rg")

require_relative("../Bear")
require_relative("../Fish")
require_relative("../River")

class TestRiver < MiniTest::Test

  def setup
  #NOTE: This acts as the Arrange part of question setup.

      @bear = Bear.new("Yogi", "Grizzley")
      @fish1 = Fish.new("Steven")
      @fish2 = Fish.new("Sam")
      @fish3 = Fish.new("Mike")

      @river = River.new"Orange"
      #or
      # @river = River.new("Orange", [@fish1, @fish2, @fish2]) NOTE: This must come after fish have been created
    end

    def test_add_fish_to_river
      @river.add_fish(@fish1)
      @river.add_fish(@fish2)
      @river.add_fish(@fish3)
      assert_equal(3, @river.fish_count)
    end

    def test_loose_fish_from_river
      @river.add_fish(@fish1)
      @river.add_fish(@fish2)
      @river.add_fish(@fish3)
      @river.loose_fish
      assert_equal(2, @river.fish_count)
    end


    def test_river_fish_count
      @river.add_fish(@fish1)
      @river.add_fish(@fish2)
      @river.loose_fish
      @river.fish_count
      assert_equal(1, @river.fish_population.count)
    end

end
