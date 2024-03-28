require 'minitest/autorun'
require_relative 'spaceship'

class TestRefueler < Minitest::Test

  def test_moon
    spaceship = Spaceship.new(28801, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]])
    assert_equal 51898, spaceship.fill
  end

  def test_mars
    spaceship = Spaceship.new(14606, [[:launch, 9.807], [:land, 3.711], [:launch, 3.711], [:land, 9.807]])
    assert_equal 33388, spaceship.fill
  end

  def test_passenger
    spaceship = Spaceship.new(75432, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 3.711], [:launch, 3.711], [:land, 9.807]])
    assert_equal 212161, spaceship.fill
  end
end
