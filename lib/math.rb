def calc_i(t, p, r)
  t*p*r.round(2)
end

def calc_p(i, t, r)
  i/(r*t).round(2)
end

def calc_r(t, i, p)
  i/(t*p).round(2)
end

def calc_t(r, i, p)
  i/(p*r).round(2)
end
