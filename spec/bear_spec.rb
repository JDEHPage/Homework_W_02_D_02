require("minitest/autorun")
require("minitest/rg")

require_relative("../Bear")
require_relative("../Fish")
require_relative("../River")

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzley")

    @fish1 = Fish.new("Steven")
    @fish2 = Fish.new("Sam")
    @fish3 = Fish.new("Mike")

    @river = River.new"Orange"
    #or
    # @river = River.new("Orange", [@fish1, @fish2, @fish2]) NOTE: This must come after fish have been created
  end

  def test_bear_catches_and_eats_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @bear.fishes_for_fish(@river)
    assert_equal(2, @river.fish_population.count)
    assert_equal(1, @bear.stomach.count)
  end

  #  def test_bear_cant_take_fish_from_empty_river
  #    #arrange
  #    river = River.new("Amazon") #("Amazon", [])
  #
  #    #act
  #    @bear.fishes_for_fish(empty_river)
  #
  #    #assert
  #   assert_equal(0, empty_river.fish_count)
  #   assert_equal(0, @bear.bear_food_count)
  # end


  def test_bear_food_count
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @bear.fishes_for_fish(@river)
    @bear.bear_food_count
    assert_equal(1, @bear.stomach.count)
  end

  def test_bear_noise()
    @bear.noise
    assert_equal("Squeek", @bear.noise)
  end


end
