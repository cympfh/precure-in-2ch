set terminal png
set output "img/".s.".png"

set grid
plot "dat/".s.".dat" lc rgb 'red' w lp title s
