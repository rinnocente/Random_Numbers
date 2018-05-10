
f:x^3+x+1;

n:hipow(f,x);

p:modulus:2;

divide(x^(p^n-1)-1,f);

for e:1 thru p^n-1 do print("e=",e,",",divide(x^e-1,f));

gf_primitive_poly_p(f,p);

factor(x^(p^n-1)-1);

factor(x^p^n -x);

gf_set_data(p,n);

for i:1 thru p^n-1 do print("x^",i,"=",gf_exp(x,i));

for i:1 thru p^n-2 do print(gf_exp(x,i)," has order ",gf_order(gf_exp(x,i)));

modulus:3;

p:3;

n:4;

f:gf_primitive_poly(p,n);

ifactors(p^n-1);

q:2;

divide(x^((p^n-1)/q)-1,f);

q:5;

divide(x^((p^n-1)/q)-1,f);




