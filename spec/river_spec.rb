require("minitest/autorun")
require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test
  def setup()
    @river = River.new("Water of Leith")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Nessie")
    @fish3 = Fish.new("Jaws")
  end

  def test_river_name()
    name = @river.name()
    assert_equal("Water of Leith", name)
  end

  def test_add_fish_to_river()
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    num_of_fish = @river.num_of_fish()
    assert_equal(3, @river.num_of_fish)
  end
end
