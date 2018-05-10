
a_15_ident:diagmatrix(15,1)$

a_15_zero_row:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

a_15_zero_col:transpose(a_15_zero_row)

a_16_zero_row:addcol(matrix(a_15_zero_row),matrix([0]))



a_16_vector_a:[1,0,1,0,1,0,0,0,0,1,1,1,0,1,0,1]

a_15x16:addcol(a_15_zero_col,a_15_ident)$

shiftright_16x16:addrow(a_15x16,a_16_zero_row)

a_16x16:addrow(a_15x16,a_16_vector_a)

phi:charpoly(a_16x16,t^25+t^11)

phi:expand(phi)

gf_primitive_poly_p(phi,2)

hipow(phi,t)

x:matrix([1,0,1,0,1,1,1,1,0,1,0,1,0,0,0,1])

a_16_vector_a_m:matrix(a_16_vector_a)

mod(x . a_16x16,2)

if (x[1][16] = 0) then (x . shiftright_16x16) else mod(x . shiftright_16x16 + a_16_vector_a_m,2)


