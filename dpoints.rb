$xstart = 0
$xend = 10
$ystart = 0
$yend = 10

CENTER = 5
RADIUS = 5


def min_p(d)

  p = 0
  while($xstart < d * p)
    p -= 1
  end
  p
end

def max_p(d)

  p = 0
  while($xend > d * p)
    p += 1
  end
  p
end

def min_q(d)

  p = 0
  while($ystart < d * p)
    p -= 1
  end
  p
end

def max_q(d)

  p = 0
  while($yend > d * p)
    p += 1
  end
  p
end

def afunc2(d)

  count = 0
  minp = 0
  minq = 0
  maxp = (RADIUS * 2)/d
  maxq = (RADIUS * 2)/d
  (minp..maxp).each do |p|
    (minq..maxq).each do |q|
      #print "(#{d * p},#{d * q}), [#{((d * p - CENTER) ** 2) + ((d * q - CENTER ) ** 2)}]"
      if ((d * p - CENTER) ** 2) + ((d * q - CENTER ) ** 2) <= RADIUS ** 2
        count += 1
        #print "#{count}"
      end
      #puts ""
    end
  end
  count

end


def afunc1(d)

  count = 0
  minp = min_p(d)
  minq = min_q(d)
  maxp = max_p(d)
  maxq = max_q(d)
  (minp..maxp).each do |p|
    (minq..maxq).each do |q|
      count += 1
    end
  end
  count


end

def ans(d)
  afunc2(d).to_f/afunc1(d).to_f * 4.0
end

puts afunc1(0.1)
puts afunc1(1)

puts afunc2(0.1)
puts afunc2(1)
puts ans(0.1)

#puts min_p(1)
#puts max_p(1)
#puts min_q(1)
#puts max_q(1)