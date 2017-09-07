require 'pry'

class Integer
  def coin_combinations
    number_input = self
    coins = ''
    until (number_input  < 1)
      if(number_input >= 5)
        nickel_number = number_input / 5
        coins += nickel_number.to_s + " nickels "
        number_input -= nickel_number * 5
      else
        coins += number_input.to_s + " pennies"
        number_input -= number_input
      end
    end
    coins
  end

end
