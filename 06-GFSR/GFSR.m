
p:2 

n:3

gf_primitive_poly(p,3)

seed:[1,0,1] 

lfsr:matrix([1,1,0],
            [0,0,1],
            [1,0,0])

for i:1 thru p^n  do ( seed:mod(seed . lfsr,p), print(i,seed))

m:2^3

mseed:matrix([7,3,2])

for i:1 thru p^m-1 do ( mseed:mod(mseed . lfsr,m), print(i,mseed))


