require('pry')

class Bear

attr_accessor :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end


def fishes_for_fish(river)
  @stomach.push(river.loose_fish())
  return river.fish_population
  return @stomach.count
end

def bear_food_count
  return @stomach.count
end


def noise()
  return "Squeek"
end

# A bear could have a roar method


end
