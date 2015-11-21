$h={30=>30,8=>30,52=>30,3=>8,20=>8,10=>20,29=>20}
def common_ancestor(a,b)
  parse_val($h[a],$h[b])
end

def parse_val(a,b)
  h={30=>0,8=>1,20=>2}
  h.key([h[a],h[b]].min)
end

p common_ancestor(8,52)
p common_ancestor(3,29)
