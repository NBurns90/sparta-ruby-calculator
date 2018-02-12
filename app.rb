# Calculator
# /\/\/\/\/\

# Global Variables
# ----------------
$answer = 0

# Initial Inputs
# ------
puts "Hello, please enter your name!"
$name = gets.chomp

puts "Hi #{$name}, please select the calcuator you'd like to use: (1)Basic, (2)Advanced, (3)BMI or (4)Trip"
$calcType = gets.to_i

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

# Advaned Calculator
# ----------------
def advanced_calculate
  puts "Hi again #{$name}, this calcuator can perform square root or power fucntions"
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


# Call Different Calculator Functions
# -----------------------

if ($calcType == 1)
  basic_calculate
  puts "The answer to this calculation is: #{$answer}"
elsif ($calcType == 2)
  advanced_calculate
  puts "The answer to this calculation is: #{$answer}"
elsif ($calcType == 3)
  puts "This calculator has not yet been added"
elsif ($calcType == 4)
  puts "This calculator has not yet been added"
else
  puts "You have entered an invalid calculator type"
end
