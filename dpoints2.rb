Point = Struct.new(:x, :y)
$point0 = Point.new(0.0,0.0)
$point1 = Point.new(10.0,0.0)
$point2 = Point.new(5.0,5.0 * Math.sqrt(3))

def get_area()
  ($point1.x - $point0.x) * $point2.y / 2.0
end


def k2(p0,p1,p2,n)
  if(n == 0)
    div1x = (p1.x - p0.x) / 3.0 + p1.x
    div2x =
  else

  end
end

puts get_area()
puts Math.sqrt(3)