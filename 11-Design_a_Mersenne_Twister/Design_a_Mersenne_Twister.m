
load("bitwise");

seed:matrix([27,17,21,5,30,14,16]);

n:matrix_size(seed)[2];

ident_4x4:ident(4);

zero_4x1:transpose([0,0,0,0]);

matrix_A:ident_4x4;

matrix_A:addcol(zero_4x1,matrix_A)$

vec_a:[1,0,1,1,0]$      

matrix_A:addrow(matrix_A,vec_a)$

matrix_A[5]:vec_a;

m:2;

bit_and(seed[1][m],16);

bit_rsh(%,4);

bottom_tap:[ bit_rsh(bit_and(seed[1][m],16),4), 
             bit_rsh(bit_and(seed[1][m],8),3), 
             bit_rsh(bit_and(seed[1][m],4),2),  
             bit_rsh(bit_and(seed[1][m],2),1),
                     bit_and(seed[1][m],1)];

top_tap:[   bit_rsh(bit_and(seed[1][n],16),4),
            bit_rsh(bit_and(seed[1][n-1],8),3), 
            bit_rsh(bit_and(seed[1][n-1],4),2),  
            bit_rsh(bit_and(seed[1][n-1],2),1),
                    bit_and(seed[1][n-1],1)];
                        

bottom_tap:matrix(bottom_tap);

new_bits:mod(bottom_tap + top_tap  . matrix_A,2);

new_numb:mod(new_bits[1][5]*16+
             new_bits[1][4]*8+
            new_bits[1][3]*4+
            new_bits[1][2]*2+
            new_bits[1][1],32);
                     

shr7:matrix([0,1,0,0,0,0,0],
             [0,0,1,0,0,0,0],
             [0,0,0,1,0,0,0],
             [0,0,0,0,1,0,0],
             [0,0,0,0,0,1,0],
             [0,0,0,0,0,0,1],
            [0,0,0,0,0,0,0]);
                        

seed:seed . shr7;

seed[1][1]:new_numb;

printf(true,"~5,'0b",new_numb);
