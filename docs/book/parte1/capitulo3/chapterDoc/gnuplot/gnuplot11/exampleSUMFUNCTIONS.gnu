#
unset border
set terminal pstricks

set size square 0.5,0.5

set output "exampleSUMFUNCTIONS.tex"
set zeroaxis
#set xtics axis nomirror
#set ytics axis nomirror
#set format y "$%g$"
#set format x "$%.2f$"
#set title "$U(x) + V(x) = \frac{8 x^{2} + 3 x + 3}{2}$"


#set xlabel "Eje de Coordenadas"
#set ylabel "Eje de Abcisas"
unset key
plot [-5:5] (8*x**2 + 3*x + 3)/2