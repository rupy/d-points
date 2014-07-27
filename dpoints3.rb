require 'matrix'

Point = Struct.new(:x, :y)

$sum = 0

def get_area(v0,v1,v2)
  ((v1[0] - v0[0]) * v2[1] / 2.0).abs
end

def div3_0(v_l,v_r)
  (v_r - v_l) / 3.0 + v_l
end

def div3_1(v_l,v_r)
  (v_r - v_l) / 3.0 * 2.0 + v_l
end


def newp(p0,p1,p3)
  p01 = p1 - p0
  p_mid =  (p1 + p0) / 2.0

  (p3 - p_mid)/(p3 - p_mid).r * -(p01.r)
end




def k_func(p0,p1,p2,n)
  $sum += get_area(p0,p1,p2)
  puts n
  return if n == 4

  if(n == 0)
    #d01_0 = div3_0(p0,p1)
    #d12_0 = div3_0(p1,p2)
    #d20_0 = div3_0(p2,p0)
    #d01_1 = div3_1(p0,p1)
    #d12_1 = div3_1(p1,p2)
    #d20_1 = div3_1(p2,p0)
    #puts d01_0
    #puts d12_0
    #puts d20_0
    #puts d01_1
    #puts d12_1
    #puts d20_1
    n += 1
    k_func(div3_0(p0,p1),div3_1(p0,p1),newp(p0,p1,p2),n)
    k_func(div3_0(p1,p2),div3_1(p1,p2),newp(p1,p2,p0),n)
    k_func(div3_0(p2,p0),div3_1(p2,p0),newp(p2,p0,p1),n)
  else
    n += 1
    k_func(div3_0(p0,p1),div3_1(p0,p1),newp(p0,p1,p2),n)
    k_func(div3_0(p1,p2),div3_1(p1,p2),newp(p1,p2,p0),n)
  end
end


v0 = Vector[0.0,0.0]
v1 = Vector[10.0,0.0]
v2 = Vector[5.0,5.0 * Math.sqrt(3)]

puts get_area(v0,v1,v2)

k_func(v0,v1,v2,0)
puts $sum


