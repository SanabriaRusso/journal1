#!/usr/local/bin/gnuplot
set xlabel "Contenders (N)"
set xrange[4:68]
set xtics 4,4,68
set ylabel "Average percentage of collision slots (%)"
set yrange[-5:55]
set ytics 0,5,50
set size 0.75,0.75
set term postscript enhanced color dashed
set out "collisions-mixed-saturated-TON.eps"

plot "../../../new_raws/DCF-sat.txt" every 4  u 1:($11*100):(1.96*($12*100)/3.16) title "CSMA/CA saturated" w yerrorbars ls 7 lw 2, ""  every 4 u 1:($11*100) notitle w l ls 7 lw 2, "../../../new_raws/ECA-75DCF-sat.txt" every 4 u 1:($11*100):(1.96*($12*100)/3.16) title "3/4 of saturated CSMA/CA nodes" w yerrorbars ls 8 lw 2, ""  every 4 u 1:($11*100) notitle w l ls 8 lw 2, "../../../new_raws/ECA-50DCF-sat.txt" every 4  u 1:($11*100):(1.96*($12*100)/3.16) title "1/2 of saturated CSMA/CA nodes" w yerrorbars ls 1 lw 2, "" every 4 u 1:($11*100) notitle w l ls 1 lw 2, "../../../new_raws/ECA-25DCF-sat.txt" every 4 u 1:($11*100):(1.96*($12*100)/3.16) title "1/4 of saturated CSMA/CA nodes" w yerrorbars ls 2 lw 2, "" every 4  u 1:($11*100) notitle w l ls 2 lw 2, "../../../new_raws/ECA-sat.txt"  every 4 u 1:($11*100):(1.96*($12*100)/3.16) title "CSMA/ECA_{Hys+FS} saturated" w yerrorbars ls 6 lw 2, "" every 4  u 1:($11*100) notitle w l ls 6 lw 2
