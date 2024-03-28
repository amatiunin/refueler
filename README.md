# Refueler
Ruby software application that will help to calculate the fuel required for the flight. This application aims to calculate fuel to launch from one planet of the solar system and land on another planet of the solar system, depending on the flight route.

### Example for using from irb console:

require_relative 'spaceship'
Spaceship.new(28801, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]]).fill

### or just use test file:

run 'ruby tests.rb'
