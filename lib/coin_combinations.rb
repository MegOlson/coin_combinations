require 'pry'

class Integer
  def coin_combinations
    number_input = self
    coins = ''
    until (number_input  < 1)
      if(number_input >= 25)
        quarter_number = number_input / 25
        coins += quarter_number.to_s + " quarters "
        number_input -= quarter_number * 25
      elsif(number_input >= 10)
        dime_number = number_input / 10
        coins += dime_number.to_s + " dimes "
        number_input -= dime_number * 10
      elsif(number_input >= 5)
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
user_number = ""
until(user_number == "exit") do
  puts "Enter a number in cents ('exit' to quit)"
  user_number = gets.chomp
  if user_number == "exit"
    break
  else
    puts user_number.to_i.coin_combinations
  end
end
