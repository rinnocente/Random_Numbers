
f:x^25+x^18+1

gf_primitive_poly_p(f,2)

a:diagmatrix(31,1)$

acol1:transpose([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])$

arow32:[1,0,0,0,1,1,1,0,1,0,1,1,1,1,1,1,1,1,0,1,0,0,0,0,0,0,1,0,1,0,0,0]$

a:addcol(acol1,a)$

a:addrow(a,arow32)

d:charpoly(a,t^25+t^18)


