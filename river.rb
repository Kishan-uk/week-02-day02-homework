class River

  attr_reader(:name, :river)

  def initialize(river_name)
    @name = river_name
    @fish_in_river = []
  end

  def river_name()
    return @name
  end

  def add_fish_to_river(add_to_river)
    @fish_in_river.push add_to_river
  end

  def num_of_fish()
    return @fish_in_river.count()
  end

  #Not working
  def remove_fish(fish)
    index = @fish_in_river.index(fish)
    @fish_in_river.slice!(index, 1)
  end

end
