#
unset border
set terminal pstricks

set size square 0.5,0.5

set output "OXP.tex"
set zeroaxis
#set xtics axis nomirror
#set ytics axis nomirror
#set format y "$%g$"
#set format x "$%.2f$"
#set title "$f(x + 5)$"


#set xlabel "Eje de Coordenadas"
#set ylabel "Eje de Abcisas"
unset key
plot 'OXPdata' u 0:0