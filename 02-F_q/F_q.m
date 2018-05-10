
p:3

n:2

gf_set_data(p,n)

gf_info()

atable:gf_add_table()

for i:1 thru p^n do for j:1 thru p^n do atable[i,j]:gf_n2p(atable[i,j])

print(atable)$

mtable:gf_mult_table()$

for i:1 thru p^n-1 do for j:1 thru p^n-1 do mtable[i,j]:gf_n2p(mtable[i,j])

print(mtable)

gf_make_logs()

for i:1 thru p^n-1 do print("(",gf_primitive(),")^",i,"=",gf_n2p(gf_powers[i]))

for i:1 thru p^n-1 do print(gf_n2p(i)," has order ",gf_order(gf_n2p(i)))

gf_factor(x^(p^n)-x,3)

gf_factor(x^p^n-x)

gf_factor(x^2+1)

for i:0 thru p^n-1 do ( print(gf_add(x,-gf_n2p(i))))


