def answer_to_funky_font(answer)
  array = answer.to_s.split(//)
  print_funky_font(array)
end

def print_funky_font(array)
  array.each { |char| print_line_one(char) }
  array.each { |char| print_line_two(char) }
  array.each { |char| print_line_three(char) }
  array.each { |char| print_line_four(char) }
  array.each { |char| print_line_five(char) }
  array.each { |char| print_line_six(char) }
  array.each { |char| print_line_seven(char) }
end

def print_lines
  case line_one
  when "0", "2", "3", "4", "5", "6", "7", "8", "9"
      print "==="
    when "1", ".", " "
      print "="
    end

  case line_two
    when "0", "2", "3", "5", "6", "7", "8", "9"
      print "@@@"
    when "4"
      print "@ @"
    when "1"
      print "@"
    when ".", " "
      print " "
    end

  case line_three
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


# # zero
# ===
# @@@
# @ @
# @ @
# @ @
# @@@
# ===
#
# # one
# =
# @
# @
# @
# @
# @
# =
#
# # two
# ===
# @@@
#   @
# @@@
# @
# @@@
# ===
#
# # three
# ===
# @@@
#   @
# @@@
#   @
# @@@
# ===
#
# # four
# ===
# @ @
# @ @
# @@@
#   @
#   @
# ===
#
# # five
# ===
# @@@
# @
# @@@
#   @
# @@@
# ===
#
# # six
# ===
# @@@
# @
# @@@
# @ @
# @@@
# ===
#
# # seven
# ===
# @@@
#   @
#   @
#   @
#   @
# ===
#
# # eight
# ===
# @@@
# @ @
# @@@
# @ @
# @@@
# ===
#
# # nine
# ===
# @@@
# @ @
# @@@
#   @
# @@@
# ===
#
# # point
# =
#
#
#
# @
# =
#
# # space
# =
#
#
#
#
#
# =
