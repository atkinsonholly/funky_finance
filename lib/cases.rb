def select_output(a, b, c, num_1, num_2, num_3)

  #Case t
  if a.upcase == "I" && b.upcase == "P" && c.upcase == "R"
    i = num_1
    p = num_2
    r = num_3
    output = calc_t(r, i, p)
  elsif a.upcase == "I" && b.upcase == "R" && c.upcase == "P"
    i = num_1
    p = num_3
    r = num_2
    output = calc_t(r, i, p)
  elsif a.upcase == "P" && b.upcase == "I" && c.upcase == "R"
    i = num_2
    p = num_1
    r = num_3
    output = calc_t(r, i, p)
  elsif a.upcase == "P" && b.upcase == "R" && c.upcase == "I"
    i = num_3
    p = num_1
    r = num_2
    output = calc_t(r, i, p)
  elsif a.upcase == "R" && b.upcase == "P" && c.upcase == "I"
    i = num_3
    p = num_2
    r = num_1
    output = calc_t(r, i, p)
  elsif a.upcase == "R" && b.upcase == "I" && c.upcase == "P"
    i = num_2
    p = num_3
    r = num_1
    output = calc_t(r, i, p)

  #Case r
  elsif a.upcase == "I" && b.upcase == "P" && c.upcase == "T"
    i = num_1
    p = num_3
    t = num_3
    output = calc_t(t, i, p)
  elsif a.upcase == "I" && b.upcase == "T" && c.upcase == "P"
    i = num_1
    p = num_3
    t = num_2
    output = calc_t(t, i, p)
  elsif a.upcase == "T" && b.upcase == "P" && c.upcase == "I"
    i = num_3
    p = num_2
    t = num_1
    output = calc_t(t, i, p)
  elsif a.upcase == "T" && b.upcase == "I" && c.upcase == "P"
    i = num_2
    p = num_3
    t = num_1
    output = calc_t(t, i, p)
  elsif a.upcase == "P" && b.upcase == "I" && c.upcase == "T"
    i = num_2
    p = num_1
    t = num_3
    output = calc_t(t, i, p)
  elsif a.upcase == "P" && b.upcase == "T" && c.upcase == "I"
    i = num_3
    p = num_1
    t = num_2
    output = calc_t(t, i, p)

  #Case I
  elsif a.upcase == "T" && b.upcase == "P" && c.upcase == "R"
    t = num_1
    p = num_2
    r = num_3
    output = calc_i(t, p, r)
  elsif a.upcase == "T" && b.upcase == "R" && c.upcase == "P"
    t = num_1
    p = num_3
    r = num_2
    output = calc_i(t, p, r)
  elsif a.upcase == "P" && b.upcase == "T" && c.upcase == "R"
    t = num_2
    p = num_1
    r = num_3
    output = calc_i(t, p, r)
  elsif a.upcase == "P" && b.upcase == "R" && c.upcase == "T"
    t = num_3
    p = num_1
    r = num_2
    output = calc_i(t, p, r)
  elsif a.upcase == "R" && b.upcase == "P" && c.upcase == "T"
    t = num_3
    p = num_2
    r = num_1
    output = calc_i(t, p, r)
  elsif a.upcase == "R" && b.upcase == "T" && c.upcase == "P"
    t = num_2
    p = num_3
    r = num_1
    output = calc_i(t, p, r)

  #Case p
  elsif a.upcase == "I" && b.upcase == "R" && c.upcase == "T"
    i = num_1
    r = num_2
    t = num_3
    output = calc_p(i, t, r)
  elsif a.upcase == "I" && b.upcase == "T" && c.upcase == "R"
    i = num_1
    r = num_3
    t = num_2
    output = calc_p(i, t, r)
  elsif a.upcase == "T" && b.upcase == "R" && c.upcase == "I"
    i = num_3
    r = num_2
    t = num_1
    output = calc_p(i, t, r)
  elsif a.upcase == "T" && b.upcase == "I" && c.upcase == "R"
    i = num_2
    r = num_3
    t = num_1
    output = calc_p(i, t, r)
  elsif a.upcase == "R" && b.upcase == "I" && c.upcase == "T"
    i = num_2
    r = num_1
    t = num_3
    output = calc_p(i, t, r)
  elsif a.upcase == "R" && b.upcase == "T" && c.upcase == "I"
    i = num_3
    r = num_1
    t = num_2
    output = calc_p(i, t, r)

  end
  output
end
