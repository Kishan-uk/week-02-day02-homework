require("minitest/autorun")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test
  def setup()
    @bear = Bear.new("Baloo")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Nessie")
    @fish3 = Fish.new("Jaws")
  end

  def test_add_to_belly()
    @bear.eat_fish(@fish1)
    assert_equal(1, @bear.belly_count())
  end

  def test_remove_fish_from_river()
    @river = River.new("Water of Leith")
    @bear.eat_fish(@fish1)
    @river.remove_fish(@fish1)
    assert_equal(1, @bear.belly_count())
    assert_equal(2, @river.num_of_fish())
  end

end
