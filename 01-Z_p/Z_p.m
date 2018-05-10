
p:7

n:1

gf_set_data(p,n)

gf_info()

gf_add_table()

gf_mult_table()

for i:1 thru p-1 do print(i,gf_order(i))

for a:1 thru p-1 do print(a,mod(a^p-a,p))

for a:1 thru p-1 do print(a,mod(a^(p-1),p))

for a:2 thru p-1 do print(a,"^-1=",mod(a^(p-2),p))

gf_primitive()

gf_make_logs()

for j:0 thru p-2 do print(gf_primitive(),"^",j,"=",gf_powers[j])


