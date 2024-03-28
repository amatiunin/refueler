class Spaceship
  DIRECTIVES = { launch: [0.042, 33], land: [0.033, 42] }.freeze

  def initialize(weight, route)
    @weight = weight
    @route = route
  end

  def fill
    full_weight = @weight

    @route.reverse.each do |action|
      fuel_need = calculate_fuel(full_weight, action)
      full_weight += fuel_need
    end
    full_weight - @weight
  end


  private

  def calculate_fuel(weight, action)
    gravity = action[1]
    params = DIRECTIVES[action[0]]
    fuel_mass = (weight * gravity * params[0] - params[1]).to_i

    return 0 if fuel_mass <= 0

    additional_fuel = calculate_fuel(fuel_mass, action)
    fuel_mass + additional_fuel
  end
end
