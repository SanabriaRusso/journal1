#!/usr/local/bin/gnuplot
set termopt enhanced
set term postscript enhanced color solid
set out "queueingDelay-TON.eps"
set size 0.75,0.75

#Big plot

set yrange[0:40]
set xrange[2:70]
set xtics 10,10,70
unset grid
set size 0.75,0.75
set origin 0,0
set xlabel "Contenders (N)"
set ylabel "Average Delay (secs)"

plot "../../tonFigs/DCF-unsat-FAST-TON.dat" u 1:37:(1.96*$38/3.16) title "CSMA/CA non-saturated" w yerrorbars ls 7 lw 2, "" u 1:37 notitle w l ls 7 lw 2, "../../tonFigs/DCF-unsat-maxAgg-FAST-TON.dat" u 1:37:(1.96*$38/3.16) title "CSMA/CA_{MaxAg} non-saturated" w yerrorbars ls 2 lw 2, "" u 1:37 notitle w l ls 2 lw 2, "../../tonFigs/ECA-unsat-maxAgg-FAST-TON.dat" u 1:37:(1.96*$38/3.16) title "CSMA/ECA_{Hys+FS} (MaxAg.) non-saturated" w yerrorbars ls 8 lw 2, "" u 1:37 notitle w l ls 8 lw 2, "../../tonFigs/ECA-unsat-FAST-TON.dat" u 1:37:(1.96*$38/3.16) title "CSMA/ECA_{Hys+FS} non-saturated" w yerrorbars ls 6 lw 2, "" u 1:37 notitle w l ls 6 lw 2,
