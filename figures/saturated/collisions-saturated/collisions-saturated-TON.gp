#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set ylabel "Average percentage of collision slots (%)"
set xrange [1:50]
set xtics 2,4,50
set yrange[0:40]
set ytics 0,10,40
set size 0.75,0.75
set term postscript enhanced color dashed
set out "collisions-saturated-TON.eps"
plot "../../new_raws/DCF-sat.txt" u 1:($11*100):(1.96*($12*100)/3.16) title "CSMA/CA saturated" w yerrorbars ls 7 lw 2, "" u 1:($11*100) notitle w l ls 7 lw 2, "../../new_raws/ECA-sat.txt" u 1:($11*100):(1.96*($12*100)/3.16) title "CSMA/ECA_{Hys+FS} saturated" w yerrorbars ls 6 lw 2, "" u 1:($11*100) notitle w l ls 6 lw 2
