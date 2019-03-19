def calc_i(t, p, r)
  check_int((t*p*r).round(2))
end

def calc_p(i, t, r)
  check_int((i/(r*t)).round(2))
end

def calc_r(t, i, p)
  check_int((i/(t*p)).round(2))
end

def calc_t(r, i, p)
  check_int((i/(p*r)).round(2))
end

def check_int(result)
  if Integer(result) == result
    return Integer(result)
  else
    return '%.2f' % result
  end
end
