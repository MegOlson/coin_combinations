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

  it("returns number value in quarters, dimes, nickels, and pennies") do
    expect(33.coin_combinations).to(eq("1 quarters 1 nickels 3 pennies"))
  end

  it("gets user input number value and returns it in quarters, dimes, nickels, and pennies") do
    expect(28.coin_combinations).to(eq("1 quarters 3 pennies"))
  end
end
