require('pry')

class Bear

  attr_accessor :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end


  def fishes_for_fish(river)
    if !river.fish_population.empty? #NOTE: "!" means "is/does not" (E.g. So - if river "is not" empty)
      return @stomach.push(river.loose_fish())
    end
  end

  # or
  # def fishes_for_fish(river)
  #  @stomach << river, loose_fish()
  # end

  def bear_food_count
    return @stomach.count
  end


  def noise()
    return "Squeek"
  end

  # A bear could have a roar method


end
