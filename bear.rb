class Bear

  attr_reader(:name)

  def initialize(bear_name)
    @name = bear_name
    @belly = []
  end

  def bear_name()
    return @name
  end

  def eat_fish(fish)
    @belly.push fish
  end

  def belly_count()
    return @belly.count()
  end
end
