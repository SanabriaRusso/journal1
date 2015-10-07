#!/usr/local/bin/gnuplot
set xlabel "Contenders"
set xrange[1:70]
set xtics 10,10,70
set ylabel "Average percentage of collision slots (%)"
set yrange[0:40]
set ytics 0,10,40
set size 0.75,0.75
set term postscript enhanced color dashed
set out "collisions-unsaturated-TON.eps"
plot "../../new_raws/DCF-unsat.txt" u 1:($11*100):(1.96*($12*100)/3.16) title "CSMA/CA non-saturated" w yerrorbars ls 7 lw 2, "" u 1:($11*100) notitle w l ls 7 lw 2, "../../new_raws/ECA-unsat.txt" u 1:($11*100):(1.96*($12*100)/3.16) title "CSMA/ECA_{Hys+FS} non-saturated" w yerrorbars ls 6 lw 2, "" u 1:($11*100) notitle w l ls 6 lw 2
