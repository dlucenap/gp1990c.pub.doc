#
unset border
set terminal pstricks

set size square 0.75,0.75

set output "order2.tex"
set zeroaxis
#set xtics axis nomirror
#set ytics axis nomirror
#set format y "$%g$"
#set format x "$%.2f$"
#set title "$f(x) = x^2$"


#set xlabel "Eje de Coordenadas"
#set ylabel "Eje de Abcisas"
unset key
plot [-5:5] x**2
