
ident_4x4:ident(4);

zero_4x1:transpose([0,0,0,0]);

vec_a:[1,1,0,1,1];

m:ident_4x4;

m:addcol(zero_4x1,m);

m:addrow(m,vec_a);

gf_primitive_poly(2,5);

m;

phi:charpoly(m,t^5+t^3);

phi2:expand(phi);

gf_primitive_poly_p(phi,2);

ident_5x5:ident(5);

for i:1 thru 100 do if mod(m^^i,2) = ident_5x5 then print("Wow ",i);




