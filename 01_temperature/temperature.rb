C_FREEZE = 0
F_FREEZE = 32

def ftoc(temp)
  diff = temp - F_FREEZE
  cTemp = diff * (5.0/9.0)
end

def ctof(temp)
  fTemp = (temp * (9.0/5.0)) + F_FREEZE
end