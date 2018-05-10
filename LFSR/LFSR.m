
p:2

n:4

f:gf_primitive_poly(p,n)

modulus:2

gf_set_data(p,n)

gf_order(f(x))

modulus:2

seed:[0,1,0,1]

mlfsr:matrix([1,1,0,0],
             [0,0,1,0],
             [0,0,0,1],
             [1,0,0,0])

expand(charpoly(mlfsr,lambda))

gf_primitive_poly_p(%,p)

for i:1 thru p^n-1 do ( seed:seed . mlfsr, seed:mod(seed,2),print(i,seed) )

p:3

n:3

gf_primitive_poly(p,n)

seed:[0,2,1]

mlfsr:matrix([2,1,0],
             [0,0,1],
             [1,0,0])

expand(charpoly(mlfsr,lambda))

gf_primitive_poly_p(%,p)

for i:1 thru p^n do ( seed:seed . mlfsr, seed:mod(seed,p),print(i,seed) )


