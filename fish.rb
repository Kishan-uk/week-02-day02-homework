class Fish

  attr_reader(:name)

  def initialize(fish_name)
    @name = fish_name
  end

  def fish_name()
    return @name
  end
end
