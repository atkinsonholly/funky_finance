def run
  welcome
  calculate_a_number
  continue_or_quit
end

def welcome
  puts "Welcome to Funky Finance!"
end

def calculate_a_number
  a = first_input
  puts "You selected #{a}"
  num_1 = input_variable("first")
  puts "The value of #{a} is #{num_1}"
  b = second_input(a)
  puts "You selected #{b}"
  num_2 = input_variable("second")
  puts "The value of #{b} is #{num_2}"
  c = third_input(a, b)
  puts "You selected #{c}"
  num_3 = input_variable("third")
  puts "The value of #{c} is #{num_3}"
  answer = select_output(a, b, c, num_1, num_2, num_3).round(2)
  puts answer
  answer_to_funky_font(answer)
end

def continue_or_quit
  puts "Continue or quit?"
  input = " "
  while input
    input = gets.chomp
    case input
    when "c"
      calculate_a_number
    when "q"
      break
    else
      puts "Please enter 'c' to continue or 'q' to exit. "
    end
  end
end

def input_variable(string)
  puts "What is the value of the #{string} variable?"
  get_variable
end

def first_input
  puts "What will the first variable be?"
  get_input
end

def second_input(a)
  puts "What will the second variable be?"
  get_input(a)
end

def third_input(a, b)
  puts "What will the third variable be?"
  get_input(a, b)
end

def get_input(a=nil, b=nil)
  input = " "
  while input
    input = gets.chomp.upcase
    if input != "I" && input != "T" && input != "R" && input != "P"
      puts "Please enter I, P, r or t. "
    elsif input == a || input == b
      puts "You have already used #{input}. Please enter the next variable. "
    else
      return input
    end
  end
end

def get_variable
  input = " "
  while input
    input = gets.chomp
    check_float = Float(input) rescue false
    if check_float
      if input.to_f.to_s.split(".").last.size<=2
        return input.to_f.round(2)
      else
        puts "You are limited to two decimal places. Please enter a new value. "
      end
    else
      puts "Please enter a number with up to two decimal places. "
    end
  end
end
