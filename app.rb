# Calculator
# /\/\/\/\/\

# Global Variables
# ----------------
$answer = 0
$run_calc = 1

# Initial Inputs
# ------
puts "Hello, please enter your name!"
$name = gets.chomp

# Basic Calculator
# ----------------
def basic_calculate
  puts "Hi again #{$name}, this calculator adds, subtract, divides and multiplies"
  puts "Enter your first number"
  num1 = gets.to_i

  puts "Enter the operator you'd like to use [*, +, -, /]"
  op = gets.chomp

  puts "Enter your second number"
  num2 = gets.to_i

  if(op == "/")
    $answer = num1/num2
  elsif(op == "*")
    $answer = num1*num2
  elsif(op == "+")
    $answer = num1+num2
  elsif(op == "-")
    $answer =  num1-num2
  else
    puts "You have entered an invalid operator #{$name}"
  end
end

# Advanced Calculator
# ----------------
def advanced_calculate
  puts "Hi again #{$name}, this calcuator can perform square root or power functions"
  puts "Which would you like to do? (1)Square Root or (2)Power"
  sqrtorpwr = gets.to_i

  if (sqrtorpwr == 1)
    puts "What number would you like to know the square root of?"
    num1 = gets.to_i
    $answer = Math.sqrt(num1)
  elsif (sqrtorpwr == 2)
    puts "Which number would you like to have as your base?"
    num1 = gets.to_i
    puts "Which number would you like to have as your exponent?"
    num2 = gets.to_i
    $answer = num1 ** num2
  else
    puts "Sorry #{$name}, you have entered an invalid input!"
  end
end

def bmi_calculate
  puts "Hi #{$name}, would you like to use (1)Metric or (2)Imperial Units?"
  choice = gets.to_i

  if (choice == 1)
    puts "Please enter your weight in KG"
    kaygee = gets.to_i

    puts "Please enter your height in Meters"
    meters = gets.to_f

    $answer = kaygee/(height*height)

  elsif (choice == 2)
    puts "Please enter your weight in Pounds"
    stone = gets.to_f

    puts "Please enter your height in Inches"
    inches = gets.to_f

    $answer = stone/(inches*inches)*703

  else
    puts "Sorry #{$name}, you have entered an invalid input"
    again
  end

end

def again
  puts "Would you like to use the calcuator again #{$name}? (1)Yes or (2)No"
  choice = gets.to_i

  if (choice == 1)
    $run_calc = 1
  elsif (choice == 2)
    $run_calc = 0
    puts "Goodbye #{$name}!"
  else
    puts "You have entered an incorrect input!"
    again
  end
end

# Call Different Calculator Functions
# -----------------------
while $run_calc == 1 do

  puts "Please select the calcuator you'd like to use: (1)Basic, (2)Advanced, (3)BMI or (4)Trip"
  $calcType = gets.to_i

  if ($calcType == 1)
    basic_calculate
    puts "The answer to this calculation is: #{$answer}"
    again
  elsif ($calcType == 2)
    advanced_calculate
    puts "The answer to this calculation is: #{$answer}"
    again
  elsif ($calcType == 3)
    bmi_calculate
    if ($answer < 18.5)
      puts "Your BMI is #{$answer}"
      puts "#{$name}, you really need to eat more!"
    elsif ($answer < 25)
      puts "Your BMI is #{$answer}"
      puts "Well done #{$name} you are a healthy weight!"
    elsif ($answer < 30)
      puts "Your BMI is #{$answer}"
      puts "You're slightly overweight #{$name}, you should hit the gym!"
    else
      puts "Your BMI is #{$answer}"
      puts "You are obese and need to get serious #{$name}!"
    end
    again
  elsif ($calcType == 4)
    puts "This calculator has not yet been added"
    again
  else
    puts "You have entered an invalid calculator type"
    again
  end

end
