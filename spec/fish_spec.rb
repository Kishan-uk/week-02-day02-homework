require("minitest/autorun")
require_relative("../fish")

class FishTest < MiniTest::Test
  def setup()
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Nessie")
    @fish3 = Fish.new("Jaws")
  end

  def test_fish_name()
    name = @fish1.name()
    assert_equal("Nemo", name)
  end
end
