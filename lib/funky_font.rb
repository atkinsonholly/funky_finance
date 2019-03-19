def answer_to_funky_font(answer)
  array = answer.to_s.split(//)
  array = array.flat_map{|element| [element, " "]}.tap(&:pop)
  print_funky_font(array)
end

def print_funky_font(array)
  puts ""
  array.each { |char| print_line_one_seven(char) }
  print "\n"
  array.each { |char| print_line_two(char) }
  print "\n"
  array.each { |char| print_line_three(char) }
  print "\n"
  array.each { |char| print_line_four(char) }
  print "\n"
  array.each { |char| print_line_five(char) }
  print "\n"
  array.each { |char| print_line_six(char) }
  print "\n"
  array.each { |char| print_line_one_seven(char) }
  puts ""
end

def print_line_one_seven(char)
  case char
  when "0", "2", "3", "4", "5", "6", "7", "8", "9"
      print "==="
  when "1", ".", " "
    print "="
  end
end

def print_line_two(char)
  case char
  when "0", "2", "3", "5", "6", "7", "8", "9"
    print "@@@"
  when "4"
    print "@ @"
  when "1"
    print "@"
  when ".", " "
    print " "
  end
end

def print_line_three(char)
  case char
  when "0"
    print "@ @"
  when "2", "3", "7"
    print "  @"
  when "4", "8", "9"
    print "@ @"
  when "5", "6"
    print "@  "
  when "1"
    print "@"
  when ".", " "
    print " "
  end
end

def print_line_four(char)
  case char
  when "0"
    print "@ @"
  when "2", "3", "4", "5", "6", "8", "9"
    print "@@@"
  when "7"
    print "  @"
  when "1"
    print "@"
  when ".", " "
    print " "
  end
end

def print_line_five(char)
  case char
  when "0"
    print "@ @"
  when "3", "4", "5", "7", "9"
    print "  @"
  when "6", "8"
    print "@ @"
  when "2"
    print "@  "
  when "1"
    print "@"
  when ".", " "
    print " "
  end
end

def print_line_six(char)
  case char
  when "0", "2", "3", "5", "6", "8", "9"
    print "@@@"
  when "4", "7"
    print "  @"
  when ".", "1"
    print "@"
  when " "
    print " "
  end
end
