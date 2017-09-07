require 'rspec'
require 'coin_combinations'

describe("#coin_combinations") do
  it("returns number value in pennies") do
    expect(4.coin_combinations).to(eq("4 pennies"))
  end

  it("returns number value in nickels and pennies") do
    expect(9.coin_combinations).to(eq("1 nickels 4 pennies"))
  end

  it("returns number value in dimes, nickels and pennies") do
    expect(14.coin_combinations).to(eq("1 dimes 4 pennies"))
  end
end
