require('pry')

class River

attr_accessor :fish_population

  def initialize(name)
    @name = name
    @fish_population = []
  end


  def add_fish(fish)
    @fish_population.push(fish)
  end

  def loose_fish
    @fish_population.pop
  end

  def fish_count
    @fish_population.count
  end

end
