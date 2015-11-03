#!/usr/local/bin/gnuplot
#set xlabel "Contenders (N)"
set xrange[1:70]
set xtics 10,10,70
set ylabel "Average (%) of collision slots"
set format y "%2.0f"
set yrange[0:45]
set ytics 0,10,40
#set size 0.75,0.75
#set term postscript enhanced color dashed
#set out "collisions-unsaturated-TON.eps"
plot "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/DCF-unsat.txt" every 2 u 1:($11*100):(1.96*($12*100)/3.16) title "CSMA/CA " w yerrorbars ls 7 lw 1, "" every 2 u 1:($11*100) notitle w l ls 7 lw 1, "~/Dropbox/PhD/NeTS/git/journal1/figures/new_raws/ECA-unsat.txt" every 2 u 1:($11*100):(1.96*($12*100)/3.16) title "CSMA/ECA_{Hys+FS} " w yerrorbars ls 6 lw 1, "" every 2 u 1:($11*100) notitle w l ls 6 lw 1
