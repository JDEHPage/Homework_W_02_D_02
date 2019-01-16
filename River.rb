require('pry')

class River

attr_accessor :fish_population

  def initialize(name)
  #   or
  # def initialize(name, fish_population)
    @name = name
    @fish_population = []
    # or
    # @fish_population = fish_population
  end


  def add_fish(fish)
    return @fish_population.push(fish)
  end

  def loose_fish
    return @fish_population.pop
  end

  def fish_count
    return @fish_population.count
  end

  # def test_can_get_fish
  #   # act
  #   returned_fish = @river.get_fish()
  #
  #   # assert
  #   assert_equal(@fish3.name, returned_fish.name)
  # end




end
