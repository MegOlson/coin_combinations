require 'rspec'
require 'coin_combinations'

describe("#coin_combinations") do
  it("returns number value in pennies") do
    expect(8.coin_combinations).to(eq("8 pennies"))
  end
end
