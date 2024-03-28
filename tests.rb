require 'minitest/autorun'
require_relative 'refueler'

class TestRefueler < Minitest::Test
  def setup
    @rocket_tank = Refueler.new
  end

  def test_moon
    assert_equal 51898, @rocket_tank.fill(28801, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]])
  end

  def test_mars
    assert_equal 33388, @rocket_tank.fill(14606, [[:launch, 9.807], [:land, 3.711], [:launch, 3.711], [:land, 9.807]])
  end

  def test_passenger
    assert_equal 212161, @rocket_tank.fill(75432, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 3.711], [:launch, 3.711], [:land, 9.807]])
  end
end
